-module(lesson2_task14).
-export([duplicate/1]).

-import(lesson2_task05, [reverse/1]).

duplicate([])->
    "You input arrays is empty. Here is nothing to duplicate.";
duplicate([H|T])->
    duplicate(T, [H, H]).


duplicate([], Acc)->
    reverse(Acc);
duplicate([H|T], Acc)->
    duplicate(T, duplicate(H, [H|Acc]));
duplicate(V, Acc) ->
    [V|Acc].