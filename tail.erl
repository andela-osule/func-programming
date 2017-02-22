-module(tail).
-export([fib/1, fac/1, perfect/1]).

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

% counting up to N, S is the sum of divisors
% a perfect number is one whose sum of divisors adds up to it.
perfect(N, N, S) ->
  N == S;
perfect(N, M, S)  when N rem M == 0 ->
  perfect(N, M+1, S + M);
perfect(N, M, S) ->
  perfect(N, M+1, S).

perfect(N) ->
  perfect(N, 1, 0).