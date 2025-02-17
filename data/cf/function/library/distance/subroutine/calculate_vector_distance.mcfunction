execute if score distance.dy temp < distance.dx temp run scoreboard players operation distance.dy temp >< distance.dx distance
execute if score distance.dy temp < distance.dx temp run scoreboard players operation distance.dy temp >< distance.dz distance

execute as 0-0-0-0-1 run function cf:library/distance/subroutine/tp
execute store result storage cf:temp distance.input.y int 1 run scoreboard players get distance.dy temp

scoreboard players reset distance.dx temp
scoreboard players reset distance.dy temp
scoreboard players reset distance.dz temp

return run function cf:library/distance/subroutine/sine with storage cf:temp distance.input