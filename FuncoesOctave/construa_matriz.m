function [A] = construa_matriz(regra_ii,regra_ij,m,n)
% CONSTRUA_MATRIz: Fun��o que retorna a matriz A de ordem mxn
% correspondente a defini��o fornecida pelas entradas da fun��o.
% Entrada:
%   regra_ii: Regra associada a condi��o i=j, sendo que i,j representam,
%   respectivamente, linha e coluna de A. Essa regra deve ser inserida na
%   forma de @(i,j)().
%   regra_ij: Regra associada a condi��o i~=j, sendo que i,j representam,
%   respectivamente, linha e coluna de A. Essa regra deve ser inserida na
%   forma de @(i,j)().
%   m: N�mero de linhas de A.
%   n: N�mero de colunas de A.
% Sa�da:
%   A: Matriz A de ordem mxn
% Exemplo: 
%   Duas condi��es para os �ndices
%       [A] = construa_matriz(@(i,j)(i - j),@(i,j)(i),4,7)
%   Apenas uma condi��o para os �ndices
%       [A] = construa_matriz(@(i,j)(i),@(i,j)(i),4,7)
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================

% Construa a matriz A
for i = 1:m
    for j = 1:n
        if i == j
            A(i,j) = regra_ii(i,j);
        else
            A(i,j) = regra_ij(i,j);
        end
    end
end


end