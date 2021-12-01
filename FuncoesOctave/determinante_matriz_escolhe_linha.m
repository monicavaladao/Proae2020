function [detA] = determinante_matriz_escolhe_linha(A)
% DETERMINANTE_MATRIZ_ESCOLHE_LINHA: Fun��o que calcula o determinante
% da matriz A escolhendo uma linha qualquer de A.
% Entrada:
%   A: Matriz A de ordem mxm.
% Sa�da:
%   detA: Determinante da matriz A.
% Exemplo:
%   [detA] = determinante_matriz_escolhe_linha([1,2,3;4 8 7;5 2 3])
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
disp(m)
% Imprime o n�mero de colunas de A
fprintf('\n N�mero de colunas de A: \n');
disp(n)
% Verifica a condi��o para calcular o determinante (se A � matriz quadrada)
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
%        fprintf('\n Poss�vel erro num�rico \n');
%      end
    end
else
    fprintf('A matriz n�o � quadrada!!!\n');
    detA = [];
end

end