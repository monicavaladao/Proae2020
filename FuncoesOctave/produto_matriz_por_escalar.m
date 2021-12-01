function[C] = produto_matriz_por_escalar(A,k)
% PRODUTO_MATRIZ_POR_ESCALAR: Fun��o que retorna a matriz C = k.A.
% Entrada:
%   A: Matriz A de ordem mxn.
%   k: Escalar qualquer
% Sa�da:
%   C: Matriz C = k.A de ordem mxn.
% Exemplo:
%   [C] = produto_matriz_por_escalar([1,2,3;4,5,6],-3)
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================

% Calcula a matriz C
C = k.*A;

end