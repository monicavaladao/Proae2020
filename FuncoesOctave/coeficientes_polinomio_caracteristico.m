function [c] = coeficientes_polinomio_caracteristico(A)
%COEFICIENTES_POLINOMIO_CARACTERISTICO: Função que retorna os coeficientes
%do polinômio característico associado a matriz A.
% Entrada:
%   A: Matriz A de ordem nxn
% Saída:
%   c: Vetor de ordem (n+1)x1 que contém os coeficientes do polinômio
%       característico. Os elementos em c estão associados ordenadamente
%       aos termos de maior grau para o termo de menor grau do polinômio.
% Exemplo:
%   [c] = coeficientes_polinomio_caracteristico([-3,1,-1;-2,5,-1;-6,7,-8])
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

% Verifica se A é uma matriz quadrada
if m == n
    % Encontra os coeficientes do polinômio característico
    c = poly(A);
    % Retorna os coeficientes considerando o determinante de (A - autoval.*I)
    c = -c;
else
    fprintf('A matriz não é quadrada!!!\n');
    c = [];
end

end
