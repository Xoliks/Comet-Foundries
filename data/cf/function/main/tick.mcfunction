execute as @e[type=!player,predicate=cf:entity/ticking_entity,tag=!dont_tick] at @s rotated as @s run function cf:entity/tick
execute as @a at @s rotated as @s run function cf:player/tick