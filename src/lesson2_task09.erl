-module(lesson2_task09).
-export([pack/1]).

-import(lesson2_task05, [reverse/1]).

pack([])->
    "You input arrays is empty. Here is nothing to pack.";
pack([H|T]) ->
    pack(T, H, [H], []).

pack([], _V, DubAcc, Acc) ->
    reverse([DubAcc|Acc]);
pack([H|T], H, DubAcc, Acc) ->
    pack(T, H, [H|DubAcc], Acc);
pack([H|T], _V, DubAcc, Acc) ->
    pack(T, H, [H], [DubAcc|Acc]).