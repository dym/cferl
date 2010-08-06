Rackspace Cloud Files Erlang Client
===================================

> Version 0.1 - Currently under initial development


Build
-----

cferl relies on [rebar](http://bitbucket.org/basho/rebar/wiki/Home) for its build and dependency management.

Simply run:

    ./rebar get-deps compile eunit

Alternatively, you can run the integration tests:

    ./int_tests

Be sure to have your API key ready before doing so, as they will be needed.

    
Usage
-----

cferl requires that the ssl and ibrowse applications be started prior to using it.

Creating a connection is the first step:

    {ok, CloudFiles} = cferl:connect("your_user_name", "your_api_key").

From there you can interact with file containers:

    {ok, Containers} = CloudFiles:containers(),
    Containers:size(),
    Containers:names().

