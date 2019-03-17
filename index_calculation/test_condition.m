%{
 Artigo: INFLUÊNCIA DE SOFTWARES E SISTEMAS OPERACIONAIS NA SIMULACAO DE MODELOS DINANICOS NAO LINEARES

link: https://www.researchgate.net/profile/Erivelton_Nepomuceno/publication/310452096_Influencia_de_Softwares_e_Sistemas_Operacionais_na_Simulacao_de_Modelos_Dinamicos_Nao_Lineares/links/59ca80ff0f7e9bbfdc36aa06/Influencia-de-Softwares-e-Sistemas-Operacionais-na-Simulacao-de-Modelos-Dinamicos-Nao-Lineares.pdf

Essa rotina testa o calculo do número de iterações até a resposta não atender a
determinada tolerância. Veja o índice proposto no artigo acima

}
%}

clear
close all
clc

load('desvioml')
t = desvioml;
a = [1 2 4 5 3 2 1];
x = 1;
limit = 0.3;
for i = 1:1000
   if t(1, i) < limit
    b(1, i) = t(1, i);
   else
       break
   end
end



