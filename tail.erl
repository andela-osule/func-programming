-module(tail).
-export([fib/1, fac/1]).

% P is previous value
% C  is current value 

fib(0, P, _C) ->
  P;
fib(N, P, C) ->
  fib(N-1, C, P + C).

fib(N) ->
fib(N, 0, 1).


fac(N) ->
  fac(N, 1).

fac(0, P) ->
  P;
fac(N, P) ->
  fac(N-1, N*P).