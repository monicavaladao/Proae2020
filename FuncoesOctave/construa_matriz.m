function [A] = construa_matriz(regra_ii,regra_ij,m,n)
% CONSTRUA_MATRIZ: Função que retorna a matriz A de ordem mxn
% correspondente a definição fornecida pelas entradas da função.
% Entrada:
%   regra_ii: Regra associada a condição i=j, sendo que i,j representam,
%   respectivamente, linha e coluna de A. Essa regra deve ser inserida na
%   forma de @(i,j)().
%   regra_ij: Regra associada a condição i~=j, sendo que i,j representam,
%   respectivamente, linha e coluna de A. Essa regra deve ser inserida na
%   forma de @(i,j)().
%   m: Número de linhas de A.
%   n: Número de colunas de A.
% Saída:
%   A: Matriz A de ordem mxn
% Exemplo: 
%   Duas condições para os índices
%       [A] = construa_matriz(@(i,j)(i - j),@(i,j)(i),4,7)
%   Apenas uma condição para os índices
%       [A] = construa_matriz(@(i,j)(i),@(i,j)(i),4,7)
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
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
