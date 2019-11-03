# Trigger
execute if entity @s[tag=east] positioned ~1 ~3 ~-2 if entity @a[scores={Battle=1},dx=3,dy=4,dz=3] run tag @s add trigger
execute if entity @s[tag=north] positioned ~-2 ~3 ~-4 if entity @a[scores={Battle=1},dx=3,dy=4,dz=3] run tag @s add trigger
execute if entity @s[tag=south] positioned ~-2 ~3 ~1 if entity @a[scores={Battle=1},dx=3,dy=4,dz=3] run tag @s add trigger
execute if entity @s[tag=west] positioned ~-4 ~3 ~-2 if entity @a[scores={Battle=1},dx=3,dy=4,dz=3] run tag @s add trigger

execute if entity @s[tag=trigger] run function medabots_server:entities/mission/builder