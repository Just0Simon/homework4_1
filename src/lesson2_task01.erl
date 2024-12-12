-module(lesson2_task01).
-export([last/1]).

last([H])->
  H;

last([_H|T])->
  last(T).