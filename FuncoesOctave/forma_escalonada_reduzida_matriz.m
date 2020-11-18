function [E, pA, nA] = forma_escalonada_reduzida_matriz(A)
% FORMA_ESCALONADA_REDUZIDA: Fun��o que retorna a forma escalonda reduzida
% da matriz A.
% Entrada:
%   A: Matriz de ordem mxn.
% Sa�da:
%   E: Matriz na forma escalonada reduzida equivalente a A, no caso de n�o
%      ocorrer erro ao usar a fun��o rref().
%   E: [] no caso de ocorrer erro ao usar a fun��o rref().
%   pA: Posto de A.
%   nA: Nulidade de A.
% Exemplo:
%   [E,pA,nA] = forma_escalonada_reduzida_matriz([1,2,-3,0;2,4,-2,2;3,6,-4,3])
%==========================================================================
%Importante: O uso dessa fun��o para encontrar a forma escalonada reduzida em um
% car�ter mais acad�mico. Com o uso da fun��o rref()podem ocorrer erros num�rios.
% Dependendo da toler�ncia tol estabelecida para rref(), tem-se resultados 
% diferentes. 
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================

% Determina o n�mero de linhas e de colunas de A
[m,n] = size(A);

% Determina o posto de A
pA = rank(A);

% Determina a nulidade de A
nA = n - pA;

% Determina a forma escalonada reduzida equivalente a A.
E = rref(A);
% Verifica se pode ter ocorrido erro com o uso de rref
m_absE = rank(E);
% Verifica se o n�mero de linhas de absE � diferente de pA
if m_absE ~= pA
    fprintf('Possivel erro associado a tolerancia de rref()!\n');
    E = [];
end 

end