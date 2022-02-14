//User Code
	package com.mycompany.ej02;

//Setings

%%
%class Lexer
%public
%unicode
%line
%column
%int
%{
	//java code
	int Vocal1,Vocal2,Vocal3,Vocal4,Vocal5 = 0;
	int Vocal = 0;
	int Numbers =0; 
	String Posicion = "";
	
	public int getVocal1(){
		return Vocal1;
	}
	
	public int getVocal2(){
		return Vocal2;
	}
	
	public int getVocal3(){
		return Vocal3;
	}
	
	public int getVocal4(){
		return Vocal4;
	}
	
	public int getVocal5(){
		return Vocal5;
	}
	
	public int getNumbers(){
		return Numbers;
	}
	
	private void Assignment(){
		switch(Vocal){
			case 1:
				Vocal1++;
			break;
			case 2:
				Vocal2++;
			break;
			case 3:
				Vocal3++;
			break;
			case 4:
				Vocal4++;
			break;
			case 5:
				Vocal5++;
			break;
				
		}
		Vocal = 0;
	}
	
	private void Reset(){
		Vocal1,Vocal2,Vocal3,Vocal4,Vocal5 =0;
	}
	
	private void Posicion(){
		int x = getLine();
		int y = getColumn(); 
		Posicion += "("+x+","+y+")--";
	}
	
	public String getInt(){
		return Posicion;
	}
	
	public int getLine(){
		return yyline;
	}
	
	public int getColumn(){
		return yycolumn;
	}
	
%}
%eof{
	Assignment();
%eof}
//lexical rulers

%%
(a|e|i|o|u)|(A|E|I|O|U)		{Vocal++;}
(\d)+				{Posicion();}
\s				{Assignment();}
[^]				{}

