execute store result storage cf:temp gun.projectile_speed int 1000000 run data get entity @s weapon.components."minecraft:enchantments"."cf:gun/projectile_speed"

function cf:item/gun/offhand/set_speed with storage cf:temp gun

data remove storage cf:temp gun