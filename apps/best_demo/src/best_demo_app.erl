%%%-------------------------------------------------------------------
%% @doc best_demo public API
%% @end
%%%-------------------------------------------------------------------

-module('best_demo_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'best_demo_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
