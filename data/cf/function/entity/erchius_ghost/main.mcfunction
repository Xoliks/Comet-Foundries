# called every 20 ticks from a custom enchantment

# get this allay's target UUID and distance to target
execute on passengers run function cf:library/uuid/generate_uuid_from_path {path:"AngryAt", output:"cf:temp erchius_ghost.entity"}
execute store result score erchius_ghost.distance_to_target temp run function cf:library/distance/get_distance_to_entity with storage cf:temp erchius_ghost

# check if the entity should despawn
function cf:entity/erchius_ghost/despawn_check with storage cf:temp erchius_ghost

# clear the entity's inventory
data remove entity @s Inventory[]

# set speed
execute store result storage cf:temp erchius_ghost.speed float 0.0001 run scoreboard players get erchius_ghost.player_fuel_count temp 
function cf:entity/erchius_ghost/set_attributes with storage cf:temp erchius_ghost

# reset temporary values
data remove storage cf:temp erchius_ghost
scoreboard players reset erchius_ghost.player_fuel_count temp
scoreboard players reset erchius_ghost.distance_to_target temp
