function [detA] = determinante_matriz(A)
% DETERMINANTE_MATRIZ: Fun��o que calcula o determinante da matriz A.
% Entrada:
%   A: Matriz A de ordem nxn.
% Sa�da:
%   detA: Determinante da matriz A.
% Exemplo:
%   [detA] = determinante_matriz([1,2,3;4 8 7;5 2 3])
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

% Verifica a condi��o para calcular o determinante
if m == n
    detA = det(A);    
else
    fprintf('A matriz n�o � quadrada!!!\n');
    detA = [];
end



end