function [A] = construa_matriz_caso_geral(regra_ii,regra_ij,cond_ij,valor_cond,m,n)
% CONSTRUA_MATRIZ: Fun��o que retorna a matriz A de ordem mxn
% correspondente a defini��o fornecida pelas entradas da fun��o.
% Entrada:
%   regra_ii: Regra associada a condi��o cond_ij = valor_cond, sendo que i,j 
%   representam, respectivamente, linha e coluna de A. Essa regra deve ser 
%   inserida na forma de @(i,j)().
%   regra_ij: Regra associada a condi��o cond_ij ~= valor_cond, sendo que i,j 
%   representam, respectivamente, linha e coluna de A. Essa regra deve ser 
%   inserida na forma de @(i,j)().
%   cond_ij: Condi��o estabeleciada aos indices i,j da matriz. Essa regra deve 
%   ser inserida na forma de @(i,j)().
%   valor_cond: Valor associado a cond_ij.
%   m: N�mero de linhas de A.
%   n: N�mero de colunas de A.
% Sa�da:
%   A: Matriz A de ordem mxn
% Exemplo: 
%   Duas condi��es para os �ndices
%   [A] = construa_matriz_caso_geral(@(i,j)(2*i),@(i,j)(j+2),@(i,j)(i+j),4,4,7)
%   Apenas uma condi��o para os �ndices
%   [A] = construa_matriz_caso_geral(@(i,j)(2*i),@(i,j)(2*i),@(i,j)(i+j),4,4,7)
%==========================================================================
% Projeto Proae: Elabora��oo de Material Did�tico que Empregue o uso de 
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
        if  cond_ij(i,j) == valor_cond
            A(i,j) = regra_ii(i,j);
        else
            A(i,j) = regra_ij(i,j);
        end
    end
end


end
