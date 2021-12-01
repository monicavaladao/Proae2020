function[C] = transposta_matriz(A)
% TRANSPOSTA_MATRIZ: Função que retorna a matriz matriz transposta de A.
% Entrada:
%   A: Matriz A de ordem mxn.
% Saída:
%   C: Matriz C = A^{T} de ordem nxm.
% Exemplo:
%   [C] = transposta_matriz([1,2,3;4,5,6])
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
C = A';

end