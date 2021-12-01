function[R,B] = verifica_solucao_sistema_linear(C,B,X)
% VERIFICA_SOLUCAO_SISTEMA_LINEAR: Fun��o que verifica se X � uma solu��o 
% do sistema linear representado por CX = B.
% Entrada:
%   C: Matriz dos coeficientes mxn.
%   B: Matriz dos termos indepentendes mx1.
%   X: Matriz nx1
% Sa�da:
%   R: Matriz resultante R = C.X.
%   B: Matriz dos termos independentes mx1.
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Exemplo:
% [R,B] = verifica_solucao_sistema_linear([3 2 -5;2 -4 -2;1 -2 -3],[8;-4;-4],[-2;3;1])

% Calcula a ordem da matriz C
[m_C,n_C] = size(C);

% Calcula a ordem da matriz X
[m_X,n_X] = size(X);

% Verifica se o produto AX est� definido
if n_C == m_X
  R = C*X;
else
  fprintf('Verifique as ordens das matrizes!!!\n');
  R = [];

end
