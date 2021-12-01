function [C] = produto_matrizes(A,B)
% PRODUTO_MATRIZES: Fun��o que retorna a matriz C = A.B
% Entrada:
% A: Matriz de ordem mxn.
% B: Matriz de ordem nxp.
% Sa�da:
% C: Matriz de ordem nxp.
% Exemplo:
%   [C] = produto_matrizes([1,2,3;4,5,6],[7,7,9,10;11,12,13,14;1,2,3,4])
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

% Verifica se o produto matricial est� definido
if n_A == m_B
    % Calcula a matriz C
    C = A*B;
else
    fprintf('Produto de matrizes n�o est� definido. Verifique as ordens as matrizes!!!\n')
    C = [];
end

end