function [M_autvet,M_autoval] = autovetores_matriz(A,autoval)
% AUTOVALORS_MATRIZ: Função que retorna a forma geral dos autovetores da
% matriz A associados ao autovalor autoval.
% Entrada:
%   A: Matriz de ordem nxn.
%   autoval: Autovalor da matriz A.
% Saída:
%   M_autovet: Matriz na forma escalonada reduzida associada ao sistema
%   linear homogêneo (A - autoval.*I)v = o. A partir de M_autovet obtém-se
%   a forma geral dos autovetores da  matriz A associados ao autovalor autoval.
%   M_autoval: Autovalor autoval.
% Exemplo:
%   [M_autvet,M_autoval] = autovetores_matriz([-3,1,-1;-7,5,-1;-6,6,-2],-2)
%   [M_autvet,M_autoval] = autovetores_matriz([1 7 3; 2 9 12; 5 22 7],25.5548)
%                Esse é um exemplo que ocorre erro numérico ao usar a
%                função rref().
%==========================================================================
%Importante: O uso dessa função para encontrar a forma geral dos
%autovalores asssociados ao autovalor autval tem um caráter mais acadêmico.
%Essa estrutura permite ao aluno perceber que dado um autovalor de A
%obtém-se a forma geral dos autovalores ao observar a forma escalonada
%reduzida do sistema (A - autoval.*I)v = o. Entretanto, com uso da função
%rref()podem ocorrer erros numérios. Dependendo da tolerância tol
%estabelecida para rref(), tem-se resultados diferentes. Na prática, usa-se
%a função eig() para determinar autovalores e autovetores.
%
%==========================================================================
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

% Verifica a condição para calcular o determinante
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
        fprintf('Possível erro associado a tolerância de rref()!\n');
        fprintf('Nesse caso, será usada a função eig()!\n');
        fprintf('\n\n');
        fprintf('Assim, M_autvet é uma matriz de autovetores de A\n');
        fprintf('e M_autoval é uma matriz cuja diagonal contém os autovalores de A!\n\n');
        % Usa-se a função [V,D] = eig(A)
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
    fprintf('A matriz não é quadrada!!!');
    M_autvet = [];    
end

end