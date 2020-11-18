function [c] = coeficientes_polinomio_caracteristico(A)
%COEFICIENTES_POLIN�MIO_CARACTERISTICO: Fun��o que retorna os coeficientes
%do polin�mio caracter�stico associado a matriz A.
% Entrada:
%   A: Matriz A de ordem nxn
% Sa�da:
%   c: Vetor de ordem (n+1)x1 que cont�m os coeficientes do polin�mio
%       caracter�stico. Os elementos em c est�o associados ordenadamente
%       aos termos de maior grau para o termo de menor grau do polin�mio.
% Exemplo:
%   [c] = coeficientes_polinomio_caracteristico([-3,1,-1;-2,5,-1;-6,7,-8])
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Calcula a ordem da matriz A
[m,n] = size(A);

% Verifica se A � uma matriz quadrada
if m == n
    % Encontra os coeficientes do polin�mio caracter�stico
    c = poly(A);
    % Retorna os coeficientes considerando o determinante de (A - autoval.*I)
    c = -c;
else
    fprintf('A matriz n�o � quadrada!!!');
    c = [];
end

end