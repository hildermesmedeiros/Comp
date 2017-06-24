program Questao03;



uses
  crt;

var
 a,p,t,i,soma:integer;
 n,n1,n2,n3,n4,n5:integer;


begin
writeln('Questao 03');
writeln('Autor:Hildermes Jose Medeiros Filho');
writeln('Data 18//11//2015');
writeln;
//calculando a série;
a:=0 ;
p:=1 ;
i:=0 ;
soma:=0;
//se quiser escrever a serie retirar os comentarios: writln(p) e writln(t);
//writeln(p);
repeat
t:=a+p ;;
a:=p  ;
p:=t  ;
//writeln(t);
//se o resto da divisão por 2 for direferente de 0, o numero é impar;
if (t mod 2<>0)then
begin
//se o resto da divisão por 3 for = 0 o numero é multiplo de 3;
 if(t mod 3=0) then
  begin
  i:=i+1;
  n:=t;
  soma:=soma+t;
  end;
end;
//guardando os valores de n, achados.
if i=1 then
 n1:=n;
if i=2 then
 n2:=n;
if i=3 then
 n3:=n;
if i=4 then
 n4:=n;
if i=5 then
 n5:=n;
//repetindo até que a condição seja satisfeita, se achar 5, para.
until i=5;
writeln('Os 5 primeiros  impares e multiplos de 3 na serie de Fibonnacci sao:');
writeln(n1,',',n2,',',n3,',',n4,',',n5);
writeln;
writeln('A soma deles da:');
writeln(soma);
readln;
end.

