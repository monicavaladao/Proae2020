function[C] = produto_matriz_por_escalar(A,k)
% PRODUTO_MATRIZ_POR_ESCALAR: Função que retorna a matriz C = k.A.
% Entrada:
%   A: Matriz A de ordem mxn.
%   k: Escalar qualquer
% Saída:
%   C: Matriz C = k.A de ordem mxn.
% Exemplo:
%   [C] = produto_matriz_por_escalar([1,2,3;4,5,6],-3)
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================

% Calcula a matriz C
C = k.*A;

end