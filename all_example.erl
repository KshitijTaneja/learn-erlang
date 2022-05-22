%%example of how to use lists:all bif(built in function)%%

-module(all_example).


-export([use_pred/1]).


use_pred(L)->
    lists:all(fun(Elem)-> 
        Elem rem 2 ==0
end,L).