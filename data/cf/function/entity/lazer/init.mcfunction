team join lazer @s
execute store result score @s lifetime run data get entity @s weapon.components."minecraft:enchantments"."cf:gun/lazer"
scoreboard players remove @s lifetime 1
item modify entity @s contents {function:"minecraft:set_custom_data",tag:{tick:{command:"function cf:entity/lazer/tick"}}}
data merge entity @s {NoGravity: 1b, Glowing: 1b, Fire: -32768, Invulnerable: 1b}