function [detA] = determinante_matriz_escolhe_linha(A)
% DETERMINANTE_MATRIZ_ESCOLHE_LINHA: Função que calcula o determinante
% da matriz A escolhendo uma linha qualquer de A.
% Entrada:
%   A: Matriz A de ordem mxm.
% Saída:
%   detA: Determinante da matriz A.
% Exemplo:
%   [detA] = determinante_matriz_escolhe_linha([1,2,3;4 8 7;5 2 3])
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
% Verifica a condição para calcular o determinante (se A é matriz quadrada)
if m == n
    nL = [1:m];
    Lna = input('Escolha uma linha qualquer da matriz A:  ','s');
    L = str2num(Lna);
    vL = find(nL == L);
    if isempty(vL)
      fprintf('\n Indice de linha incorreto \n');
      detA = [];
    else
      fprintf('=============================================\n');
      fprintf('Identifica cada submatriz e cada cofator\n');
      fprintf('=============================================\n');
      Dtnante = 0;
      for j = 1:n
        k = strcat(num2str(L),num2str(j));
        fprintf('Submatriz A_%s:\n\n',k); 
        S = A;
        S(L,:) = [];
        S(:,j) = [];
        disp(S)
        fprintf('Determinante da submatriz A_%s:\n\n',k);
        detS = det(S);
        disp(detS)
        fprintf('Cofator Cof_%s:\n\n',k);
        cof = (-1)^(L+j)*detS;
        disp(cof)
        Dtnante = Dtnante + A(L,j)*cof;
        fprintf('==============\n');
      end
      detA = Dtnante;
%      detA = det(A);
%      % Compara Dtnante com detA
%      if Dtnante ~= detA
%        fprintf('\n Possível erro numérico \n');
%      end
    end
else
    fprintf('A matriz não é quadrada!!!\n');
    detA = [];
end

end