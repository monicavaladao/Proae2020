function [p] = verifica_autovalor_matriz(A,lambda)
% VERIFICA_AUTOVALOR_MATRIZ: Fun��o que retorna o valor p(lambda) onde p(.) � o
% polin�mio caracter�stico de A
% Entrada:
%   A: Matriz de ordem nxn.
%   lambda: Escalar qualquer.
% Sa�da:
%   p: Valor dado por p(lambda).
% Exemplo:
%   [p] = verifica_autovalor_matriz([-3,1,-1;-7,5,-1;-6,6,-2],-2)
%
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

% Verifica a ordem da matriz
if m == n
    % Encontra os coeficientes do polin�mio caracter�stico
    c = poly(A);
    
    % Retorna os coeficientes considerando o determinante de (A - lambda.*I)
    c = -c;
    c = c(:);
    
    % Identifica a quantidade de coeficientes
    nc = length(c);
 
    % Verifica se lambda � solu��o do polin�mio caracter�stico
    xlambda = lambda*ones(1,(nc-1));
    e = [1:(nc-1)];
    [ex,~] = sort(e,'descend');
    xlambda_ex = xlambda.^ex;
    xlambda_ex = xlambda_ex(:);
    p = (c(1:(nc - 1)))'*xlambda_ex + c(nc);
else
    fprintf('A matriz n�o � quadrada!!!');
    p = [];
end



end