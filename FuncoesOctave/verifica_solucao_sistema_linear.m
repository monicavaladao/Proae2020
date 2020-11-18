function[R,B] = verifica_solucao_sistema_linear(C,B,X)
% VERIFICA_SOLUCAO_SISTEMA_LINEAR: Função que verifica se o S é solução 
% do sistema linear representado por AX = B
% solução. Retorna a solução em caso afirmativo para sistema possível e 
% determinado. Retorna a matriz na forma escalonada reduzida associada ao
% sistema linear em questão.
% Entrada:
%   C: Matriz dos coeficientes nxn.
%   B: Matriz dos termos indepentendes nx1.
%   X: Matriz nx1
% Saída:
%   R: Matriz resultante R = A.X.
%   B: Matriz dos termos indepentendes nx1.
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Exemplo:
% [R,B] = verifica_solucao_sistema_linear([3 2 -5;2 -4 -2;1 -2 -3],[8;-4;-4],[-2;3;1])

% Calcula a ordem da matriz C
[m_C,n_C] = size(C);

% Calcula a ordem da matriz X
[m_X,n_X] = size(X);

% Verifica se o produto AX está definido
if n_C == m_X
  R = C*X;
else
  fprintf('Verifique as ordens das matrizesn\n');
  R = [];

end
