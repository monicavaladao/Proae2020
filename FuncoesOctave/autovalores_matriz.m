function [autoval] = autovalores_matriz(A)
% AUTOVALORES_MATRIZ: Fun��o que retorna os autovalores da matriz A.
% Entrada:
%   A: Matriz de ordem nxn.
% Sa�da:
%   autoval: Vetor com os autovalores da matriz A.
% Exemplo:
%   [autoval] = autovalores_matriz([-3,1,-1;-7,5,-1;-6,6,-2])
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
    % Calcula os autovalores da matriz A
    autoval = eig(A);
else
    fprintf('A matriz n�o � quadrada!!!');
    autoval = [];
end

end