say item_modifier_crafting/main


function cf:player/item_modifier_crafting/determine_slot
function cf:player/item_modifier_crafting/get_modifier with storage cf:temp player_item_modifier
function cf:player/item_modifier_crafting/modify_item with storage cf:temp player_item_modifier

data remove storage cf:temp player_item_modifier
item replace entity 00004661-7578-2049-6e76-656e746f7279 container.0 with air