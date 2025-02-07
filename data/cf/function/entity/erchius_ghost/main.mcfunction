# called every 20 ticks from a custom enchantment

# check if this entity should despawn
tag @s add action.despawncheck
execute at @p as @n[type=allay,tag=!action.despawning,tag=type.erchius_ghost] unless entity @s[tag=action.despawncheck] run scoreboard players set erchius_ghost.despawn temp 1
execute if score erchius_ghost.despawn temp matches 1 run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"cf:entity/erchius_ghost/despawn":1}}}
execute if score erchius_ghost.despawn temp matches 1 run tag @s add action.despawning

# clearn the entity's inventory
data remove entity @s Inventory[]

# set the entities attributes based on the player's inventory
execute store result score erchius_ghost.player_fuel_count temp if items entity @p[distance=0..] container.* quartz
execute if score erchius_ghost.player_fuel_count temp matches 1.. on passengers run attribute @s minecraft:follow_range base set 1000
execute if score erchius_ghost.player_fuel_count temp matches 0 on passengers run attribute @s minecraft:follow_range base set 0
execute store result storage cf:temp erchius_ghost.speed float 0.0001 run scoreboard players get erchius_ghost.player_fuel_count temp

function cf:entity/erchius_ghost/set_attributes with storage cf:temp erchius_ghost

# reset temporary values
data remove storage cf:temp erchius_ghost
scoreboard players reset erchius_ghost.player_fuel_count temp
scoreboard players reset erchius_ghost.despawn temp
tag @s remove action.despawncheck