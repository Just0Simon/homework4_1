-module(lesson2_task11).
-export([encode_modified/1]).

-import(lesson2_task05, [reverse/1]).

encode_modified([])->
    "You input arrays is empty. Here is nothing to encode.";
encode_modified([H|T])->
    encode_modified(T, H, 1, []).

encode_modified([], V, 1, Acc)->
    reverse([V|Acc]);
encode_modified([], V, N, Acc)->
    reverse([{N, V}|Acc]);
encode_modified([H|T], H, N, Acc)->
    encode_modified(T, H, N + 1, Acc);
encode_modified([H|T], V, 1, Acc)->
    encode_modified(T, H, 1, [V|Acc]);
encode_modified([H|T], V, N, Acc)->
    encode_modified(T, H, 1, [{N, V}|Acc]).