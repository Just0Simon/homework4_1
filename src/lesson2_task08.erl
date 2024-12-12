-module(lesson2_task08).
-export([compress/1]).

-import(lesson2_task05, [reverse/1]).

compress([]) ->
    "Your input arrays is empty";
compress([H|T]) ->
    compress(T, H, [H]).

compress([], _, Acc) ->
    reverse(Acc);
compress([H|T], H, Acc) ->
    compress(T, H, Acc);
compress([H|T], _V, Acc) ->
    compress(T, H, [H|Acc]).