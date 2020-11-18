function [CofA] = cofatores_matriz(A)
% COFATORES_MATRIZ: Função que calcula a matriz dos cofatores associada a matriz A
% Entrada:
%   A: Matriz A de ordem mxm.
% Saída:
%   CofA: Matriz dos cofatores associada a matriz A.
% Exemplo:
%   [CofA] = cofatores_matriz([1,2,3;4 8 7;5 2 3])
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
[m,n] = size(A);
% Imprime a matriz A
fprintf('\n Matriz A:\n');
disp(A)
% Imprime o número de linhas de A
fprintf('\n Número de linhas de A: \n');
disp(m)
% Imprime o número de colunas de A
fprintf('\n Número de colunas de A: \n');
disp(n)
% Verifica se a matriz A é quadrada
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
else
    fprintf('A matriz não é quadrada!!!\n');
    CofA = [];
end

end