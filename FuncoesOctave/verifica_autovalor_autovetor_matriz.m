function [O] = verifica_autovalor_autovetor_matriz(A,lambda,v)
% VERIFICA_AUTOVALOR_AUTOVETOR_MATRIZ: Fun��o que retorna a forma geral da matriz
% resultante do produto (A - lambda.*I).v.
% Entrada:
%   A: Matriz de ordem nxn.
%   lambda: Escalar qualquer.
%   v: Vetor nx1
% Sa�da:
%   O: Matriz resultante do produto (A - lambda.*I).v.
% Exemplo:
%   [O] = verifica_autovalor_autovetor_matriz([-3,1,-1;-7,5,-1;-6,6,-2],-2,[-1;0;0])
%
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

% Verifica a ordem da matriz
if m == n
    % Identifica a matriz idenidade de ordem nxn
    I = eye(n);
    % Identifica a matriz nula de ordem nx1
    O = zeros(n,1);
    % Identifica a matriz (A - lambda.I)
    C = (A - lambda.*I);
    % Verifica se v � n�o nulo
    if all(v == 0)
      fprintf('O vetor v n�o pode ser nulo \n');
      O = [];
    else
      rC = rank(C);
      if (rC == m)
        fprintf('lambda n�o � um autovalor de A \n');
        O = [];
      else
        % Verifica ordem do vetor v       
        [mv,cv] = size(v);
        if (mv == m)
          % Determina a matriz resultante de (A - autoval.*I).v
          O = ((A - lambda.*I)*v);         
        else
          fprintf('O vetor v deve ter m linhas \n');
          O = [];
        end
      end
    end
else
    fprintf('A matriz n�o � quadrada!!!\n');
    O = [];
end

end
