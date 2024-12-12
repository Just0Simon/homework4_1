-module(lesson2_task10).
-export([encode/1]).

-import(lesson2_task05, [reverse/1]).

encode([])->
    "You input arrays is empty. Here is nothing to encode.";
encode([H|T])->
    encode(T, H, 1, []).

encode([], H, N, Acc)->
    reverse([{N, H}|Acc]);
encode([H|T], H, N, Acc)->
    encode(T, H, N + 1, Acc);
encode([H|T], V, N, Acc)->
    encode(T, H, 1, [{N, V}|Acc]).