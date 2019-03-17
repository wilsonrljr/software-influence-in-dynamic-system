%{
 Artigo: INFLUÊNCIA DE SOFTWARES E SISTEMAS OPERACIONAIS NA SIMULACAO DE MODELOS DINANICOS NAO LINEARES

link: https://www.researchgate.net/profile/Erivelton_Nepomuceno/publication/310452096_Influencia_de_Softwares_e_Sistemas_Operacionais_na_Simulacao_de_Modelos_Dinamicos_Nao_Lineares/links/59ca80ff0f7e9bbfdc36aa06/Influencia-de-Softwares-e-Sistemas-Operacionais-na-Simulacao-de-Modelos-Dinamicos-Nao-Lineares.pdf

Essa rotina calcula do número de iterações até a resposta não atender a
determinada tolerância. Veja o índice proposto no artigo acima

}
%}

clear
clc
close all
%carregando dados
load ('ML','y','y2','y4');
%transpondo os dados para um vetor linha
y_t = y';
y2_t = y2';
y4_t = y4';
mat_y = [y_t; y2_t; y4_t]; %contruindo a matriz  de dados
v_e = mean(mat_y); %valor esperado 
desvioml = std(mat_y); %calculo do desvio padr�o por cada coluna da matriz
t = 1:1000;
mod = abs(mat_y);
ymax = max(max(mod));
x = 1;
limit = 0.1*ymax;
for i = 1:1000
   if desvioml(1, i) < limit
    safe_simulation(1, i) = desvioml(1, i);
   else
       break
   end
end
niteracoes = length(safe_simulation);
%figure(1)
%errorbar(t,v_e,desvio,'rx') %plota v_e + desvio e v_e - desvio
plot(desvioml, 'blue')
xlabel('Iteracoes')
ylabel('Desvio Padrao')