function [C] = produto_matrizes(A,B)
% PRODUTO_MATRIZES: Função que retorna a matriz C = A.B
% Entrada:
% A: Matriz de ordem mxn.
% B: Matriz de ordem nxp.
% Saída:
% C: Matriz de ordem nxp.
% Exemplo:
%   [C] = produto_matrizes([1,2,3;4,5,6],[7,7,9,10;11,12,13,14;1,2,3,4])
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

% Verifica se o produto matricial está definido
if n_A == m_B
    % Calcula a matriz C
    C = A*B;
else
    fprintf('Produto de matrizes não está definido. Verifique as ordens as matrizes!!!\n')
    C = [];
end

end