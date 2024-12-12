-module(lesson2_task15).
-export([replicate/2]).

-import(lesson2_task05, [reverse/1]).


replicate([H|T], N)->
    replicate(T, N, replicate(H, N, [])).

replicate([], _N, Acc)->
    reverse(Acc);
replicate([H|T], N, Acc)->
    replicate(T, N, replicate(H, N, Acc));
replicate(_V, 0, Acc)->
    Acc;
replicate(V, T, Acc)->
    replicate(V, T - 1, [V|Acc]).