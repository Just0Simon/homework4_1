-module(lesson2_task04).
-export([len/1]).

% Did it on purpose for task7
len([_H|T]) ->
    len(T, 1).

len([_H|[]], N) ->
    N + 1;
len([_H|T], N) ->
    len(T, N + 1).