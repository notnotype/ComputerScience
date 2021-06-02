#include<cstdio>
#include<algorithm>
#include<string>
using namespace std; 
const int maxn = 60;
const int INF = 999999;
int dis[maxn][maxn];
int n;
 
void Floyd(){
	for(int k=0;k<n;k++){
		for(int i=0;i<n;i++){
			for(int j =0;j<n;j++){
				if(dis[i][k]!=INF && dis[k][j]!=INF && dis[i][j]>dis[i][k]+dis[k][j]){
					dis[i][j]=dis[i][k]+dis[k][j];
				}
			}
		}
	}
}
 
int main(){
	fill(dis[0],dis[0]+maxn*maxn,INF);
	scanf("%d",&n);
	for(int i=0;i<n;i++){
		for(int j=0;j<n;j++){
			scanf("%d",&dis[i][j]);
			if(i!=j){
				if(dis[i][j]==0){
					dis[i][j] = INF;
				}
			}
		}
	}
	Floyd();
	for(int i=0;i<n;i++){
		for(int j=0;j<n;j++){
			if(dis[i][j]!=INF){
				printf("%d ",dis[i][j]);
			}else{
				printf("-1 ");
			}
		}
		printf("\n");
	}
	return 0;
}