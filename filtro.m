## Copyright (C) 2021 chmmaestro
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see https://www.gnu.org/licenses/.

## -- texinfo --
## @deftypefn {} {@var{retval} =} exemplo (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: chmmaestro <chmmaestro@chmmaestro-Inspiron-7560>
## Created: 2021-04-08

function y = filtro(x, modo)
% Algoritmo de exemplo - turma de Computação Gráfica
% x: imagem representada no espaco RGB, uint8 (intervalo 0-255)
% y: versao, em escala de cinza, da imagem x, em reais (intervalo 0-1)

tam = size(x);

if length(tam) ~= 3
  display('A variavel de entrada nao e uma imagem no espaco RGB');
end

%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]
%[R ,G, B] [R ,G, B] [R ,G, B]

if(!((modo == 'R')  (modo == 'G')  (modo == 'B') ))
  display('A variavel de entrada nao e uma imagem no espaco RGB');
endif

y = x;

for i=1:tam(1)
  for j=1:tam(2)

    if(modo == 'R')
      y(i,j,2) = 0; %G
      y(i,j,3) = 0; %B

    elseif(modo == 'G')
      y(i,j,1) = 0; %R
      y(i,j,3) = 0; %B

    elseif(modo == 'B')
      y(i,j,1) = 0; %R
      y(i,j,2) = 0; %G
    endif

  end
end

endfunction