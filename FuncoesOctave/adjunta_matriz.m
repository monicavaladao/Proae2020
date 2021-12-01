function [AdjA] = adjunta_matriz(A)
% ADJUNTA_MATRIZ: Fun��o que calcula a matriz dos cofatores associada a matriz A
% Entrada:
%   A: Matriz A de ordem mxm.
% Sa�da:
%   AdjA: Matriz dos adjunta associada a matriz A.
% Exemplo:
%   [AdjA] = adjunta_matriz([1,2,3;4 8 7;5 2 3])
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
[m,n] = size(A);
% Imprime a matriz A
fprintf('\n Matriz A:\n');
disp(A)
% Imprime o n�mero de linhas de A
fprintf('\n N�mero de linhas de A: \n');
m
% Imprime o n�mero de colunas de A
fprintf('\n N�mero de colunas de A: \n');
n
% Verifica se a matriz A � quadrada
if m == n
  fprintf('==============\n');
  for i = 1:m
    for j = 1:m
      k = strcat(num2str(i),num2str(j));
      fprintf('Submatriz A_%s:\n\n',k);
      S = A;
      S(i,:) = [];
      S(:,j) = [];
      disp(S)
      fprintf('Determinante da submatriz A_%s:\n\n',k);
      detS = det(S);
      disp(detS)
      fprintf('Cofator Cof_%s:\n\n',k);
      cof = (-1)^(i+j)*detS;
      disp(cof)
      CofA(i,j) = cof;
      fprintf('==============\n');
    end
  end
  fprintf('Matriz dos cofatores:\n');
  disp(CofA);
  % Transposta da matriz dos cofatores
  AdjA = CofA';
  fprintf('\n');
else
    fprintf('A matriz n�o � quadrada!!!\n');
    AdjA = [];
end

end