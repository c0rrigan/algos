#include <stdio.h>
#include <stdlib.h>

typedef struct bitmap{
    unsigned int size;
    struct {
        unsigned char type[2]; //BM
        unsigned int size;//Filesize in bytes
        unsigned short int reserved1,reserved2;//unused(=0)
        unsigned int offset;//File offset to raster data
    }Header;
    struct{
        unsigned int size;//Size of InfoHeader =40
        int width,height;//Bitmap width/height
        unsigned short int planes;//Number of planes =1
        unsigned short int bits;//Bits per pixel
        unsigned int compression;//Compression type =0
        unsigned int imgsize;//Image size in bytes
        int xres,yres;//Pixels per meter
        unsigned int ncolours;//Number of colours
        unsigned int importantcolours;//Important colours
    }ImageHeader;
    unsigned char *data;
}Bitmap;

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
    bmp->data=(unsigned char*)malloc(bmp->ImageHeader.imgsize);
    fread(bmp->data,1,bmp->ImageHeader.imgsize,file);
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
    fwrite(bmp->data,1,bmp->ImageHeader.imgsize,file);
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
int main(int argc,char *argv[]){
    FILE *file;
    Bitmap *bmp;
    if(argc==1)
        file=fopen("lena_gray.bmp","rw");
    else
        file=fopen(argv[1],"rw");
    bmp=loadbmp(file);
    //negative(bmp);
    red(bmp);
    savebmp(bmp,"sample_negative.bmp");
    fclose(file);
}
