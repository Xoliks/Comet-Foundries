execute if entity @s[gamemode=creative] run return run function cf:item/gun/offhand/load_creative

execute store result score energy_provider.in temp run data get entity @s equipment.offhand.components."minecraft:custom_data".gun.charge_cost
execute store result score gun.magazine_size temp run scoreboard players get energy_provider.in temp
execute store result score gun.magazine_loaded temp run function cf:player/energy_provider/deplete
function cf:player/energy_provider/clean_up

scoreboard players operation gun.magazine_loaded temp *= 1000 int
scoreboard players operation gun.magazine_loaded temp /= gun.magazine_size temp
scoreboard players remove gun.magazine_loaded temp 1

item modify entity @s weapon.offhand cf:gun/load

scoreboard players reset gun.magazine_loaded temp
scoreboard players reset gun.magazine_size temp