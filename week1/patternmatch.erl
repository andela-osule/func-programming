-module(patternmatch).
-export([maxThree/3, howManyEqual/3, fib/1]).

maxThree(X, Y, Z) ->
  max(
    max(X, Y), 
  Z).

howManyEqual(X, X, X) -> 3;
howManyEqual(X, X, _) -> 2;
howManyEqual(X, _, X) -> 2;
howManyEqual(_, X, X) -> 2;
howManyEqual(_X, _Y, _Z) -> 0.


fibP(0) ->
  {0, 1};
fibP(N) ->
  {P, C} = fibP(N-1),
  {C, P+C}.
fib(N) ->
  {P, _} = fibP(N),
  P.