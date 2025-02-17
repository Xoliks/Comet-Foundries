
data modify storage cf:temp distance.pos set value [0.0d, 0.0d, 0.0d]
execute store result storage cf:temp distance.pos[0] double 1 run scoreboard players get distance.dx temp
execute store result storage cf:temp distance.pos[1] double 1 run scoreboard players get distance.dy temp
execute store result storage cf:temp distance.pos[2] double 1 run scoreboard players get distance.dz temp
data modify entity @s Pos set from storage cf:temp distance.pos

execute at @s facing 0.0 0.0 0.0 run tp @s 0 0 0 0 ~
execute store result storage cf:temp distance.input.t int 1 run data get entity @s Rotation[1] 1000
