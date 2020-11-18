function [p] = verifica_autovalor_matriz(A,lambda)
% VERIFICA_AUTOVALOR_MATRIZ: Função que retorna o valor p(lambda) onde p(.) é o
% polinômio característico de A
% Entrada:
%   A: Matriz de ordem nxn.
%   lambda: Escalar qualquer.
% Saída:
%   p: Valor dado por p(lambda).
% Exemplo:
%   [p] = verifica_autovalor_matriz([-3,1,-1;-7,5,-1;-6,6,-2],-2)
%
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Calcula a ordem da matriz A
[m,n] = size(A);

% Verifica a ordem da matriz
if m == n
    % Encontra os coeficientes do polinômio característico
    c = poly(A);
    
    % Retorna os coeficientes considerando o determinante de (A - lambda.*I)
    c = -c;
    c = c(:);
    
    % Identifica a quantidade de coeficientes
    nc = length(c);
 
    % Verifica se lambda é solução do polinômio característico
    xlambda = lambda*ones(1,(nc-1));
    e = [1:(nc-1)];
    [ex,~] = sort(e,'descend');
    xlambda_ex = xlambda.^ex;
    xlambda_ex = xlambda_ex(:);
    p = (c(1:(nc - 1)))'*xlambda_ex + c(nc);
else
    fprintf('A matriz não é quadrada!!!');
    p = [];
end



end