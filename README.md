#include <iostream>
#include <string>
#include "limits.h"
#ifndef INT_MAX
#error INT_MAX not defined at this point
#endif
using namespace std;

//#define MAXTAB 6
//int tab[MAXTAB]={10,1,45,6,2,0};

#define MAXTAB 5
int tab[MAXTAB]={10,1,45,6,2};

int sovMin=0, sovMax=0;
int remaining=MAXTAB;

int extremes()
{

	if(remaining==2)
	{
		double median=0;
		for(int car(0);car<MAXTAB;car++)
			{
				if((tab[car]!=INT_MAX)&&(tab[car]!=INT_MIN))
				{
					median+=tab[car];
				}
			}
		median=median/2;
		cout <<"median= "<< median <<endl;
		return 0;
	}
	else if(remaining==1)
	{
		double median=0;
		for(int car(0);car<MAXTAB;car++)
			{
				if((tab[car]!=INT_MAX)&&(tab[car]!=INT_MIN))
				{
					median+=tab[car];
				}

			}
		cout <<"median= "<< median <<endl;
		cout <<endl;
		return 0;
	}
	else
	{

		int min = INT_MAX;
		for(int i=0;i<MAXTAB;i++)
		{
			if((min>tab[i])&&(tab[i]!=INT_MIN))
			{
				min=tab[i];
				sovMin=i;
			}
		}
		tab[sovMin]=INT_MAX;
		remaining--;
		int max =INT_MIN;
		for(int i=0;i<MAXTAB;i++)
		{
			if((max<tab[i])&&(tab[i]!=INT_MAX))
			{
				max=tab[i];	
				sovMax=i;
			}
		}
		tab[sovMax]=INT_MIN;
		remaining--;
	//cout<<min<<endl;
	//cout<<max<<endl;
	
	}
	extremes();
	return 0;	
}
	int main()
{
	extremes();
}
