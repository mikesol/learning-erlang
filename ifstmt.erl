-module(ifstmt).
-export([myif/0]).

myif() ->
  if (1 == 2) ->
    A = "bad",
    io:fwrite(A);
  (1 == 555) -> % multiple statements are possible
    true;
  true ->
    io:fwrite("good\n")
  end,
  Q = if (1 == 1) -> % assignment is possible
    true;
  true ->
    false
  end,
  io:fwrite("~w", [Q]).