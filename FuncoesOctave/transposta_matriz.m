function[C] = transposta_matriz(A)
% TRANSPOSTA_MATRIZ: Fun��o que retorna a matriz matriz transposta de A.
% Entrada:
%   A: Matriz A de ordem mxn.
% Sa�da:
%   C: Matriz C = A^{T} de ordem nxm.
% Exemplo:
%   [C] = transposta_matriz([1,2,3;4,5,6])
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
C = A';

end