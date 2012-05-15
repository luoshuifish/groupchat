%% @author Mochi Media <dev@mochimedia.com>
%% @copyright groupchat Mochi Media <dev@mochimedia.com>

%% @doc Callbacks for the groupchat application.

-module(groupchat_app).
-author("Mochi Media <dev@mochimedia.com>").

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for groupchat.
start(_Type, _StartArgs) ->
    groupchat_deps:ensure(),
    groupchat_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for groupchat.
stop(_State) ->
    ok.
