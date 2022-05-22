-module(b).


-export([find_length/1]).


find_length([])->
    0;

find_length(L)->
    find_length(L,0).


find_length([],Count)->
    Count;
find_length([_|T],Count)->
    find_length(T,Count+1).


    
    


    