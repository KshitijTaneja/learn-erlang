-module(a).

-export([find/1]).

find([])->
    0;

find(L)->
    find(L,3).

find(L,1)->
    [H|T]=L,
    H;
find(L,Count)->
    [H|T]=L,
    find(T,Count-1).





    