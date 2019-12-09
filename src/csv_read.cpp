#include <iostream>
#include <vector>
#include <fstream>
#include <cstring>
#include <string>
#include <sstream>
#include <cstdlib>
using namespace std;

struct tagCAN_DataFrame{

	unsigned int uID;
	unsigned char arryData[8];

} CAN_DataFrame;



tagCAN_DataFrame rec[65540];
unsigned char Dec2Hex(int number);//返回一个数组
tagCAN_DataFrame *dataInCanFrame(long int &rowNumber,char *filePath);
int main(){
//将csv文件里面的数据存入此数组
	char *filePath="/home/gxf/catkin_ws/motovis_data/a1.csv";
	//long int rowNumber;
	//tagCAN_DataFrame *rec1;
	//rec1=dataInCanFrame(rowNumber,filePath);
	
	ifstream infile(filePath);

	vector<string>fileData;
	string line;
	long int rowNumber = 0;
	while (infile.good())
	{
		getline(infile, line);
		fileData.push_back(line);
		++rowNumber;
	}
	infile.close();
	
	
	
	int commaNum;//记录逗号出现的个数

	for(int i=1;i<3;++i)
	{
		string ID;
		string data;
		
		//stringstream ssData;
		commaNum=0;
		
		for (int j=0;j<fileData[i].size();++j)
		{
		
		
			if(fileData[i][j]==',')
			{
				commaNum++;
				continue;
			}
		
			if(commaNum==3)//记录ID
			{
				ID=ID+fileData[i][j];
				continue;
			}

			if(commaNum==7)//记录data
			{
				data=data+fileData[i][j];
				continue;
			}
		
		}
	
		//将ID的string类型存入结构体里面
		char buf[ID.length()+1];
		ID.copy(buf, ID.length());
		buf[ID.length()] = '\0';    
		sscanf(buf, "%x", &rec[i-1].uID); 	

		cout<<"uID="<<rec[i-1].uID<<endl;
		
		//将can报文的data的string类型存入结构体里面
		int dataNum=0;
		for(int k=0;k<data.length();++k)
		{
			string hexNum;
			while(data[k]!=' ')
			{
				hexNum=hexNum+data[k];
				++k;
				if(k>=data.length()) break;
			}
			
			char number[5];
			number[0]='0';
			number[1]='x';
			number[2]=hexNum[0];
			number[3]=hexNum[1];
			number[4]='\0';
			cout<<"number="<<number<<endl;
			int a=strtoul(number,0,0);//将16进制的字符串转换为十进制数字
			cout<<a<<endl;
			rec[i-1].arryData[dataNum]=Dec2Hex(a);
			++dataNum;
		
		}
	}
	
	return 0;
	
}
/*
tagCAN_DataFrame *dataInCanFrame(long int &rowNumber,char *filePath)
{
	rowNumber = 0;//因为第一行的数据不是需要的，所以会比实际的大1
//将csv文件里面的数据存入此数组
	ifstream infile(filePath);
	
	vector<string>fileData;
	string line;
	
	while (infile.good())
	{
		getline(infile, line);
		fileData.push_back(line);
		++rowNumber;
	}
	infile.close();
	
	tagCAN_DataFrame rec=static tagCAN_DataFrame [rowNumber-1];
	int commaNum;//记录逗号出现的个数
	for(int i=1;i<fileData.length();++i)
	{
		string ID;
		string data;
		
		commaNum=0;
		
		//提取每一行的字符
		for (int j=0;j<fileData[i].size();++j)
		{
		
		
			if(fileData[i][j]==',')
			{
				commaNum++;
				continue;
			}
		
			if(commaNum==3)//记录ID
			{
				ID=ID+fileData[i][j];
				continue;
			}

			if(commaNum==7)//记录data
			{
				data=data+fileData[i][j];
				continue;
			}
		
		}
	
		//将ID的string类型存入结构体里面
		char buf[ID.length()+1];
		ID.copy(buf, ID.length());
		buf[ID.length()] = '\0';    
		sscanf(buf, "%x", &rec[i-1].uID); 	

		cout<<"uID="<<rec[i-1].uID<<endl;
		
		//将can报文的data的string类型存入结构体里面
		int dataNum=0;
		for(int k=0;k<data.length();++k)
		{
			string hexNum;
			while(data[k]!=' ')
			{
				hexNum=hexNum+data[k];
				++k;
				if(k>=data.length()) break;
			}
			
			char number[5];
			number[0]='0';
			number[1]='x';
			number[2]=hexNum[0];
			number[3]=hexNum[1];
			number[4]='\0';
			cout<<"number="<<number<<endl;
			int a=strtoul(number,0,0);//将16进制的字符串转换为十进制数字
			cout<<a<<endl;
			rec[i-1].arryData[dataNum]=Dec2Hex(a);
			++dataNum;
		
		}
	}
	
	return rec;

}

*/


unsigned char Dec2Hex(int number)//返回一个数组
{

	int flag;
	unsigned char object=0x00;
	for (int j = 0; (j < 8) && (number != 0); ++j) //操作每一位unsigned char，看置0还是1
	{

		flag = number % 2;
		
		if(flag==1)
		{
			object^=1<<j;
		}
		number = number / 2;
	}
    
    

	//将我的转换后的数据的形式显示出来
	
	for (int j = 0; j < 8; ++j)
	{
		cout << ((object >> 7 - j) & 1);
	}

	cout << endl;
	
	
	return object;
}


