
data modify storage cf:temp distance.entity1 set from entity @s Pos
$data modify storage cf:temp distance.entity2 set from entity $(entity) Pos

execute store result score distance.entity1.x temp run data get storage cf:temp distance.entity1[0]
execute store result score distance.entity1.y temp run data get storage cf:temp distance.entity1[1]
execute store result score distance.entity1.z temp run data get storage cf:temp distance.entity1[2]

execute store result score distance.entity2.x temp run data get storage cf:temp distance.entity2[0]
execute store result score distance.entity2.y temp run data get storage cf:temp distance.entity2[1]
execute store result score distance.entity2.z temp run data get storage cf:temp distance.entity2[2]

execute store result score distance.dx temp run scoreboard players operation distance.entity1.x temp -= distance.entity2.x temp
execute store result score distance.dy temp run scoreboard players operation distance.entity1.y temp -= distance.entity2.y temp
execute store result score distance.dz temp run scoreboard players operation distance.entity1.z temp -= distance.entity2.z temp

execute if score distance.dx temp matches ..-1 run scoreboard players operation distance.dx temp *= -1 int
execute if score distance.dy temp matches ..-1 run scoreboard players operation distance.dy temp *= -1 int
execute if score distance.dy temp matches 0 run scoreboard players set distance.dy temp 1
execute if score distance.dz temp matches ..-1 run scoreboard players operation distance.dz temp *= -1 int

scoreboard players reset distance.entity1.x temp
scoreboard players reset distance.entity1.y temp
scoreboard players reset distance.entity1.z temp
scoreboard players reset distance.entity2.x temp
scoreboard players reset distance.entity2.y temp
scoreboard players reset distance.entity2.z temp

return run function cf:library/distance/subroutine/calculate_vector_distance