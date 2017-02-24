-module(assignment).
-export([perimeter/1, area/1, enclose/1, bits/1]).

perimeter({circle, R}) -> % circle with given radius
  2 * math:pi() * R;
perimeter({rectangle, L, B}) -> % rectangle
  2 * (L + B);
perimeter({square, L}) -> % square
  4 * L;
perimeter({triangle, A, B, C}) -> % 3-sided triangle
  A + B + C;
perimeter({triangle, A}) -> % equilateral triangle
  perimeter({triangle, A, A, A});
perimeter({triangle, B, H}) -> % right-angled triangle
  perimeter({triangle, B, H, math:sqrt(B*B + H*H)});
perimeter(SHAPE) ->
  io:format("~p not implemented ~n", [element(1, SHAPE)]).

area({circle, R}) -> % circle with given radius
  math:pi() * R * R;
area({triangle, A, B, C}) -> % 3-sided triangle
  S = (A + B + C) / 2,
  math:sqrt(S*(S-A)*(S-B)*(S-C));
area({triangle, A}) -> % equilateral triangle
  area({triangle, A, A, A}); % reuse function for 3-sided triangle
area({triangle, B, H}) -> % right-angled triangle
  1/2 * B * H;
area(SHAPE) ->
  io:format("~p not implemented ~n", [element(1, SHAPE)]).


enclose({circle, R}) -> % circle with given radius
  {rectangle, 2*R, 2*R};
enclose({triangle, B, H}) -> % right-angled triangle
  {rectangle, B, H};
enclose({square, L}) -> % square
  {rectangle, L, L};
enclose({rectangle, L, B}) -> % rectangle
  {rectangle, L, B};
enclose({SHAPE}) ->
  io:format("~p not implemented ~n", [element(1, SHAPE)]).



bits(0, C)->
  C; % Match case when number is zero & accumulator, return the accumulator
bits(N, C) ->
  bits(N div 2, C+ (N rem 2)). % Use the result of integer division by 2 and sum the modulo and the accumulator
bits(N) when N >= 0 ->
  bits(N, 0). % Initialize the accumulator to zero


