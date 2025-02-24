execute on origin if items entity @s weapon.mainhand *[minecraft:custom_data~{gun:{reloaded:true}}] run return fail

execute store result score gun.magazine_size temp run data get entity @s weapon.components."minecraft:max_damage"
execute store result score gun.projectile_count temp run data get entity @s weapon.components."minecraft:enchantments"."cf:gun/projectile_count"
execute if score gun.projectile_count temp matches 0 run scoreboard players set gun.projectile_count temp 1
scoreboard players set gun.magazine_loaded temp 1001
scoreboard players operation gun.magazine_loaded temp /= gun.magazine_size temp
scoreboard players add gun.magazine_loaded temp 1

execute on origin run item modify entity @s weapon.mainhand cf:gun/reload

scoreboard players reset gun.magazine_loaded temp
scoreboard players reset gun.magazine_size temp
scoreboard players reset gun.projectile_count temp