program Questao01;



uses
  crt;

procedure Troca(Var a,b:integer);
var aux: integer;
 begin
 aux:=a;
 a:=b;
 b:=aux;
 end;
var
  v,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10: integer;
  i,erro: integer;
  input: string;

begin
    writeln('Questao 01');
    writeln('Autor:Hildermes Jose Medeiros Filho');
    writeln('Data 18//11//2015');
    writeln;
    //lendo os dados de entrada
    for i:=1 to 10 do
     begin
      repeat
       writeln('Entre com o ',i,char(176),' numero inteiro');

       readln(input);
       val(input,v,erro);
       if erro <> 0 then
        begin
        writeln('Valor invalido!');
        writeln('Por favor, entre com um numero inteiro.');
        writeln('Tente, novamente:');
        end;

      until (erro=0);
      //Se validaddos os dados de entrada serão atribuidos a medida que são lidos
      if (i=1) then
      v1:=v;
      if i=2 then
      v2:=v;
      if i=3 then
      v3:=v;
      if i=4 then
      v4:=v;
      if i=5 then
      v5:=v;
      if i=6 then
      v6:=v;
      if i=7 then
      v7:=v;
      if i=8 then
      v8:=v;
      if i=9 then
      v9:=v;
      if i=10 then
      v10:=v;
    end;
    //Limpando a tela, caso dados de entrada errados sejam digitados as resposta de erro poluiriam a tela.
    clrscr;
    //Escrevendo os inteiros digitados
     writeln('Os inteiros digitados foram:');
     writeln(v1,', ',v2,', ',v3,', ',v4,', ',v5,', ',v6,', ',v7,', ',v8,', ',v9,', ',v10);
    //Trocando os inteiros Digitados
    Troca(v1,v10);
    Troca(v2,v9);
    Troca(v3,v8);
    Troca(v4,v7);
    Troca(v5,v6);
    writeln;
    //Escrevendo os números na ordem invertida
    Writeln('Os valores inteiros invertidos:');
    writeln(v1,', ',v2,', ',v3,', ',v4,', ',v5,', ',v6,', ',v7,', ',v8,', ',v9,', ',v10);
    readln;
end.

