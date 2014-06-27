//charToInt.c

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]){
   
   char* output;
   
   int inputLen = strlen(argv[1]);
   output = malloc((sizeof(char) * inputLen) + 1);
   
   char first = argv[1][0];
   
   //xor each char with the one after it
   int i = 0;
   while(i < (inputLen-1)){
      output[i] = argv[1][i+1] ^ argv[1][i];
      i++;
   }
   
   //end char xored with first char
   output[inputLen-1] = argv[1][inputLen-1] ^ first;
   
   //put back terminating null
   output[inputLen] = '\0';
   
   i = 0;
   while(i < inputLen){
      printf("%d", (int)output[i]);
      i++;
   }
   printf("\n");
   
   return EXIT_SUCCESS;
}
