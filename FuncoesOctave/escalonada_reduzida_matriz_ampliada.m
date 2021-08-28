function [A,E] = escalonada_reduzida_matriz_ampliada(C,B)
% ESCALONADA_REDUZIDA_MATRIZ_AMPLIADA: Função que retorna a matriza ampliada
% e a forma escalonada reduzida associada.
% Entrada: 
%   C: Matriz dos coeficientes de ordem mxn.
%   B: Matriz dos termos independentes de ordem mx1.
% Saída:
%   A: Matriz ampliada de ordem mx(n+1).
%   E: Matriz na forma escalonada reduzida equivalente a A.
% Exemplo:
%   [A,E] = escalonada_reduzida_matriz_ampliada([3,2,-5;2,-4,-2;1,-2,-3],[8;-4;-4])
%==========================================================================
% Importante: O uso dessa função para encontrar a forma escalonada reduzida possui um
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

% Calcula a ordem da matriz C
[m_C,n_C] = size(C);

% Calcula a ordem da matriz B
[m_B,n_B] = size(B);

% Verifica se o número de linhas de C é igual ao número de linhas de B
if m_C == m_B
    % Identifica a matriz ampliada associadao ao sitema linear
    A = [C,B];
    % Determina o posto de A
    pA = rank(A);
    % Encontra a forma escalonada reduzida associada a matriz A
    E = rref(A);  
    % Verifica se pode ter ocorrido erro com o uso de rref
    m_absE = rank(E);
    % Verifica se o número de linhas de não nulas de E é diferente de pA
    if m_absE ~= pA
        fprintf('Possivel erro associado a tolerancia de rref()!\n');
        E = [];
    end 
else
    fprintf('Verifique as ordens as matrizes!!!\n')
    A = [];
    E = [];
end
