%%%-------------------------------------------------------------------
%% @doc dep_level_1_prometheus public API
%% @end
%%%-------------------------------------------------------------------

-module(dep_level_1_prometheus_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    dep_level_1_prometheus_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
