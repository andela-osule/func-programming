-module(funcsoverlist).
-export([product/1, maximum/1, product2/1, maximum2/1]).

% Tail recursion
product([]) -> 1; % this is 1 because we accumulate by multiply with this
product([X|Xs]) -> product(X, Xs).
product(C, []) -> C;
product(C, [X|Xs]) -> product(C*X, Xs).


maximum([X|Xs]) -> maximum(X, Xs).
maximum(C, []) -> C;
maximum(C, [X|Xs]) -> maximum(max(X, C), Xs).


% Direct recursion
product2([]) -> 1;
product2([X|Xs]) -> X * product(Xs).

maximum2([X]) -> X;
maximum2([X|Xs]) -> max(X, maximum2(Xs)).

