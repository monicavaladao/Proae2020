function [detA] = determinante_matriz(A)
% DETERMINANTE_MATRIZ: Função que calcula o determinante da matriz A.
% Entrada:
%   A: Matriz A de ordem nxn.
% Saída:
%   detA: Determinante da matriz A.
% Exemplo:
%   [detA] = determinante_matriz([1,2,3;4 8 7;5 2 3])
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

% Verifica a condição para calcular o determinante
if m == n
    detA = det(A);    
else
    fprintf('A matriz não é quadrada!!!\n');
    detA = [];
end



end