#include <stdio.h>
#include <stdlib.h>

int licznik = 0;

void UstawHetmanowOdPozycji(int i, int k[], int w[], int p1[], int p2[], int iloscHetmanow);

void UstawHetmanow(int iloscHetmanow)
{
    int k[iloscHetmanow]; // k[i] oznacza numer wiersza hetmana w kolumnie nr i
    int w[iloscHetmanow]; // jesli wiersz nr i jest zajety, to w[i] = 1, wpp. w[i] = 0
    int przekatne = 2*iloscHetmanow -1;
    int p1[przekatne]; // hetman w pozycji (i,j) oznacza, ze przekatna typu \ nr i+j jest zajeta;
                // jesli p1[i+j] = 1, to przekatna typu \ nr i+j jest zajeta, wpp. jest wolna
    int p2[przekatne]; // hetman w pozycji (i,j) oznacza, ze przekatna typu / nr i-j+iloscHetmanow-1 jest zajeta;
                // jesli p2[i-j+iloscHetmanow-1] = 1, to przekatna typu / nr i-j+iloscHetmanow-1 jest zajeta, wpp. jest wolna

    int i;

    for (i = 0; i < iloscHetmanow; i++)
        w[i] = 0;

    for (i = 0; i < przekatne; i++)
        p1[i] = p2[i] = 0;

    UstawHetmanowOdPozycji(0,k,w,p1,p2, iloscHetmanow);
}

void UstawHetmanowOdPozycji(int i, int k[], int w[], int p1[], int p2[], int iloscHetmanow)
{
    int j, l;
    int a = iloscHetmanow -1;
    for (j = 0; j < iloscHetmanow; j++)
        if (!w[j] && !p1[i+j] && !p2[i-j+a]) {
            k[i] = j;
            w[j] = p1[i+j] = p2[i-j+a] = 1;

            if (i == a) {
                for (l = 0; l < iloscHetmanow; l++)
                    printf("%d ", k[l]);
                printf("\n");
                licznik++;
            }
            else
                UstawHetmanowOdPozycji(i+1,k,w,p1,p2, iloscHetmanow);

            w[j] = p1[i+j] = p2[i-j+a] = 0;
        }
}

int main()
{
    printf("Postawienia hetmanow na szachownicy:\n");
    printf("(Kazda linia oznacza jedno rozwiazanie zawierajace numery wierszow w kolejnych kolumnach.)\n");
    int iloscHetmanow;
    scanf ("%d", &iloscHetmanow);
    UstawHetmanow(iloscHetmanow);
    
    printf("Jest %d rozwiazan.\n", licznik);

    return 0;
}
