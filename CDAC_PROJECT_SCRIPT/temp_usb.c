/*Temp entry file for usb*/

#include <stdio.h>

int main() 
{
    FILE *f = fopen("file.txt", "a");
    
    if (f == NULL) 
    {
        printf("Error opening file!\n");
        return 1;
    }//if ends

    fprintf(f, "USB HID device connected\n");
    fclose(f);
    
    // while(1); //to avoid the program for termination.
    
    return 0;
}
