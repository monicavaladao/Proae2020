function [C] = subtracao_matrizes(A,B)
% SUBTRACAO_MATRIZES: Função que retorna a matriz C = A - B.
% Entrada:
% A: Matriz de ordem mxn.
% B: Matriz de ordem mxn.
% Saída:
% C: Matriz C = A-B de ordem mxn.
% Exemplo:
%   [C] = subtracao_matrizes([1,2,3;4,5,6],[3,2,1;9,8,7])
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
[m_A,n_A] = size(A);

% Calcula a ordem da matriz B
[m_B,n_B] = size(B);

% Verifica se a soma está definida
if m_A == m_B && n_A == n_B
    % Calcula a matriz C
    C = A - B;
else
    fprintf('Subtração de matrizes não está definida. Verifique as ordens das matrizes!!!\n')
    C = [];
end

end
