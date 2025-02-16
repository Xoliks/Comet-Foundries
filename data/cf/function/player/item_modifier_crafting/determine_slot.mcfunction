say item_modifier_crafting/determine_slot

execute if items entity @s player.cursor *[minecraft:custom_data~{item_modifier:{}}] run item replace entity 00004661-7578-2049-6e76-656e746f7279 container.0 from entity @s player.cursor
execute if items entity @s player.cursor *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"player.cursor", path:"00004661-7578-2049-6e76-656e746f7279 Items[{Slot:0b}]"}

execute if items entity @s contents *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"contents", path:"@s Item"}

execute if items entity @s container.0 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.0", path:"@s Inventory[{Slot:0b}]"}
execute if items entity @s container.1 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.1", path:"@s Inventory[{Slot:1b}]"}
execute if items entity @s container.2 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.2", path:"@s Inventory[{Slot:2b}]"}
execute if items entity @s container.3 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.3", path:"@s Inventory[{Slot:3b}]"}
execute if items entity @s container.4 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.4", path:"@s Inventory[{Slot:4b}]"}
execute if items entity @s container.5 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.5", path:"@s Inventory[{Slot:5b}]"}
execute if items entity @s container.6 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.6", path:"@s Inventory[{Slot:6b}]"}
execute if items entity @s container.7 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.7", path:"@s Inventory[{Slot:7b}]"}
execute if items entity @s container.8 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.8", path:"@s Inventory[{Slot:8b}]"}
execute if items entity @s container.9 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.9", path:"@s Inventory[{Slot:9b}]"}
execute if items entity @s container.10 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.10", path:"@s Inventory[{Slot:10b}]"}
execute if items entity @s container.11 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.11", path:"@s Inventory[{Slot:11b}]"}
execute if items entity @s container.12 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.12", path:"@s Inventory[{Slot:12b}]"}
execute if items entity @s container.13 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.13", path:"@s Inventory[{Slot:13b}]"}
execute if items entity @s container.14 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.14", path:"@s Inventory[{Slot:14b}]"}
execute if items entity @s container.15 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.15", path:"@s Inventory[{Slot:15b}]"}
execute if items entity @s container.16 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.16", path:"@s Inventory[{Slot:16b}]"}
execute if items entity @s container.17 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.17", path:"@s Inventory[{Slot:17b}]"}
execute if items entity @s container.18 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.18", path:"@s Inventory[{Slot:18b}]"}
execute if items entity @s container.19 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.19", path:"@s Inventory[{Slot:19b}]"}
execute if items entity @s container.20 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.20", path:"@s Inventory[{Slot:20b}]"}
execute if items entity @s container.21 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.21", path:"@s Inventory[{Slot:21b}]"}
execute if items entity @s container.22 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.22", path:"@s Inventory[{Slot:22b}]"}
execute if items entity @s container.23 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.23", path:"@s Inventory[{Slot:23b}]"}
execute if items entity @s container.24 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.24", path:"@s Inventory[{Slot:24b}]"}
execute if items entity @s container.25 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.25", path:"@s Inventory[{Slot:25b}]"}
execute if items entity @s container.26 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.26", path:"@s Inventory[{Slot:26b}]"}
execute if items entity @s container.27 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.27", path:"@s Inventory[{Slot:27b}]"}
execute if items entity @s container.28 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.28", path:"@s Inventory[{Slot:28b}]"}
execute if items entity @s container.29 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.29", path:"@s Inventory[{Slot:29b}]"}
execute if items entity @s container.30 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.30", path:"@s Inventory[{Slot:30b}]"}
execute if items entity @s container.31 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.31", path:"@s Inventory[{Slot:31b}]"}
execute if items entity @s container.32 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.32", path:"@s Inventory[{Slot:32b}]"}
execute if items entity @s container.33 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.33", path:"@s Inventory[{Slot:33b}]"}
execute if items entity @s container.34 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.34", path:"@s Inventory[{Slot:34b}]"}
execute if items entity @s container.35 *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"container.35", path:"@s Inventory[{Slot:35b}]"}

execute if items entity @s weapon.offhand *[minecraft:custom_data~{item_modifier:{}}] run return run data modify storage cf:temp player_item_modifier merge value {slot:"weapon.offhand", path:"@s equipment.offhand"}