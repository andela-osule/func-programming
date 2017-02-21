-module(patternmatch).
-export([maxThree/3, howManyEqual/3]).

maxThree(X, Y, Z) ->
  max(
    max(X, Y), 
  Z).

howManyEqual(X, X, X) -> 3;
howManyEqual(X, X, _) -> 2;
howManyEqual(X, _, X) -> 2;
howManyEqual(_, X, X) -> 2;
howManyEqual(_X, _Y, _Z) -> 0.