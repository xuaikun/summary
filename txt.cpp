#include <fstream>
#include <iostream>
using namespace std;

void writedata(long length, long time)
{
	//写长度 
	// 以写模式打开文件
   ofstream outfile1;
   outfile1.open("lenght.xls", ios::app);
   // 向文件写入用户输入的数据
   outfile1 << length << endl;
   // 关闭打开的文件
   outfile1.close();
   
   //写时间 
   // 以写模式打开文件
   ofstream outfile2;
   // 再次向文件写入用户输入的数据
   outfile2.open("time.xls", ios::app);
   outfile2 << time << endl;
   outfile2.close();
}
int main ()
{	
	writedata(50.0, 40.0);   
	return 0;
}
