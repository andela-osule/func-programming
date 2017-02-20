-module(second).
-export([area/2, calcHyp/2, perimeter/2]).


area(Opp, Adj) ->
  1/2 * Opp * Adj.

calcHyp(Opp, Adj) ->
  math:sqrt(math:pow(Opp, 2) + math:pow(Adj, 2)).

perimeter(Opp, Adj) ->
  Hyp = calcHyp(Opp, Adj),
  Hyp+Opp+Adj.
