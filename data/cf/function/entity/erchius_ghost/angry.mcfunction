# called every 200 ticks from a custom enchantment

execute store result storage cf:temp erchius_ghost.follow_range float 0.1 run scoreboard players get .player_erchius_count temp

function cf:entity/erchius_ghost/set_attributes with storage cf:temp erchius_ghost

data remove storage cf:temp erchius_ghost
scoreboard players reset .player_erchius_count temp