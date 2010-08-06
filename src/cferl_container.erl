%%%
%%% @author David Dossot <david@dossot.net>
%%%
%%% See LICENSE for license information.
%%% Copyright (c) 2010 David Dossot
%%%

-module(cferl_container, [Connection, Containers]).
-author('David Dossot <david@dossot.net>').

-export([size/0, names/0]).

%% FIXME comment!
size() ->
  length(Containers).

%% FIXME comment!
names() ->
  [proplists:get_value(name, C) || C <- Containers].
