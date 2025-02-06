
$execute on passengers run attribute @s minecraft:follow_range base set $(follow_range)

attribute @s minecraft:movement_speed modifier remove cf:anger
attribute @s minecraft:flying_speed modifier remove cf:anger

$attribute @s minecraft:movement_speed modifier add cf:anger $(speed) add_value
$attribute @s minecraft:flying_speed modifier add cf:anger $(speed) add_value