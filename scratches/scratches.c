#include <stdio.h>

int p( int n, int x );

int main()
{
	int n,x;
	while(scanf("%d,%d", &n, &x)!=-1){
		printf("%d\n", p(n,x));
	}
    return 0;
}

int p( int n, int x ){
	if(n==0)return 1;if(n==1) return x;
	return 	(2*n-1)*x*p(n-1, x) - (n-1)*p(n-2, x)/n;
}

