%%% @author Ioannis Pinakoulakis <>
%%% @copyright (C) 2015, Ioannis Pinakoulakis
%%% @doc
%%%
%%% @end
%%% Created :  9 Jan 2015 by Ioannis Pinakoulakis <>

-module(swapi).

-record(root, {films, people, planets, species, starships, vehicles}).

-record(people, {birth_year,
                 eye_color,
                 films,
                 gender,
                 hair_color,
                 height,
                 homeworld,
                 mass,
                 name,
                 skin_color,
                 created,
                 edited,
                 species,
                 starships,
                 url,
                 vehicles}).

-record(films, {characters,
                created,
                director,
                edited,
                episode_id,
                opening_crawl,
                planets,
                producer,
                species,
                starships,
                title,
                url,
                vehicles}).
          
-record(starships, {'MGLT',
                    cargo_capacity,
                    consumables,
                    cost_in_credits,
                    created,
                    crew,
                    edited,
                    hyperdrive_rating,
                    length,
                    manufacturer,
                    max_atmosphering_speed,
                    model,
                    name,
                    passengers,
                    films,
                    pilots,
                    starship_class,
                    url}).

-record(vehicles, {cargo_capacity,
                   consumables,
                   cost_in_credits,
                   created,
                   crew,
                   edited,
                   length,
                   manufacturer,
                   max_atmosphering_speed,
                   model,
                   name,
                   passengers,
                   pilots,
                   films,
                   url,
                   vehicle_class}).

-record(species, {average_height,
                  average_lifespan,
                  classification,
                  created,
                  designation,
                  edited,
                  eye_colors,
                  hair_colors,
                  homeworld,
                  language,
                  name,
                  people,
                  films,
                  skin_colors,
                  url}).

-record(planets, {climate,
                  created,
                  diameter,
                  edited,
                  films,
                  gravity,
                  name,
                  orbital_period,
                  population,
                  residents,
                  rotation_period,
                  surface_water,
                  terrain,
                  url}).
