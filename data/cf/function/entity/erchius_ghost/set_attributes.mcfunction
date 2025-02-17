$execute store result score erchius_ghost.player_fuel_count temp if items entity $(entity) container.* quartz
execute if score erchius_ghost.player_fuel_count temp matches 32.. on passengers run attribute @s minecraft:follow_range base set 1000
execute if score erchius_ghost.player_fuel_count temp matches 0..31 on passengers run attribute @s minecraft:follow_range base set 0

attribute @s minecraft:movement_speed modifier remove cf:angry
attribute @s minecraft:flying_speed modifier remove cf:angry

$attribute @s minecraft:movement_speed modifier add cf:angry $(speed) add_value
$attribute @s minecraft:flying_speed modifier add cf:angry $(speed) add_value
