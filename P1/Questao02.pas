program Questao02;



uses
  crt;

var
  i,j,erro,u,jk,e,e2,e3,t: integer;
  frase,frase1,frase2,frase3,frase4,frase5,pos,pos2,ns: string;

begin
writeln('Questao 02');
writeln('Autor:Hildermes Jose Medeiros Filho');
writeln('Data 18//11//2015');
writeln;
    //lendo os dados de entrada

      Writeln('Entre com 5 frases com mais de 30 caracteres.');
      Writeln('As frases devem conter apenas letras.');

 for i:=1 to 5 do
 begin
  erro:=-1;
  e:=0;
  e2:=0;
  e3:=0;
  repeat
   writeln('Entre com a ',i,chr(176), ' frase.');
   writeln;
   readln(frase);
   //Não aceito strings menos de 30 caracteres
   if length(frase)<30 then
   begin
    e:=-1;
   end;
   //strings com 30 ou mais caracteres sao aceitas
   if length(frase)>29 then
   begin
    for u:=1 to length(frase)do
    begin
     pos:=copy(frase,u,1);
     if pos='0'then
     e2:=-1
     else if pos='1' then
     e2:=-1
     else if pos='2' then
     e2:=-1
     else if pos='3' then
     e2:=-1
     else if pos='4' then
     e2:=-1
     else if pos='5' then
     e2:=-1
     else if pos='6' then
     e2:=-1
     else if pos='7' then
     e2:=-1
     else if pos='8' then
     e2:=-1
     else if pos='9' then
     e2:=-1
     else if (e2<>-1)then
     e2:=0;
    end;
//Procurando excesso de espaço
    for u:=1 to (length(frase)-1) do
    begin
     pos:=copy(frase,u,1);
     t:=u+1;
     pos2:=copy(frase,t,1);
     Ns:=pos+pos2;
     if Ns='  ' then
      e3:=-1
     else if (e3<>-1) then
      e3:=0;
    end;
   end;
//Aqui já rodaram as condições, checarei os erros que faltam.
//Se nao tiver problema, sem erro!
   if ((e=0)and(e2=0)and (e3=0) )then
    erro:=0
//frase pequena
   else if (e=-1)then
   begin
    erro:=-1;
    e:=0 ;
    writeln('Frase Pequena!');
    writeln('Por favor, entre com uma frase com mais de 30 caracteres.');
    writeln('Tente, novamente:');
   end
//caso str seja maior que 30 e tenha numeros inteiros colados aos caracteres;
   else if ((e=0) and(e2=-1))then
   begin
   erro:=-1;
   e2:=0;
   writeln('Numeros foram achados, reescreva a frase.');
   writeln;
   end
//Caso str seja maior que 30, não tenha numeros inteiros e contenha excesso de espaços
   else if ((e2=0) and (e=0) and (e3=-1))then
   begin
   erro:=-1;
   e3:=0;
   writeln('Excesso de espacos foram detectados, reescreva sua frase.');
   writeln;
   end;

  until (erro=0);
  //Se validados os dados de entrada serão atribuidos a medida que são lidos
      if (i=1) then
      frase1:=frase;
      if i=2 then
      frase2:=frase;
      if i=3 then
      frase3:=frase;
      if i=4 then
      frase4:=frase;
      if i=5 then
      frase5:=frase;
  end;
      writeln;
      clrscr;
   jk:=0 ;
   j:=0 ;
    for i:=1 to length(frase1) do
    begin
//Procurando as vogais na frase 1
     pos:=copy(frase1,i,1);
     if((pos='a')or(pos='A')or(pos='e')or(pos='E')or (pos='i')or(pos='I')or(pos='u')or(pos='U'))then
     begin
     j:=j+1;
     writeln(pos);
     end

    end;
    writeln('frase 1:');
    writeln(frase1);
    writeln('foram achadas ', j,' vogais.');
    writeln;
    jk:=jk+j;
    j:=0 ;
   for i:=1 to length(frase2) do
//Procurando as vogais na frase 2
    begin
     pos:=copy(frase2,i,1);
    if((pos='a')or(pos='A')or(pos='e')or(pos='E')or (pos='i')or(pos='I')or(pos='o')or(pos='O')or(pos='u')or(pos='U'))then
     j:=j+1;
     end;
   writeln('frase 2:');
   writeln(frase2);
    writeln('foram achadas ', j,' vogais.');
    writeln;
   jk:=jk+j;
   j:=0;
   for i:=1 to length(frase3) do
//Procurando as vogais na frase 3
    begin
     pos:=copy(frase3,i,1);
      if((pos='a')or(pos='A')or(pos='e')or(pos='E')or (pos='i')or(pos='I')or(pos='o')or(pos='O')or(pos='u')or(pos='U'))then
     j:=j+1;
     end;
   writeln('frase 3:');
   writeln(frase3);
    writeln('foram achadas ', j,' vogais.');
    writeln;
   jk:=jk+j;
   j:=0 ;
   for i:=1 to length(frase4) do
//Procurando as vogais na frase 4
    begin
     pos:=copy(frase4,i,1);
      if((pos='a')or(pos='A')or(pos='e')or(pos='E')or (pos='i')or(pos='I')or(pos='o')or(pos='O')or(pos='u')or(pos='U'))then
     j:=j+1;
     end;
   writeln('frase 4:');
   writeln(frase4);
    writeln('foram achadas ', j,' vogais.');
    writeln;
   jk:=jk+j;
   j:=0 ;
   for i:=1 to length(frase5) do
//Procurando as vogais na frase 5
    begin
     pos:=copy(frase5,i,1);
    if((pos='a')or(pos='A')or(pos='e')or(pos='E')or (pos='i')or(pos='I')or(pos='o')or(pos='O')or(pos='u')or(pos='U'))then
     j:=j+1;
     end;
   writeln(frase5);
   writeln('frase 5:');
    writeln('foram achadas ', j,' vogais.');
    writeln;
   jk:=jk+j;
   writeln('foram achadas ',jk, ' vogais nas 5 frases.');
    readln;
end.

