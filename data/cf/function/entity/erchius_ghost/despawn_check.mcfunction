
tag @s add action.despawncheck

#conditions
execute if entity @s[tag=action.despawn_cooldown] if data entity @s Passengers[0].AngryAt run tag @s remove action.despawn_cooldown
execute if entity @s[tag=!action.despawn_cooldown] unless data entity @s Passengers[0].AngryAt run scoreboard players set erchius_ghost.despawn temp 1
$execute as $(entity) at @s unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{location:{dimension:"cf:moon"}}} run scoreboard players set erchius_ghost.despawn temp 1
$execute at $(entity) as @n[type=allay,tag=!action.despawning,tag=type.erchius_ghost,tag=target.$(entity)] unless entity @s[tag=action.despawncheck] run scoreboard players set erchius_ghost.despawn temp 1

#effects
execute if score erchius_ghost.despawn temp matches 1 run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{"cf:entity/erchius_ghost/despawn":1}}}
execute if score erchius_ghost.despawn temp matches 1 run tag @s add action.despawning

#clean up
tag @s remove action.despawncheck
scoreboard players reset erchius_ghost.despawn temp