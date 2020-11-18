function [autoval] = autovalores_matriz(A)
% AUTOVALORES_MATRIZ: Função que retorna os autovalores da matriz A.
% Entrada:
%   A: Matriz de ordem nxn.
% Saída:
%   autoval: Vetor com os autovalores da matriz A.
% Exemplo:
%   [autoval] = autovalores_matriz([-3,1,-1;-7,5,-1;-6,6,-2])
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
    % Calcula os autovalores da matriz A
    autoval = eig(A);
else
    fprintf('A matriz não é quadrada!!!');
    autoval = [];
end

end