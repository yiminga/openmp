#include <omp.h>
#include <stdio.h>

void task(int p)
{
	sleep(2);
	printf("task, Thread ID: %d, task: %d\n", omp_get_thread_num(), p);
}

#define N		50
void init(int*a)
{
	for(int i = 0;i < N;i++)
		a[i] = i + 1;
}

int main(int argc, char* argv[])  
{
	int a[N];
	init(a);

#pragma omp parallel num_threads(2)
	{
#pragma omp single
		{
			for(int i = 0;i < N; i=i+a[i])
			{
#pragma omp task
				task(a[i]);
			}
		}
	}

	return 0;  
}
