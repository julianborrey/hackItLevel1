//strToInts.c

#include <stdlib.h>
#include <stdio.h>

int main(int argc, char* argv[]){
   
   int i = 0;
   while(argv[1][i] != '\0'){          //until end of string
      printf("%d", (int) argv[1][i]);  //print out int of ith char
      i++;
   }
   printf("\n");
   
   return EXIT_SUCCESS;
}
