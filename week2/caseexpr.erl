-module(caseexpr).
-export([f/0, g/0, h/0]).

f() ->
  case [2,3,4] of
    [X,Y|_] -> X+Y;
    [S] -> S;
    _ -> 0
  end.

g() ->
  case [6] of
    [X,Y|_] -> X+Y;
    [S] -> S;
    _ -> 0
  end.

h() ->
  case [] of
    [X,Y|_] -> X+Y;
    [S] -> S;
    _ -> 0
  end.