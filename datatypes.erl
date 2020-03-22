 % hello world program
-module(datatypes). 
-export([showtypes/0]). 

showtypes() -> 
	io:fwrite("~w\n", [42]),
	io:fwrite(this_is_an_atom),
	io:fwrite(1 == 2),
	P = {john,24,{june,25}} , % a tuple
	io:fwrite("~w", [tuple_size(P)]),
	M1 = #{name=>john,age=>25},  % a map
  io:fwrite("~w",[map_size(M1)]),
	L = [10,20,30], % a list
	io:fwrite("~w",[length(L)]).