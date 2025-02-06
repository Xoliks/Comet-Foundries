# called every 200 ticks from a custom enchantment

data remove entity @s Inventory[]
execute store result score .player_erchius_count temp if items entity @p[distance=0..] container.* quartz

execute store result storage cf:temp erchius_ghost.follow_range float 0.25 run scoreboard players get .player_erchius_count temp
execute store result storage cf:temp erchius_ghost.speed float 0.0001 run scoreboard players get .player_erchius_count temp

function cf:entity/erchius_ghost/set_attributes with storage cf:temp erchius_ghost

data remove storage cf:temp erchius_ghost
scoreboard players reset .player_erchius_count temp