$item modify entity @s weapon.mainhand [{function:"minecraft:set_components",components:{"minecraft:custom_data":{magazine:{}},"minecraft:container":[{slot:0,item:{id:"minecraft:spectral_arrow",components:{"minecraft:max_stack_size":$(magazine_size)},count:$(magazine_loaded)}}]}},{function:"minecraft:modify_contents",component:"minecraft:container",modifier:{function:"minecraft:set_count",count:-1,add:true}}]