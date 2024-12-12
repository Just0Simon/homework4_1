-module(lesson2_task13).
-export([decode/1]).

-import(lesson2_task05, [reverse/1]).

decode([])->
    "You input arrays is empty. Here is nothing to decode.";
decode([{N, V}|T])->
    decode(T, V, N - 1, [V]);
decode([H|T])->
    decode(T, H, 0, [H]).

decode([], _V, 0, Acc)->
    reverse(Acc);
decode([{N, V}|T], _OldV, 0, Acc)->
    decode(T, V, N - 1, [V|Acc]);
decode([_H|_T] = L, V, N, Acc)->
    decode(L, V, N - 1, [V|Acc]).