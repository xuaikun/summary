#include <fstream>
#include <iostream>
using namespace std;

void writedata(long length, long time)
{
	//д���� 
	// ��дģʽ���ļ�
   ofstream outfile1;
   outfile1.open("lenght.xls", ios::app);
   // ���ļ�д���û����������
   outfile1 << length << endl;
   // �رմ򿪵��ļ�
   outfile1.close();
   
   //дʱ�� 
   // ��дģʽ���ļ�
   ofstream outfile2;
   // �ٴ����ļ�д���û����������
   outfile2.open("time.xls", ios::app);
   outfile2 << time << endl;
   outfile2.close();
}
int main ()
{	
	writedata(50.0, 40.0);   
	return 0;
}
