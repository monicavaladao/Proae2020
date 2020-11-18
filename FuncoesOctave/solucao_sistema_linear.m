function[pA, pC, A, S, E] = solucao_sistema_linear(C,B)
% SOLUCAO_SISTEMA_LINEAR: Fun��o que verifica se o sistema linear possui 
% solu��o. Retorna a solu��o em caso afirmativo para sistema poss�vel e 
% determinado. Retorna a matriz na forma escalonada reduzida associada ao
% sistema linear em quest�o.
% Entrada:
%   C: Matriz dos coeficientes mxn.
%   B: Matriz dos termos indepentendes mx1.
% Sa�da:
%   pA: Posto da matriz ampliada A .
%   pC: Posto da matriz dos coeficientes C.
%   A: Matriz ampliada de ordem mx(n+1).
%   E: 
%       Matriz de ordem mx(nx1) na forma escalonada reduzida equivalente a A
%       [] se ocorre erro associado a rref().   
%   S: 
%       matriz nx1 se Sistema Poss�vel e Determinado.
%       [] se Sistema Imposs�vel.
%       [] se Sistema Poss�vel e Indeterminado. 
%       [] se ocorre erro associado a rref().
%==========================================================================
% Projeto Proae: Elabora��o de Material Did�tico que Empregue o uso de 
%   Software como Suporte para o Aprendizado de �lgebra Linear.
% Membros do Projeto:
%   M�nica Aparecida Cruvinel Valad�o (Coordenadora)
%   Douglas Frederico Guimar�es  Santiago (Vice-Coordenador)
%   Anderson Luiz Pedrosa Porto (Colaborador)
%   Flaviano Luiz Benfica (Bolsista)
%==========================================================================
% Exemplo:
%   [pA, pC, A, S, E] = solucao_sistema_linear([3 2 -5;2 -4 -2;1 -2 -3],[8;-4;-4])
% Calcula a ordem da matriz C
[m_C,n_C] = size(C);
% Calcula a ordem da matriz B
[m_B,n_B] = size(B);
% Verifica se o n�mero de linhas de C � igual ao n�mero de linhas de B
if m_C == m_B
    A = [C,B];
    % Determina o posto de A
    pA = rank(A);
    % Determina o posto de C
    pC = rank(C);
    % Identifica o n�mero de vari�veis
    n = n_C;
    % Verifica se o sitema possui solu��o
    if pA == pC
        if pA == n
            fprintf('Sistema possui �nica solucao\n');
            S = linsolve(C,B);
        else
            fprintf('Sistema possui infinitas solu��es\n');
            S = [];
        end
    else
        fprintf('Sistema n�o possui solu��o\n');
        S = [];
    end
    % Encontra a forma escalonada reduzida associada a matriz A
    E = rref(A);  
    % Verifica se pode ter ocorrido erro com o uso de rref
    m_absE = rank(E);
    if m_absE ~= pA
        fprintf('Poss�vel erro associado a toler�ncia de rref()!\n');
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