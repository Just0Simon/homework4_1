-module(lesson2_task07).
-export([flatten/0, flatten/1]).

-import(lesson2_task05, [reverse/1]).

flatten() ->
    flatten([[1, 2, 3], a, [], [b, [c, d], e]]).

flatten(List) -> flatten(List, []).

flatten([], Acc) ->
    Acc;
flatten([[] | T], Acc) ->
    flatten(T, Acc);
flatten([[H | T1] | T], Acc) ->
    flatten([H | T1], flatten(T, Acc));
flatten([H | T], Acc) ->
    flatten(T, [H | Acc]).