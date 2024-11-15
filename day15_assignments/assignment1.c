//Thread sum of integers in given range (start number and end number). Print result in main().
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<pthread.h>

struct input
{
    int start;
    int end;
    
};

int add=0;

void* sum(void *param)
{
    struct input *ip=(struct input*)param;
   // ip->sum=0;
    for (int i = ip->start; i <=ip->end; i++)
    {
        add=add+i;
    }    
    return (void*)add;
}

int main()
{
    
    struct input in ={.start=1,.end=100};
  
    pthread_t sum_thread;
    
    if (pthread_create(&sum_thread,NULL,sum,&in)!=0)
    {
        perror("error creating thread!\n");
        _exit(1);
    }
   
   pthread_join(sum_thread,(void**)&in);

   printf("main: sum of integer from %d to %d = %d\n",in.start,in.end,add);
    return 0;
}
