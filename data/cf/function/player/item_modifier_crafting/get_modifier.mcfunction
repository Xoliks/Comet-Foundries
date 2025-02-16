$say item_modifier_crafting/get_modifier $(path)

$data modify storage cf:temp player_item_modifier.custom_data set from entity $(path).components."minecraft:custom_data"
data modify storage cf:temp player_item_modifier.modifier set from storage cf:temp player_item_modifier.custom_data.item_modifier
data remove storage cf:temp player_item_modifier.custom_data.item_modifier