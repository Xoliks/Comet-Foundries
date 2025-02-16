$item modify entity @s $(slot) $(modifier)
$item modify entity @s $(slot) {function:"minecraft:set_components",components:{"minecraft:custom_data":$(custom_data)}}
$execute if items entity @s $(slot) *[] run item modify entity @s $(slot) {function:"minecraft:set_components",components:{"!minecraft:custom_data":{}}}
