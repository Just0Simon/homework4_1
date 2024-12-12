-module(lesson2_task05).
-export([reverse/1]).

reverse([_N] = L) ->
    L;
reverse([]) ->
    [];
reverse([H|T]) ->
    reverse(T, [H]).

reverse([], [_H|_T] = L) ->
    L;
reverse([H|T], [_RH|_RT] = R) ->
    reverse(T, [H|R]).