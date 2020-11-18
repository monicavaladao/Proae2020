function [C] = soma_matrizes(A,B)
% SOMA_MATRIZES: Fun��o que retorna a matriz C = A + B.
% Entrada:
% A: Matriz de ordem mxn.
% B: Matriz de ordem mxn.
% Sa�da:
% C: Matriz C = A+B de ordem mxn.
% Exemplo:
%   [C] = soma_matrizes([1,2,3;4,5,6],[3,2,1;9,8,7])
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
[m_A,n_A] = size(A);

% Calcula a ordem da matriz B
[m_B,n_B] = size(B);

% Verifica se a soma est� definida
if m_A == m_B && n_A == n_B
    % Calcula a matriz C
    C = A + B;
else
    fprintf('Soma de matrizes n�o est� definida. Verifique as ordens das matrizes!!!\n')
    C = [];
end

end