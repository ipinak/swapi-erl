# swapi-erl
Erlang library for swapi.co http://swapi.co

# Usage

   git clone https://github.com/ipinak/swapi-erl.git
   rebar co
   rebar shell
   
When you start it on an Erlang shell you will need `inets`, so type the following:

    1> inets:start().
    ok
    2> l(swapi).
    abcast
    3> swapi:planets(1).
    {ok,{planets,"arid","2014-12-09T13:50:49.641000Z","10465",
                 "2014-12-21T20:48:04.175778Z",
                 ["http://swapi.co/api/films/1/",
                  "http://swapi.co/api/films/3/",
                  "http://swapi.co/api/films/4/",
                  "http://swapi.co/api/films/5/",
                  "http://swapi.co/api/films/6/"],
                  "1 standard","Tatooine","304","200000",
                 ["http://swapi.co/api/people/1/",
                  "http://swapi.co/api/people/2/",
                  "http://swapi.co/api/people/4/",
                  "http://swapi.co/api/people/6/",
                  "http://swapi.co/api/people/7/",
                  "http://swapi.co/api/people/8/",
                  "http://swapi.co/api/people/9/",
                  "http://swapi.co/api/people/11/",
                  "http://swapi.co/api/people/43/",
                  "http://swapi.co/api/people/62/"],
                  "23","1","desert","http://swapi.co/api/planets/1/"}}


# License

The License (MIT)

Copyright (c) 2015 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


