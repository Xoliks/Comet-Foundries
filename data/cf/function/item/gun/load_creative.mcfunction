
execute store result score gun.projectile_count temp run data get entity @s SelectedItem.components."minecraft:enchantments"."cf:gun/projectile_count"
execute if score gun.projectile_count temp matches 0 run scoreboard players set gun.projectile_count temp 1

item modify entity @s weapon.mainhand cf:gun/load_creative

scoreboard players reset gun.projectile_count temp