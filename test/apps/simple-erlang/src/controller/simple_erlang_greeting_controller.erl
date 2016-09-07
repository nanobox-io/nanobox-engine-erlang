-module(simple_erlang_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
    {output, "Hello World!"}.