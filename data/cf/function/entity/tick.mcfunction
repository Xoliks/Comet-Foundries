execute if entity @s[type=#cf:single_item_container] if items entity @s contents *[minecraft:custom_data~{tick:{}}] run function cf:entity/run_command with entity @s Item.components."minecraft:custom_data".tick
execute if entity @s[type=item] if items entity @s contents *[minecraft:custom_data~{item_modifier:{}}] run function cf:player/item_modifier_crafting/main
