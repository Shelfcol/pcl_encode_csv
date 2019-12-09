//#include "ICANCmd.h"
#include <iomanip>
#include <iostream>
#include <math.h>

using namespace std;
struct can_data{
	unsigned int uID;
	unsigned char arrData[8];

} canDataFrame;
int data[64];//存放64位的数字 0 1 的全局变量
can_data Dec2Hex(float number);
void dataJoin(can_data objCan);

unsigned int object2Uint(int byte,int bitStart,int length);//取出某个区间内的位，并且将最低位变为 unsigned int 类型的数据
bool object2Bool(int byte,int bitStart);
float object2UnsignedFloat(int byte,int bitStart,int length,double resolution);//取出相应的为，转化为正float型
//取出相应的为，转化为有符号float型
// -x=!x+1
//负数的最高位为1
//计算绝对值的时候最高位就不能参与计算
float object2Float(int byte,int bitStart,int length,double resolution);


int main(int argc,char **argv)
{

	/*float num=4294967294;
	cout << setprecision(12)<<num << endl;
	canDataFrame = Dec2Hex(num);*/
	cout<<"data"<<endl;
	for(int j=0;j<64;++j) 
	{
		data[j]=1;
		cout<<data[j];
	}
	cout<<endl;
	//dataJoin(canDataFrame);//将数组的值改变
	cout<<object2Uint(0,0,12)<<endl;
	cout<<object2Bool(1,0)<<endl;
	cout<<object2Bool(0,1)<<endl;
	cout<<object2UnsignedFloat(0,0,12,0.0624)<<endl;
	cout<<object2Float(0,0,12,0.0624)<<endl;
	/*
	unsigned char a=0x92;
	bool b;
	b=((a>>4)&1);
	cout<<b;
	*/
	
	return 0;

}

can_data Dec2Hex(float number)//返回一个数组
{

	/*
数据转换后的形式
							7		6		5		4		3		2		1		0
arrData[0]                      <----   lsb
arrData[1]                      <----  
arrData[2]                      <----  
									.......
arrData[i]            msb       <----
									.......
arrData[7]		0		0		0		0		0		0		0		0    
*/
	int numberEnCode;
	//上级接收到数据之后，乘以1000,可以保留三位小数，然后加一千万，将负数变为正数(注意：此数字绝对值在10000范围内,若想存更大的数字，则将加的数变大就是)
	numberEnCode = number;
	cout << numberEnCode << endl;
	can_data objCan; //一百万只需要五位16进制数据保存
	int flag;
	for (int i = 0; i < 8; ++i) //全部置0
	{
		objCan.arrData[i]=0x00;
		for (int j = 0; (j < 8) && (numberEnCode != 0); ++j) //操作每一位unsigned char，看置0还是1
		{

			flag = numberEnCode % 2;
			
			if(flag==1)
			{
				objCan.arrData[i]^=1<<j;
			}
			numberEnCode = numberEnCode / 2;
		}
    
    }

		//将我的转换后的数据的形式显示出来
		cout << "           "
				 << "76543210" << endl;
		for (int i = 0; i < 8; ++i)
		{
			cout << "arrData[" << i << "] ";
			for (int j = 0; j < 8; ++j)
			{
				cout << ((objCan.arrData[i] >> 7 - j) & 1);
			}

			cout << endl;
		}
			return objCan;
}


//将8*8=64位的数据按位的高低拼在一起，存在一个长为64的bool数组里面
void dataJoin(can_data objCan)
{
	
	int num=0;//记录data中记录的位数
	for(int i=0;i<8;++i)
	{
		for(int j=0;j<8;++j)
		{
			data[num]=(objCan.arrData[i]>>j)&1;
			++num;
		}
	
	}
    for(int k=0;k<64;++k) cout<<data[k];
    cout<<endl;

}


//取出某个区间内的位，并且将最低位变为2^0的unsiged char类型的数据
unsigned int object2Uint(int byte,int bitStart,int length)
{
	int numStart;
	unsigned int objectParam=0;
	numStart=byte*8+bitStart;
	for(int i=0;i<length;++i)
	{
		objectParam=objectParam+pow(2,i)*data[numStart+i];
	}
	
	return objectParam;
}

bool object2Bool(int byte,int bitStart)
{
	int numStart;
	bool objectParam;
	numStart=byte*8+bitStart;
	objectParam=data[numStart];
	return objectParam;

}

//取出相应的为，转化为正float型
float object2UnsignedFloat(int byte,int bitStart,int length,double resolution)
{
	float objectParam;
	int numStart;
	numStart=byte*8+bitStart;
	for(int i=0;i<length;++i)
	{
		objectParam=objectParam+pow(2,i)*data[numStart+i];
	}
	objectParam=objectParam*resolution;
	return objectParam;
}
	

//取出相应的为，转化为有符号float型
// -x=!x+1
//负数的最高位为1
//计算绝对值的时候最高位就不能参与计算
float object2Float(int byte,int bitStart,int length,double resolution)
{
	float objectParam=0.0;
	int numStart;
	numStart=byte*8+bitStart;
	cout<<"numStart="<<numStart<<endl;
	bool signFlag=0;
	if(data[numStart+length-1]==1) signFlag=1;//表示此数为负数
	cout<<"signFlag="<<signFlag<<endl;
	//减1
	
	cout<<"numStart="<<numStart<<endl;
	cout<<"原数(注意是反着的,最高位在右边) ";
	for(int k=0;k<length;++k) cout<<data[numStart+k];
	cout<<endl;
	
	for(int i=numStart;i<numStart+length;++i)
	{
		
		if(data[i]==0)
		{
			//cout<<data[i];
			continue;
		}
		
		if(data[i]==1)
		{	
			//cout<<"i="<<i<<" "<<data[i]<<endl;
			data[i]=0;
			for(int j=i-1;j>=numStart;--j)
			{
				data[j]=1;
				
			}
				
			break;
		}
	
	}
	cout<<"numStart="<<numStart<<endl;
	cout<<"减1(注意是反着的,最高位在右边) ";
	for(int k=0;k<length;++k) cout<<data[numStart+k];
	cout<<endl;
	
	//取反
	for(int i=numStart;i<numStart+length;i++)
	{	//cout<<"sizeof(data[i])="<<sizeof(data[i]);
		if(data[i]==0) data[i]=1;
		
		
		else 
			data[i]=0;
	}
	cout<<endl;
	cout<<"numStart="<<numStart<<endl;
	cout<<"取反(注意是反着的,最高位在右边) ";
	for(int k=0;k<length;++k) cout<<data[numStart+k];
	cout<<endl;
	//不算最高位，得到这个整型数
	for(int j=0;j<length-1;++j)
	{
		objectParam=objectParam+data[numStart+j]*pow(2,j);
	}
	
	objectParam=objectParam*resolution;
	if(signFlag) objectParam=objectParam-2*objectParam;
	
	return objectParam;
		
}



