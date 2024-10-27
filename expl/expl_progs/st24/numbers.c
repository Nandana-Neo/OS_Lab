#include <stdio.h>

int main()
{
    int a=1;
    FILE *f = fopen("numbers.dat", "w");
    while(a<2048){
        fprintf(f, "%d\n", a);
        a++;
    }
    fclose(f);
    return 0;
}