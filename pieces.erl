-module(pieces).
-export([pieces/1]).

% maximum number of pieces into which you can cut a piece of paper with N cuts.

pieces(N) when N==0 -> 1;
pieces(N) -> N + pieces(N-1).
