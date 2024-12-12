-module(lesson2_task02).
-export([but_last/1]).

but_last([_, _] = L) ->
    L;
but_last([_H | T]) ->
    but_last(T).