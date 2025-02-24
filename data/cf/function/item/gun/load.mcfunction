execute store result score energy_provider.in temp run data get entity @s SelectedItem.components."minecraft:enchantments"."cf:gun/magazine"
execute store result storage cf:temp gun.magazine_size int 1 run scoreboard players get energy_provider.in temp
execute store result storage cf:temp gun.magazine_loaded int 1 run function cf:player/energy_provider/deplete
function cf:player/energy_provider/clean_up

function cf:item/gun/set_loaded_ammo with storage cf:temp gun
data remove storage cf:temp gun

say load