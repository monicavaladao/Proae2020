function [E, pA, nA] = forma_escalonada_reduzida_matriz(A)
% FORMA_ESCALONADA_REDUZIDA: Função que retorna a forma escalonda reduzida
% da matriz A.
% Entrada:
%   A: Matriz de ordem mxn.
% Saída:
%   E: Matriz na forma escalonada reduzida equivalente a A, no caso de não
%      ocorrer erro ao usar a função rref().
%   E: [] no caso de ocorrer erro ao usar a função rref().
%   pA: Posto de A.
%   nA: Nulidade de A.
% Exemplo:
%   [E,pA,nA] = forma_escalonada_reduzida_matriz([1,2,-3,0;2,4,-2,2;3,6,-4,3])
%==========================================================================
%Importante: O uso dessa função para encontrar a forma escalonada reduzida em um
% caráter mais acadêmico. Com o uso da função rref()podem ocorrer erros numérios.
% Dependendo da tolerância tol estabelecida para rref(), tem-se resultados 
% diferentes. 
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================

% Determina o número de linhas e de colunas de A
[m,n] = size(A);

% Determina o posto de A
pA = rank(A);

% Determina a nulidade de A
nA = n - pA;

% Determina a forma escalonada reduzida equivalente a A.
E = rref(A);
% Verifica se pode ter ocorrido erro com o uso de rref
m_absE = rank(E);
% Verifica se o número de linhas de não nulas de E é diferente de pA
if m_absE ~= pA
    fprintf('Possivel erro associado a tolerancia de rref()!\n');
    E = [];
end 

end
