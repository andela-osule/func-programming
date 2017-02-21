-module(patternmatch).
-export([maxThree/3, howManyEqual/3]).

maxThree(X, Y, Z) ->
  max(
    max(X, Y), 
  Z).

howManyEqual(X, Y, Z) ->
  if 
    (X == Y) and (Y == Z) -> 3;
    (X == Y) or (Y == Z) -> 2;
    true -> 0
  end.
