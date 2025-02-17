data merge storage cf:temp {uuid_lib: {0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0,a:0,b:0,c:0,d:0,e:0,f:0}}

data modify storage cf:temp uuid_lib.in set from entity @s UUID
execute store result score uuid_lib.in.0 temp run data get storage cf:temp uuid_lib.in[0]
execute store result score uuid_lib.in.1 temp run data get storage cf:temp uuid_lib.in[1]
execute store result score uuid_lib.in.2 temp run data get storage cf:temp uuid_lib.in[2]
execute store result score uuid_lib.in.3 temp run data get storage cf:temp uuid_lib.in[3]

execute store result score uuid_lib.0 temp run scoreboard players operation uuid_lib.1 temp = uuid_lib.in.0 temp
execute store result storage cf:temp uuid_lib.0 int 1 run scoreboard players operation uuid_lib.0 temp %= 256 int
execute store result score uuid_lib.2 temp run scoreboard players operation uuid_lib.1 temp /= 256 int
execute store result storage cf:temp uuid_lib.1 int 1 run scoreboard players operation uuid_lib.1 temp %= 256 int
execute store result score uuid_lib.3 temp run scoreboard players operation uuid_lib.2 temp /= 256 int
execute store result storage cf:temp uuid_lib.2 int 1 run scoreboard players operation uuid_lib.2 temp %= 256 int
execute store result storage cf:temp uuid_lib.3 int 1 run scoreboard players operation uuid_lib.3 temp /= 256 int

execute store result score uuid_lib.0 temp run scoreboard players operation uuid_lib.1 temp = uuid_lib.in.1 temp
execute store result storage cf:temp uuid_lib.4 int 1 run scoreboard players operation uuid_lib.0 temp %= 256 int
execute store result score uuid_lib.2 temp run scoreboard players operation uuid_lib.1 temp /= 256 int
execute store result storage cf:temp uuid_lib.5 int 1 run scoreboard players operation uuid_lib.1 temp %= 256 int
execute store result score uuid_lib.3 temp run scoreboard players operation uuid_lib.2 temp /= 256 int
execute store result storage cf:temp uuid_lib.6 int 1 run scoreboard players operation uuid_lib.2 temp %= 256 int
execute store result storage cf:temp uuid_lib.7 int 1 run scoreboard players operation uuid_lib.3 temp /= 256 int

execute store result score uuid_lib.0 temp run scoreboard players operation uuid_lib.1 temp = uuid_lib.in.2 temp
execute store result storage cf:temp uuid_lib.8 int 1 run scoreboard players operation uuid_lib.0 temp %= 256 int
execute store result score uuid_lib.2 temp run scoreboard players operation uuid_lib.1 temp /= 256 int
execute store result storage cf:temp uuid_lib.9 int 1 run scoreboard players operation uuid_lib.1 temp %= 256 int
execute store result score uuid_lib.3 temp run scoreboard players operation uuid_lib.2 temp /= 256 int
execute store result storage cf:temp uuid_lib.a int 1 run scoreboard players operation uuid_lib.2 temp %= 256 int
execute store result storage cf:temp uuid_lib.b int 1 run scoreboard players operation uuid_lib.3 temp /= 256 int

execute store result score uuid_lib.0 temp run scoreboard players operation uuid_lib.1 temp = uuid_lib.in.3 temp
execute store result storage cf:temp uuid_lib.c int 1 run scoreboard players operation uuid_lib.0 temp %= 256 int
execute store result score uuid_lib.2 temp run scoreboard players operation uuid_lib.1 temp /= 256 int
execute store result storage cf:temp uuid_lib.d int 1 run scoreboard players operation uuid_lib.1 temp %= 256 int
execute store result score uuid_lib.3 temp run scoreboard players operation uuid_lib.2 temp /= 256 int
execute store result storage cf:temp uuid_lib.e int 1 run scoreboard players operation uuid_lib.2 temp %= 256 int
execute store result storage cf:temp uuid_lib.f int 1 run scoreboard players operation uuid_lib.3 temp /= 256 int

function cf:library/uuid/subroutine/get_hexes with storage cf:temp uuid_lib
function cf:library/uuid/subroutine/concat_uuid with storage cf:temp uuid_lib

$data modify storage $(output) set from storage cf:temp uuid_lib.out
data remove storage cf:temp uuid_lib
scoreboard players reset uuid_lib.in.0 temp 
scoreboard players reset uuid_lib.in.1 temp 
scoreboard players reset uuid_lib.in.2 temp 
scoreboard players reset uuid_lib.in.3 temp 
scoreboard players reset uuid_lib.0 temp 
scoreboard players reset uuid_lib.1 temp 
scoreboard players reset uuid_lib.2 temp 
scoreboard players reset uuid_lib.3 temp 