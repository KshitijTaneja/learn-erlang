%%file to send mails using erlang%%

-module(mailer).

-export([send_mail/3]).


send_mail(Subject,Body,Dest)->
    D = string:join(lists:map( fun(Addr) ->
          binary_to_list(Addr) end, 
          
        Dest), 
        " " ),
    S = io_lib:format("~p",[binary_to_list(Subject)]),
    B = io_lib:format("~p",[binary_to_list(Body)]),
    os:cmd("echo " ++ B ++ " |mail -s " ++ S ++ D).
