function[pA, pC, A, S, E] = solucao_sistema_linear(C,B)
% SOLUCAO_SISTEMA_LINEAR: Função que verifica se o sistema linear possui 
% solução. Retorna a solução em caso afirmativo para sistema possível e 
% determinado. Retorna a matriz na forma escalonada reduzida associada ao
% sistema linear em questão.
% Entrada:
%   C: Matriz dos coeficientes mxn.
%   B: Matriz dos termos indepentendes mx1.
% Saída:
%   pA: Posto da matriz ampliada A .
%   pC: Posto da matriz dos coeficientes C.
%   A: Matriz ampliada de ordem mx(n+1).
%   E: 
%       Matriz de ordem mx(nx1) na forma escalonada reduzida equivalente a A
%       [] se ocorre erro associado a rref().   
%   S: 
%       matriz nx1 se Sistema Possível e Determinado.
%       [] se Sistema Impossível.
%       [] se Sistema Possível e Indeterminado. 
%       [] se ocorre erro associado a rref().
%==========================================================================
% Projeto Proae: Elaboração de Material Didático que Empregue o uso de 
%   Software como Suporte para o Aprendizado de Álgebra Linear.
% Membros do Projeto:
%   Mônica Aparecida Cruvinel Valadão (Coordenadora)
%   Douglas Frederico Guimarães  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Exemplo:
%   [pA, pC, A, S, E] = solucao_sistema_linear([3 2 -5;2 -4 -2;1 -2 -3],[8;-4;-4])
% Calcula a ordem da matriz C
[m_C,n_C] = size(C);
% Calcula a ordem da matriz B
[m_B,n_B] = size(B);
% Verifica se o número de linhas de C é igual ao número de linhas de B
if m_C == m_B
    A = [C,B];
    % Determina o posto de A
    pA = rank(A);
    % Determina o posto de C
    pC = rank(C);
    % Identifica o número de variáveis
    n = n_C;
    % Verifica se o sitema possui solução
    if pA == pC
        if pA == n
            fprintf('Sistema possui única solucao\n');
            S = linsolve(C,B);
        else
            fprintf('Sistema possui infinitas soluções\n');
            S = [];
        end
    else
        fprintf('Sistema não possui solução\n');
        S = [];
    end
    % Encontra a forma escalonada reduzida associada a matriz A
    E = rref(A);  
    % Verifica se pode ter ocorrido erro com o uso de rref
    m_absE = rank(E);
    if m_absE ~= pA
        fprintf('Possível erro associado a tolerância de rref()!\n');
        E = [];
    end 
else
    fprintf('Verifique as ordens das matrizes!!!\n');
    pA = [];
    pC = [];
    A = [];
    E = [];
    S = [];
end
end