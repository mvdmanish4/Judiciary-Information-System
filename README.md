# helloworld
//This is my repo on github.
```
#include<bits/stdc++.h>
using namespace std;
int main()
{

   int a[] = {2,9,4,5,8,7,6};
   int i,j;
   for(i = 1;i<7;i++)
   {    
	int temp = a[i];
	j = i-1;
	while(j>=0 && a[j] > a[i])
	{
		
		a[j+1] = a[j];
		j--;
 	}
        a[j + 1] = temp;    
  }
 for(int i = 0;i<7;i++)
  cout<<a[i]<<" ";
return 0; 
}
```
