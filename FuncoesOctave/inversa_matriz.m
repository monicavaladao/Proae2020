function [detA,invA] = inversa_matriz(A)
% INVERSA_MATRIZ: Fun��o que calcula a inversa da matriz A, caso exista.
% Entrada:
%   %   A: Matriz A de ordem nxn.
% Sa�da:
%   detA: Determinante da matriz A.
%   invA:
%       Matriz inversa de A de ordem nxn, caso exista.
%       [] se A n�o possui inversa.
% Exemplo:
%   [detA,invA] = inversa_matriz([2 3 -2;1 4 8;7 5 3])
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
    % Calcula o determinate da matriz A
    detA = det(A);  

    % Devido a erros num�ricos n�o � aconselh�vel usar o determinante para verificar
    % se uma matriz quadrada A possui inversa. Para essa finalizade deve-se verificar
    % o condicionamento da matriz em quest�o. Nesse sentido, usa-se aqui a fun��o
    % inv(), a qual retorna um warning no caso de A n�o ser bem condicionada.
    
    % Limpa, caso exista, o �ltimo lastwarn retornado
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
      fprintf('A matriz n�o possui inversa!!!\n');
      invA = [];
    end      

%    if detA ~= 0 
%        % Calcula a inversa da matriz A
%        invA = inv(A);
%    else
%        fprintf('A matriz n�o possui inversa!!!');
%        invA = [];
%    end

else
    fprintf('A matriz n�o � quadrada!!!\n');
    detA = [];
    invA = [];
end


end
