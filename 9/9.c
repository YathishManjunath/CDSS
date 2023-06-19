#include<stdio.h>
#include<ctype.h>
#include<stdlib.h>

int count,n=0;
char prodn[10][10],first[10];

void First(char c)
{
	int j;
	if(!(isupper(c)))
		first[n++]=c;
	
	for(j=0;j<count;j++)
	{
		if(prodn[j][0]==c)
		{
			if(prodn[j][2]=='S')
				first[n++]='$';
			else if(islower(prodn[j][2]))
				first[n++]=prodn[j][2];
			else 
				First(prodn[j][2]);
		}
	}
}

void main()
{
	int i,choice;
	char c,ch;
	printf("Enter the number of productions: ");
	scanf("%d",&count);
	printf("Enter %d productions: \nEpsilon = $\n",count);
	
	for(i=0;i<count;i++)
		scanf("%s%c",prodn[i],&ch);
	do
	{
		n=0;
		printf("\nElement: ");
		scanf("%c",&c);
		First(c);
		printf("FIRST(%c)={",c);
		
		for(i=0;i<n;i++)
			printf(" %c",first[i]);
		printf(" }\n");
		printf("\nKEY 1 ==> CONTINUE ");
		scanf("%d%c",&choice,&ch);
	} while(choice==1);
}
