%%% @author Ioannis Pinakoulakis <>
%%% @copyright (C) 2015, Ioannis Pinakoulakis
%%% @doc
%%%
%%% @end
%%% Created :  9 Jan 2015 by Ioannis Pinakoulakis <>
-record(people, {birth_year :: string(),
                 eye_color  :: string(),
                 films      :: list(string()),
                 gender     :: string(),
                 hair_color :: string(),
                 height     :: string(),
                 homeworld  :: string(),
                 mass       :: string(),
                 name       :: string(),
                 skin_color :: string(),
                 created    :: string(),
                 edited     :: string(),
                 species    :: list(string()),
                 starships  :: list(string()),
                 url        :: string(),
                 vehicles   :: list(string())
}).

-record(films, {characters    :: list(string()),
                created       :: string(),
                director      :: string(),
                edited        :: string(),
                episode_id    :: integer(),
                opening_crawl :: string(),
                planets       :: list(string()),
                producer      :: string(),
                species       :: list(string()),
                starships     :: list(string()),
                title         :: string(),
                url           :: string(),
                vehicles      :: list(string())
}).
          
-record(starships, {'MGLT'                 :: string(),
                    cargo_capacity         :: string(),
                    consumables            :: string(),
                    cost_in_credits        :: string(),
                    created                :: string(),
                    crew                   :: string(),
                    edited                 :: string(),
                    hyperdrive_rating      :: string(),
                    length                 :: string(),
                    manufacturer           :: string(),
                    max_atmosphering_speed :: string(),
                    model                  :: string(),
                    name                   :: string(),
                    passengers             :: string(),
                    films                  :: list(string()),
                    pilots                 :: list(string()),
                    starship_class         :: string(),
                    url                    :: string()
}).

-record(vehicles, {cargo_capacity         :: string(),
                   consumables            :: string(),
                   cost_in_credits        :: string(),
                   created                :: string(),
                   crew                   :: string(),
                   edited                 :: string(),
                   length                 :: string(),
                   manufacturer           :: string(),
                   max_atmosphering_speed :: string(),
                   model                  :: string(),
                   name                   :: string(),
                   passengers             :: string(),
                   pilots                 :: list(string()),
                   films                  :: list(string()),
                   url                    :: string(),
                   vehicle_class          :: string()
}).

-record(species, {average_height   :: string(),
                  average_lifespan :: string(),
                  classification   :: string(),
                  created          :: string(),
                  designation      :: string(),
                  edited           :: string(),
                  eye_colors       :: string(),
                  hair_colors      :: string(),
                  homeworld        :: string(),
                  language         :: string(),
                  name             :: string(),
                  people           :: list(string()),
                  films            :: list(string()),
                  skin_colors      :: string(),
                  url              :: string()
}).

-record(planets, {climate         :: string(),
                  created         :: string(),
                  diameter        :: string(),
                  edited          :: string(),
                  films           :: list(string()),
                  gravity         :: string(),
                  name            :: string(),
                  orbital_period  :: string(),
                  population      :: string(),
                  residents       :: list(string()),
                  rotation_period :: string(),
                  surface_water   :: string(),
                  terrain         :: string(),
                  url             :: string()
}).

-record(root, {films     :: #films{}, 
               people    :: #people{}, 
               planets   :: #planets{}, 
               species   :: #species{}, 
               starships :: #starships{}, 
               vehicles  :: #vehicles{}
}).
