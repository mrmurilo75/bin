#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define TRUE 1
#define FALSE 0

int main(int argc, char *argv[]){
	int sort=FALSE, argn=argc-1, times=1, min=0, max, rando;
	srand(time(NULL));
	while(argv[argc-argn][0]=='-'){
		if(argv[argc-argn][1]=='s'){
			fprintf(stderr, "Sorting option not yet implemented\n");
			//sort=TRUE;
		} else{
			printf("Usage:\n\nrandint [OPTIONS] [AMOUNT OF NUMBERS] [MINIMUM] maximum\n\n\t-s\t\tPrint generated numbers as sorted\n\t-h, -*\t\tShows this help message\n");
			exit(EXIT_SUCCESS);
		}
		argn--;
	}
	switch(argn){
		case 3:	times=atoi(argv[argc-argn]); argn--;
		case 2: min=atoi(argv[argc-argn]); argn--;
		case 1: max=atoi(argv[argc-argn]);
			break;
		default: fprintf(stderr, "%d arguments found!\nExpected between 1 to 3\n", argn);
	}
	if(min==max){
		printf("%d\n", min);
		exit(EXIT_SUCCESS);
	} else if(min>max){
		int temp=min;
		min=max;
		max=temp;
	}
	if(times>(max-min))
		times=(max-min);
//	fprintf(stderr, "times %d, min %d, max %d\n", times, min, max);
	int *all=malloc(times*sizeof(int));
	for(int end=0, newn=FALSE; end<times; newn=TRUE, (rando=min +rand() %(max-min))){
		for(int i=0; i<end; i++)
			if(all[i]==rando){
				newn=FALSE;
				break;
			}
		if(newn){
//			if(sort)
//				inserts(all, rando);
//			else{
				all[end]=rando;
				printf("%d\n", rando);
//			}
			end++;
		}
	}
//	if(sort)
//		for(int i=0; i<times; i++)
//			printf("%d\n", rando);

}
