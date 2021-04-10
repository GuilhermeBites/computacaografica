function y = histograma(x)
% Algoritmo de exemplo - turma de Computação Gráfica
% x: imagem representada no espaco RGB, uint8 (intervalo 0-255)
% y: versao, em escala de cinza, da imagem x, em reais (intervalo 0-1)

%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]

x = imhist(x);
tam = size(x);

soma_total = sum(x);
multiplicacao = 0;

for i=1:tam(1)
    multiplicacao = multiplicacao + x(i) * i;
end

result = multiplicacao / soma_total;

porcentagem = result/255;

y = porcentagem;

endfunction