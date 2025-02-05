# called every 200 ticks from a custom enchantment

data remove entity @s Inventory[]
execute store result score .player_erchius_count temp if items entity @p[distance=0..] container.* quartz[minecraft:count={max:100000,min:32}]

execute if score .player_erchius_count temp matches 32.. on passengers run return run function cf:entity/erchius_ghost/angry
execute on passengers run function cf:entity/erchius_ghost/calm
scoreboard players reset .player_erchius_count temp