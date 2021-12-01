function [M_autvet,M_autoval] = autovetores_matriz(A,autoval)
% AUTOVALORS_MATRIZ: Fun��o que retorna a forma geral dos autovetores da
% matriz A associados ao autovalor autoval.
% Entrada:
%   A: Matriz de ordem nxn.
%   autoval: Autovalor da matriz A.
% Sa�da:
%   M_autovet: Matriz na forma escalonada reduzida associada ao sistema
%   linear homog�neo (A - autoval.*I)v = o. A partir de M_autovet obt�m-se
%   a forma geral dos autovetores da  matriz A associados ao autovalor autoval.
%   M_autoval: Autovalor autoval.
% Exemplo:
%   [M_autvet,M_autoval] = autovetores_matriz([-3,1,-1;-7,5,-1;-6,6,-2],-2)
%   [M_autvet,M_autoval] = autovetores_matriz([1 7 3; 2 9 12; 5 22 7],25.5548)
%                Esse � um exemplo que ocorre erro num�rico ao usar a
%                fun��o rref().
%==========================================================================
%Importante: O uso dessa fun��o para encontrar a forma geral dos
%autovalores asssociados ao autovalor autval tem um car�ter mais acad�mico.
%Essa estrutura permite ao aluno perceber que dado um autovalor de A
%obt�m-se a forma geral dos autovalores ao observar a forma escalonada
%reduzida do sistema (A - autoval.*I)v = o. Entretanto, com uso da fun��o
%rref()podem ocorrer erros num�rios. Dependendo da toler�ncia tol
%estabelecida para rref(), tem-se resultados diferentes. Na pr�tica, usa-se
%a fun��o eig() para determinar autovalores e autovetores.
%
%==========================================================================
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

% Verifica a condi��o para calcular o determinante
if m == n
    % Identifica a matriz idenidade de ordem nxn
    I = eye(n);
    % Identifica a matriz nula de ordem nx1
    O = zeros(n,1);
    % Identifica a matriz (A - autoval.I)
    C = (A - autoval.*I);
    % Identifica a matriz ampliada [M1,O]
    Mamp = [C,O];
    % Encontra a forma escalonada reduzida equivalente a Mamp
    Mamp = rref(Mamp);
    
    % Verifica que se pode ter ocorrido erro com o uso de rref
    if rank(Mamp) == n
        fprintf('\n');
        fprintf('Poss�vel erro associado a toler�ncia de rref()!\n');
        fprintf('Nesse caso, ser� usada a fun��o eig()!\n');
        fprintf('\n\n');
        fprintf('Assim, M_autvet � uma matriz de autovetores de A\n');
        fprintf('e M_autoval � uma matriz cuja diagonal cont�m os autovalores de A!\n\n');
        % Usa-se a fun��o [V,D] = eig(A)
        [V,D] = eig(A);
        M_autvet = V;
        d = diag(D);
        for i = 1:n
          M_autoval(i,i) = d(i);
        end
    else
        %Mamp = sym(Mamp);
        % Retorna M_autvet
        M_autvet = Mamp;
        M_autoval = autoval;
    end
else
    fprintf('A matriz n�o � quadrada!!!');
    M_autvet = [];    
end

end