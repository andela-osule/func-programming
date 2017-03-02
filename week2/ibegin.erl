-module(ibegin).
-export([take/2]).

% Specification of the type of function
-spec take(integer(), [T]) -> [T].

% string is a list
take(0, _Xs) ->
  [];
take(_N, []) ->
  [];
take(N, [X|Xs]) when N>0 ->
  [X|take(N-1, Xs)].