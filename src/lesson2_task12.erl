-module(lesson2_task12).
-export([decode_modified/1]).

-import(lesson2_task05, [reverse/1]).

decode_modified([])->
    "You input arrays is empty. Here is nothing to decode.";
decode_modified([{N, V}|T])->
    decode_modified(T, V, N - 1, [V]);
decode_modified([H|T])->
    decode_modified(T, H, 0, [H]).

decode_modified([], _V, 0, Acc)->
    reverse(Acc);
decode_modified([{N, V}|T], _OldV, 0, Acc)->
    decode_modified(T, V, N - 1, [V|Acc]);
decode_modified([H|T], _V, 0, Acc)->
    decode_modified(T, H, 0, [H|Acc]);
decode_modified([_H|_T] = L, V, N, Acc)->
    decode_modified(L, V, N - 1, [V|Acc]).