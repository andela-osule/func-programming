-module(factorial).
-export([fac/1]).

% Using direct recursion
fac(0) ->
  1;
fac(N) when N>0->
  fac(N-1)*N.