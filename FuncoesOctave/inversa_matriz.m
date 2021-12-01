function [detA,invA] = inversa_matriz(A)
% INVERSA_MATRIZ: Função que calcula a inversa da matriz A, caso exista.
% Entrada:
%   %   A: Matriz A de ordem nxn.
% Saída:
%   detA: Determinante da matriz A.
%   invA:
%       Matriz inversa de A de ordem nxn, caso exista.
%       [] se A não possui inversa.
% Exemplo:
%   [detA,invA] = inversa_matriz([2 3 -2;1 4 8;7 5 3])
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
    % Calcula o determinate da matriz A
    detA = det(A);  

    % Devido a erros numéricos não é aconselhável usar o determinante para verificar
    % se uma matriz quadrada A possui inversa. Para essa finalizade deve-se verificar
    % o condicionamento da matriz em questão. Nesse sentido, usa-se aqui a função
    % inv(), a qual retorna um warning no caso de A não ser bem condicionada.
    
    % Limpa, caso exista, o último lastwarn retornado
    lastwarn('');
    warning('');
    % Tenta calcular a inversa da matriz A
    invA = inv(A);
        
    % Verifica se retornou algum warning
    [msg, msgid] = lastwarn();
    
    fprintf('\n\n');    
    if (isempty(msg))
      invA = invA;
    else
      fprintf('A matriz não possui inversa!!!\n');
      invA = [];
    end      

%    if detA ~= 0 
%        % Calcula a inversa da matriz A
%        invA = inv(A);
%    else
%        fprintf('A matriz não possui inversa!!!');
%        invA = [];
%    end

else
    fprintf('A matriz não é quadrada!!!\n');
    detA = [];
    invA = [];
end


end
