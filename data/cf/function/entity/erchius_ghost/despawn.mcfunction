tp @s ~ ~-0.1 ~
execute if predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:-100000,max:-100}}}} run kill @e[distance=..3]