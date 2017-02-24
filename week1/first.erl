-module(first).
-export([double/1, mult/2, triple/1]).
% names and arity (number of arguments a function has)

mult(X, Y) ->
  X*Y.

double(X) ->
  mult(2, X).

triple(X) ->
  mult(3, X).

