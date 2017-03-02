-module(ibegin).
-export([take/2, take2/2, take3/2]).

% Specification of the type of function
-spec take(integer(), [T]) -> [T].

% string is a list
take(0, _Xs) ->
  [];
take(_N, []) ->
  [];
take(N, [X|Xs]) when N>0 ->
  [X|take(N-1, Xs)].

% re-use split from lists.erl
take2(N, Xs) ->
  {Front, _Back} = lists:split(N, Xs),
  Front.

% modify definition of split in lists.erl to make a take
take3(N, List) ->
  take3(N, List, []).
take3(0, _L, R) ->
  lists:reverse(R, []);
take3(N, [H|T], R) ->
  take3(N-1, T, [H|R]);
take3(_, [], R) ->
  lists:reverse(R, []).