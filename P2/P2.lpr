program P2;
function Status(n: integer; chute: integer) : string;
var
    dist: integer;
begin
{Intervalos paras distancias
 1,2,3 FV
 4,5,6 MQ
 7,8,9 QT
 10,11,12 MN
 13,14,15,FR
 16,17,18 MF
 19 ou mais CG
}
  dist:= ABS(n-chute);
  if dist <=3 then
     status := 'FV'
  else if ((dist <=6) and(dist>3)) then
     status := 'MQ'
  else if ((dist <=9)and(dist>6))then
     status := 'QT'
  else if ((dist<=12)and(dist>9)) then
     status := 'MN'
  else if ((dist<=13)and(dist>12)) then
     status := 'FR'
  else if ((dist <=18)and(dist>13)) then
     status := 'MF'
  else
     status := 'CG';
end;

procedure emiteMensagem(var e1, e2: string; dist1, dist2: integer);
begin
  case e1 of
{
+6 niveis  Esquentou muito mais
+5 niveis  Esquentou muito
+4 niveis  Esquentou bastante
+3 niveis  Esta esquentando
+2 niveis  Deu uma esquentada
+1 nivel   Esquentou um poco
status
-1 nivel   Esfriou um pouco
-2 niveis  Deu uma esfriada
-3 niveis  Estah esfriando
-4 niveis  Esfriou bastante
-5 niveis  Esfriou muito
-6 niveis  Esfriou muito mais

}

   'FV': case e2 of
            'FV': if dist2<dist1 then
                  write('     Continua FERVENDO, mas deu uma esquentada')
                  else
                  write('     Continua FERVENDO, mas deu uma esfriada.');
            'MQ': write('     Esfriou um pouco, mas estah muito quente.');
            'QT': write('     Deu uma esfriada, mas estah quente.');
            'MN': write('     Estah esfriando, mas estah morno.');
            'FR': write('     Esfriou bastante, agora estah frio.');
            'MF': write('     Esfriou muito, agora estah muito frio.');
            'CG': write('     Esfriou muito mais, agora estah muito frio.');
            else
              begin
              if dist1=1 then
              write('     Estah FERVENDO MUITO!!!.')
              else if dist1=2 then
              write('     Estah FERVENDO!!!')
              else
              write('     Estah Fervendo pouco!');

              end;
          end;
    'MQ': case e2 of
            'FV': write('     Esquentou um pouco, agora estah FERVENDO!!!');
            'MQ': if dist2<dist1 then
                  write('     Continua muito quente, mas deu uma esquentada.')
                  else
                  write('     Continua muito quente, mas deu uma esfriada.');
            'QT': write('     Esfriou um pouco, mas estah quente.');
            'MN': write('     Deu uma esfriada, mas estah morno.');
            'FR': write('     Estah esfriando, agora estah frio.');
            'MF': write('     Esfriou bastante, agora estah muito frio.');
            'CG': write('     Esfriou muito, agora estah congelando.');
            else  write('     Estah muito quente.');
          end;
    'QT': case e2 of
            'FV': write('     Deu uma esquentada, agora estah FERVENDO!!!');
            'MQ': write('     Esquentou um pouco, agora estah muito quente.');
            'QT': if dist2<dist1 then
                  write('     Continua quente, mas deu uma esquentada.')
                  else
                  write('     Continua quente, mas deu uma esfriada.');
            'MN': write('     Esfriou um pouco, mas estah morno.');
            'FR': write('     Deu uma esfriada, agora estah frio.');
            'MF': write('     Estah esfriando, agora estah muito frio.');
            'CG': write('     Esfriou bastante, agora esta congelando.');
            else  write('     Estah quente.');
          end;
    'MN': case e2 of
            'FV': write('     Esta esquentando, agora estah FERVENDO!!!');
            'MQ': write('     Deu uma esquentada, agora esta muito quente.');
            'QT': write('     Esquentou um pouco, agora estah quente.');
            'MN': if dist2<dist1 then
                  write('     Continua morno, mas deu uma esquentada.')
                  else
                  write('     Continua morno, mas deu uma esfriada.');
            'FR': write('     Esfriou um pouco, agora estah frio.');
            'MF': write('     Deu uma esfriada, agora estah muito frio.');
            'CG': write('     Esta esfriando, agora esta congelando.');
            else  write('     Estah morno.');
          end;
    'FR': case e2 of
            'FV': write('     Esquentou bastante, agora estah FERVENDO!!!!');
            'MQ': write('     Esta esquentando, agora estah muito quente.');
            'QT': write('     Deu uma esquentada, agora estah quente.');
            'MN': write('     Esquentou um pouco, estah morno.');
            'FR': if dist2<dist1 then
                  write('     Continua frio, mas deu uma esquentada.')
                  else
                  write('     Continua frio, mas deu uma esfriada.');
            'MF': write('     Esfriou um pouco, agora estah muito frio.');
            'CG': write('     Deu uma esfriada, agora estah congelando');
            else  write('     Estah frio.');
          end;
    'MF': case e2 of
            'FV': write('     Esquentou muito, agora Estah FERVENDO!!!!');
            'MQ': write('     Esquentou bastante, estah muito quente.');
            'QT': write('     Estah esquentando, agora estah quente.');
            'MN': write('     Deu uma esquentada, agora esta morno.');
            'FR': write('     Equentou um pouco, mas continua frio.');
            'MF': if dist2<dist1 then
                  write('     Continua muito frio, mas deu uma esquentada.')
                  else
                  write('     Continua muito frio, mas deu uma esfriada.');
            'CG': write('     Esfriou um pouco, agora esta congelando');
            else  write('     Estah muito frio.');
                  end;
   'CG': case e2 of
            'FV': write('     Esquentou muito mais, agora Estah FERVENDO!!!!');
            'MQ': write('     Esquentou muito, agora estah muito quente.');
            'QT': write('     Esquentou bastante, agora estah quente.');
            'MN': write('     Estah esquentando, agora estah morno.');
            'FR': write('     Deu uma esquentada , mas estah frio.');
            'MF': write('     Equentou um pouco, mas ainda estah muito frio.');

            'CG': if dist2<dist1 then
                  write('     Continua congelando, mas deu uma esquentada.')
                  else
                  write('     Continua congelando, mas deu uma esfriada.');

            else
              begin
              if dist1>60 then
              write('     Estah CONGELANDO, ERROU FEIO!!!.')
              else if((dist1<=60) and (dist1>30)) then
              write('     Estah CONGELANDO, MUITO!!')
              else
              write('     Estah CONGELANDO!');
              end;
  end;
end;

end;

var
  acertos, chute, n, j, erro, dist1, dist2, u: integer;
  e1, e2, resp: string;
  lista,texto:array[1..10]of string;
begin
  // gerar número aleatório entre 1 e 100
  randomize;
  n := random(100);
  // zerar contador de acertos
  acertos := 0;
  // apresentar jogo ao usuãrio
  writeln('Voce tem 10 chances de acertar o numero que eu estou pensando.');
  writeln('Trata-se de um valor entre 1 e 100. Entao vamos la.');
  writeln;
  // executar laço de 10 tentativas:
  for j := 1 to 10 do
  begin
    // < ler (chute)
    write ('Tentativa ', j, ': ');
    repeat
      readln(resp);

      val(resp, chute, erro);
      if (erro <> 0) or (chute < 1) or (chute > 100) then
      begin
        erro:= -1;
        writeln('Valor invalido! Tente de novo.');
        writeln;
        write ('Tentativa ', j, ': ');

      end
      else if erro<> -1 then
      begin
      texto[j]:=resp;
      lista[1]:=texto[1];
      if j>1 then
      erro:=-1 ;
      begin
         for u:=1 to j-1  do
          if texto[j]=lista[u] then
          begin
          writeln('Valor jah digitado. Digite novamente.');
          erro:=-1 ;
          if erro=-1 then
           break
          end
          Else
          begin
          lista[j]:=texto[j];
          erro:=0;
          end;
      end;
      end;
    until (erro = 0);
    // se acertou:
    if chute = n then
    begin
      // parabenizar o usuário
      writeln;
      writeln('Parabens !');
      // incrementar contador de acertos
      inc(acertos);
      // quebrar laço
      break;
    end
    // senão:
    else
    begin
      // determinar status
      if j = 1 then // determinar estado1
      begin
        dist1:=ABS(n-chute);
        e1 := status(n, chute);
        e2 :='';
      end
      else // determinar estado2
       begin
        dist2:=ABS(n-chute);
        e2 := status(n, chute);
       end;
      // gerar mensagem correspondente
      emiteMensagem(e1, e2, dist1, dist2);
      // alterar status
      if e2 <> '' then
       begin
         dist1:=dist2;
         e1 := e2;
       end;
      writeln;
    end;
  end;
  // comunicar resultado ao usuário
  writeln;
  if acertos = 0 then
     writeln('Infelizmente, apos 10 tentativas, voce nao conseguiu acertar o numero ', n, '.')
  else
     writeln('Voce acertou o numero ', n, ' apos ', j, ' tentativas.');
  readln;
end.

