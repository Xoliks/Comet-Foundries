$execute store result score energy_provider.max temp run data get entity @s $(path).components."minecraft:max_damage"
$execute store result score energy_provider.spent temp run data get entity @s $(path).components."minecraft:damage"

# calculate new new amount of spent energy & remainder
execute store result score energy_provider.stored temp run scoreboard players get energy_provider.max temp
scoreboard players operation energy_provider.stored temp -= energy_provider.spent temp
execute store result score energy_provider.consumed temp run scoreboard players get energy_provider.in temp
scoreboard players operation energy_provider.consumed temp < energy_provider.stored temp
execute store result score energy_provider.new_spent temp run scoreboard players get energy_provider.spent temp
scoreboard players operation energy_provider.new_spent temp += energy_provider.consumed temp
execute store result score energy_provider.remainder temp run scoreboard players get energy_provider.in temp
scoreboard players operation energy_provider.remainder temp -= energy_provider.consumed temp

# modify the item
execute store result storage cf:temp energy_provider.value int 1 run scoreboard players get energy_provider.new_spent temp 
$data modify storage cf:temp energy_provider.slot set value "$(slot)"
$execute if score energy_provider.new_spent temp = energy_provider.max temp run item modify entity @s $(slot) {function:"minecraft:set_item",item:"minecraft:trial_key"}
function cf:player/energy_provider/set_charge with storage cf:temp energy_provider

# calculate the total consumption and run again with the remainder
scoreboard players operation energy_provider.total_consumption temp += energy_provider.consumed temp
execute if score energy_provider.remainder temp matches 0 run return run scoreboard players get energy_provider.total_consumption temp

execute store result score energy_provider.in temp run scoreboard players get energy_provider.remainder temp
return run function cf:player/energy_provider/deplete