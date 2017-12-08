#include <stdio.h>
#include <stdlib.h>

typedef struct bitmap{
    unsigned int size;
    struct {
        unsigned char type[2]; //BM
        unsigned int size;//Filesize in bytes =data+Header+ImageHeader
        unsigned short int reserved1,reserved2;//unused(=0)
        unsigned int offset;//File offset to raster data =Header+Imageheader=54
    }Header;
    struct{
        unsigned int size;//Size of InfoHeader =40
        int width,height;//Bitmap width/height
        unsigned short int planes;//Number of planes =1
        unsigned short int bits;//Bits per pixel =24
        unsigned int compression;//Compression type =0
        unsigned int imgsize;//Image size in bytes
        int xres,yres;//Pixels per meter =2834
        unsigned int ncolours;//Number of colours =0
        unsigned int importantcolours;//Important colours =0
    }ImageHeader;
    unsigned char *data;
}Bitmap;
typedef struct point{
    int x;
    int y;
}Point;
typedef struct matrix{
    unsigned int m;
    unsigned int n;
    unsigned char **data;
}Matrix;
typedef struct bitcolour{
    unsigned char r;
    unsigned char g;
    unsigned char b;
}Bitcolour;

Bitmap *newbmp(int width,int height){
    int wsize,hsize;
    unsigned char *data;
    Bitmap *bmp;
    bmp=(Bitmap*)malloc(sizeof(Bitmap));
    if(width>100)
        wsize=(width%4!=0)?width+4-width%4:width;
    else
        wsize=100;
    if(height>100)
        hsize=(height%4!=0)?height+4-height%4:height;
    else
        hsize=100;
    bmp->Header.type[0]='B';
    bmp->Header.type[1]='M';
    bmp->Header.size=54+wsize*hsize*3;
    bmp->Header.reserved1=0;
    bmp->Header.reserved2=0;
    bmp->Header.offset=54;
    bmp->ImageHeader.size=40;
    bmp->ImageHeader.width=wsize;
    bmp->ImageHeader.height=hsize;
    bmp->ImageHeader.planes=1;
    bmp->ImageHeader.bits=24;
    bmp->ImageHeader.compression=0;
    bmp->ImageHeader.imgsize=wsize*hsize*3;
    bmp->ImageHeader.xres=2834;
    bmp->ImageHeader.yres=2834;
    bmp->ImageHeader.ncolours=0;
    bmp->ImageHeader.importantcolours=0;
    data=(unsigned char*)malloc(bmp->ImageHeader.imgsize);
    bmp->data=data;
    return bmp;
}

Bitmap *loadbmp(FILE *file){
    Bitmap *bmp;
    bmp=(Bitmap*)malloc(sizeof(Bitmap));
    fread(&bmp->Header.type,2,1,file);
    fread(&bmp->Header.size,4,1,file);
    fread(&bmp->Header.reserved1,2,1,file);
    fread(&bmp->Header.reserved2,2,1,file);
    fread(&bmp->Header.offset,4,1,file);
    fread(&bmp->ImageHeader.size,4,1,file);
    fread(&bmp->ImageHeader.width,4,1,file);
    fread(&bmp->ImageHeader.height,4,1,file);
    fread(&bmp->ImageHeader.planes,2,1,file);
    fread(&bmp->ImageHeader.bits,2,1,file);
    fread(&bmp->ImageHeader.compression,4,1,file);
    fread(&bmp->ImageHeader.imgsize,4,1,file);
    fread(&bmp->ImageHeader.xres,4,1,file);
    fread(&bmp->ImageHeader.yres,4,1,file);
    fread(&bmp->ImageHeader.ncolours,4,1,file);
    fread(&bmp->ImageHeader.importantcolours,4,1,file);
    //if(bmp->ImageHeader.imgsize==0){
    //    int imgsize=bmp->ImageHeader.width*bmp->ImageHeader.height*bmp->ImageHeader.bits/8;
    //    bmp->data=(unsigned char*)malloc(imgsize);
    //    fread(bmp->data,1,imgsize,file);
    //}else{
    if(bmp->ImageHeader.imgsize==0){
        bmp->data=(unsigned char*)malloc(bmp->Header.size-bmp->Header.offset);
        fread(bmp->data,1,bmp->Header.size-bmp->Header.offset,file);
    }else{
        bmp->data=(unsigned char*)malloc(bmp->ImageHeader.imgsize);
        fread(bmp->data,1,bmp->ImageHeader.imgsize,file);
    }
    fclose(file);
    return bmp;
}
void savebmp(Bitmap *bmp,char *name){
    FILE *file;
    file=fopen(name,"w+");
    fwrite(bmp->Header.type,2,1,file);
    fwrite(&bmp->Header.size,4,1,file);
    fwrite(&bmp->Header.reserved1,2,1,file);
    fwrite(&bmp->Header.reserved2,2,1,file);
    fwrite(&bmp->Header.offset,4,1,file);
    fwrite(&bmp->ImageHeader.size,4,1,file);
    fwrite(&bmp->ImageHeader.width,4,1,file);
    fwrite(&bmp->ImageHeader.height,4,1,file);
    fwrite(&bmp->ImageHeader.planes,2,1,file);
    fwrite(&bmp->ImageHeader.bits,2,1,file);
    fwrite(&bmp->ImageHeader.compression,4,1,file);
    fwrite(&bmp->ImageHeader.imgsize,4,1,file);
    fwrite(&bmp->ImageHeader.xres,4,1,file);
    fwrite(&bmp->ImageHeader.yres,4,1,file);
    fwrite(&bmp->ImageHeader.ncolours,4,1,file);
    fwrite(&bmp->ImageHeader.importantcolours,4,1,file);
    if(bmp->ImageHeader.imgsize==0){
        fwrite(bmp->data,1,bmp->Header.size-bmp->Header.offset,file);
    }else{
        fwrite(bmp->data,1,bmp->ImageHeader.imgsize,file);
    }
    fclose(file);
}
void negative(Bitmap *bmp){
    int i;
    for(i=0;i<bmp->ImageHeader.imgsize;i++)
        bmp->data[i]=255-bmp->data[i];
}
void blue(Bitmap *bmp){
    int i;
    for(i=1;i<bmp->ImageHeader.imgsize;i+=3){
        bmp->data[i]=0;
        bmp->data[i+1]=0;
    }
}
void red(Bitmap *bmp){
    int i;
    for(i=0;i<bmp->ImageHeader.imgsize;i+=3){
        bmp->data[i]=0;
        bmp->data[i+1]=0;
    }
}
void whitebackground(Matrix *map){
    int i,j;
    for(i=0;i<map->m;i++){
        for(j=0;j<map->n;j+=3){
            map->data[i][j]=0xFF;
            map->data[i][j+1]=0xFF;
            map->data[i][j+2]=0xFF;
        }
    }
}
void savedata(Matrix *map,Bitmap *bmp){
    int i,j;
    unsigned long int k=0;
    for(i=0;i<map->m;i++){
        for(j=0;j<map->n;j+=3){
            bmp->data[k++]=map->data[i][j];
            bmp->data[k++]=map->data[i][j+1];
            bmp->data[k++]=map->data[i][j+2];
        }
    }
}

void gradient255(Matrix *map){
    int i,j;
    int color = 0xFF;
    int step=map->m/color;
    printf("step:%d\n",step);
    for(i=0;i<map->m;i++){
        for(j=0;j<map->n;j+=3){
            map->data[i][j]=color;
            map->data[i][j+1]=255-color;
            map->data[i][j+2]=255-color;
        }
        if(i%step==0){
            color--;
        }
    }
}
int abs(int x){
    return x*=(x<0)?-1:1;
}
int min(int a,int b){
    return (a<b)?a:b;
}
void drawline(Matrix *map,Point a,Point b){
    int i,j;
    int linewidth = 10;
    if(a.x<=map->n&&b.x<=map->n&&a.y<=map->m&&b.y<=map->m){
        //Linea recta horizontal
        if(a.y==b.y){
            int k;
            int size=abs(a.x-b.x);
            int xmin=min(a.x,b.x);
            xmin+=(xmin%3!=0)?3-xmin%3:0;
            for(k=0,i=a.y;k<linewidth;i++,k++){
                for(j=0;j<size;j+=3){
                    map->data[i][xmin+j]=0;
                    map->data[i][xmin+j+1]=0;
                    map->data[i][xmin+j+2]=255;
                }
            }
        }
        //Linea recta vertical
        else if(a.x==b.x){
            int k;
            int size=abs(a.y-b.y);
            int ymin=min(a.y,b.y);
            int x=(a.x%3!=0)?a.x-a.x%3:a.x;
            for(i=0;i<size;i++){
                for(j=x,k=0;k<linewidth;j+=3,k++){
                  map->data[ymin+i][j]=0;
                  map->data[ymin+i][j+1]=0;
                  map->data[ymin+i][j+2]=255;
                }
            }
        }else
        {
            //int k;
            //float m=(a.y-b.y)/(a.x-b.x);
            //int size=abs(a.x-b.x);
            //int x=min(a.x,b.x);
            //for(k=0;k<size;k++,x++){
            //    int y=(int)(x-a.x/m)+a.y;
            //    map->data[y][x]=0{
            //}
        }
    }

}
Matrix *newmatrix(int m,int n){
    int i,j;
    Matrix *map;
    map=(Matrix *)malloc(sizeof(Matrix));
    map->m=m;
    map->n=n;
    map->data=(unsigned char**)malloc(sizeof(unsigned char*)*map->m);
    for(i=0;i<map->m;i++){
        unsigned char* xdata=(unsigned char*)malloc(sizeof(unsigned char)*map->n);
        map->data[i]=xdata;
    }
    return map;
}
int main(int argc,char *argv[]){
    FILE *file;
    Bitmap *bmp;
    Matrix *map;
    //if(argc==1)
    //    file=fopen("lena_gray.bmp","rw");
    //else
    //    file=fopen(argv[1],"rw");
    //bmp=loadbmp(file);
    //negative(bmp);
    //red(bmp);
    bmp=newbmp(512,512);
    map=newmatrix(bmp->ImageHeader.height,bmp->ImageHeader.width*bmp->ImageHeader.bits/8);
    whitebackground(map);
    drawline(map,(Point){.x=100, .y=100},(Point){.x=100, .y=400});
    drawline(map,(Point){.x=350, .y=100},(Point){.x=350, .y=400});
    drawline(map,(Point){.x=100, .y=300},(Point){.x=350, .y=300});
    drawline(map,(Point){.x=400, .y=100},(Point){.x=400, .y=400});
    drawline(map,(Point){.x=450, .y=100},(Point){.x=450, .y=350});
    drawline(map,(Point){.x=450, .y=370},(Point){.x=450, .y=400});
    savedata(map,bmp);
    savebmp(bmp,"output.bmp");
    //fclose(file);
}
