
/* Raymond Chen */

#include <stdio.h>
#include "customheader.h"

int ungabunga (int x) {
	return x%2==0 ? 1 : 0;
}

int main (){
	int i = INIT, j;

	printf("i=%d, ",i);
	j = ungabunga (i);
	j ? printf("which is even\n") : printf("which is odd\n");

	/* Returning 0 to the system means all is good */
	return 0;
}
