-module(swapi).

%% API
-export([species/1, 
         vehicles/1, 
         films/1, 
         people/1, 
         starships/1,
         planets/1]).


-export([decode/2]). % used by jsonrec

-define(BASE_URL, "http://swapi.co/api/").
-define(HTTP_OK, {"HTTP/1.1", 200, "OK"}).

-include("swapi.hrl").
-include_lib("jsonrec/include/jsonrec.hrl").

%% ==================================================================
%% API
%% ==================================================================

-spec species(Which) -> {ok, #species{}} when Which :: integer().
species(Which) -> get_by_type(species, Which).

-spec vehicles(Which) -> {ok, #vehicles{}} when Which :: integer().
vehicles(Which) -> get_by_type(vehicles, Which).

-spec films(Which) -> {ok, #films{}} when Which :: integer().
films(Which) -> get_by_type(films, Which).

-spec people(Which) -> {ok, #people{}} when Which :: integer().
people(Which) -> get_by_type(people, Which).

-spec starships(Which) -> {ok, #starships{}} when Which :: integer().
starships(Which) -> get_by_type(starships, Which).

-spec planets(Which) -> {ok, #planets{}} when Which :: integer().
planets(Which) -> get_by_type(planets, Which).


%% ==================================================================
%% Internals
%% ==================================================================

-type astro_atom() :: people | films | planets | 
                      species | starships | vehicles.

-spec get_by_type(Type, Which) -> {ok, Record} 
             when Type   :: astro_atom(),
                  Which  :: integer(),
                  Record :: #species{} | 
                            #people{} |
                            #planets{} | 
                            #species{} |
                            #starships{} |
                            #vehicles{} |
                            #films{}.
get_by_type(Type, Which) ->
    Url = construct_url(make_resource(Type, Which)),
    Bin = get_request(Url),
    decode(Bin, Type).

-spec get_request(Url) -> Binary :: binary() when Url :: string().
get_request(Url) ->
    case httpc:request(get, {Url, []}, [], [{body_format, binary}]) of
        {ok, {?HTTP_OK, _RespHeaders, ContentBin}} ->
            ContentBin;
        {error, _} = R ->
            io:format("Error: ~p", [R])
    end.


%% ==================================================================
%% Helpers
%% ==================================================================

construct_url(Path) -> ?BASE_URL ++ Path.

-spec make_resource(Type, Arg) -> string() 
               when Type :: astro_atom(),
                    Arg  :: integer().
make_resource(Type, []) ->
    resource_to_string(Type) ++ "/";
make_resource(Type, Arg) when is_integer(Arg) ->
    resource_to_string(Type) ++ "/" ++ integer_to_list(Arg) ++ "/";
make_resource(Type, _) ->
    resource_to_string(Type) ++ "/schema/".

resource_to_string(people)    -> "people";
resource_to_string(films)     -> "films";
resource_to_string(starships) -> "starships";
resource_to_string(vehicles)  -> "vehicles";
resource_to_string(species)   -> "species";
resource_to_string(planets)   -> "planets";
resource_to_string(_)         -> "".

-spec decode(Bin, Type) -> {ok, term()} when Bin  :: binary(),
                                             Type :: astro_atom().
decode(Bin, root)      -> ?decode_gen(#root{}, Bin);
decode(Bin, planets)   -> ?decode_gen(#planets{}, Bin);
decode(Bin, people)    -> ?decode_gen(#people{}, Bin);
decode(Bin, species)   -> ?decode_gen(#species{}, Bin);
decode(Bin, films)     -> ?decode_gen(#films{}, Bin);
decode(Bin, starships) -> ?decode_gen(#starships{}, Bin);
decode(Bin, vehicles)  -> ?decode_gen(#vehicles{}, Bin).

