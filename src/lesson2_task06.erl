-module(lesson2_task06).
-export([is_palindrome/1]).

-import(lesson2_task05, [reverse/1]).

is_palindrome([_T|_H] = L) ->
    is_palindrome(L, reverse(L)).

is_palindrome([H1|T2], [H1|T2]) ->
    true;
is_palindrome([_|_], [_|_]) ->
    false.