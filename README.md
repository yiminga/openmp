#### openmp 运行时库安装：
1.  在虚拟机里安装Ubuntu
2.  在Ubuntu中安装相应的环境如下：    
（1）安装clang编译器        
    sudo apt-get install clang-3.9        
    sudo apt-get install clang++-3.9    
（2）安装openmp运行时库       
下载到源码目录openmp：       
    git clone https://github.com/yiminga/openmp.git        
进入目录，创建编译目录build:        
cd openmp        
mkdir build                
进入build目录，编译安装 
cd build        
cmake -DCMAKE_BUILD_TYPE=Debug -DLIBOMP_OMPT_TRACE=on ..       
make        
sudo make install   

3.  使用方法：    
假设openmp程序为test.c(OpenMP程序)    
编译源码    
clang-3.9 -fopenmp test.c -o test    
运行程序    ./test    
若有问题，利用ldd命令查看程序链接的OpenMP库
#### 本次实验
##### 1. 修改了/openmp/runtime/src 中的kmp.h、kmp_tasking.cpp、kmp_runtime.cpp三个文件
##### 1.1 kmp.h头文件中添加了以下代码1. 利用机器指令RDTSC(Read Time Stamp Counter)来进行计时。现有的C/C++编译器多数不直接支持使用RDTSC指令，需用内嵌汇编的方式访问。
计算公式如下：       
     自CPU上电以来的秒数 = RDTSC读出的周期数 / CPU主频速率(Hz)  
     这两个函数将在kmp_tasking.cpp中被调用，生成当前任务的时间。
#####  1.2 kmp_teasking.cpp 
在这个文件中包含任务的创建、入栈、出栈、窃取、执行等。所以我们在这个文件中添加获取任务执行时间、线程ID、任务ID等信息的代码。
gtid：调度全局线程ID  task：调用的任务
#####  1.3kmp_runtime.cpp当所有线程执行完后，执行这个文件，所以我们可以利用这个文件，将我们获取到的有关信息写入到txt 文件中。
#### 2. 运行测试程序
1. 用的openmp程序是在 runtime/mytest/test_task.c 的test_task.c文件 进程测试test_task.ctest_task.c ：omp_get_thread_num()：获取当前单位线程号task():睡眠2秒。
以上就是一个简单的openmp并行程序。clang-3.9 -fopenmp test_task.c -o test./test可以看出一共有6个任务，2个线程，每个有3个任务。
2. 生成文本信息test.txt：依次为：任务开始时间 ，任务结束时间，执行任务的时间，线程ID，任务ID ，任务号。
