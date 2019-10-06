execute store result score #temp MedabotNr run scoreboard players get @s MedabotNr
execute as @e[scores={MedabotNr=0..},tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run tag @s add this_model

summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","legs"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","left_arm"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","right_arm"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","head"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=medapart_selection,sort=random,limit=1] add selected
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:fishing_rod",Count:1b},Tags:["medapart_drop"],PickupDelay:1s}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag set from entity @e[tag=this_model,limit=1,tag=hips] ArmorItems[3].tag
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.Damage set value 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=this_model,limit=1,tag=hips]","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run tag @s add drop_legs
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag set from entity @e[tag=this_model,limit=1,tag=left_arm] ArmorItems[3].tag
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.Damage set value 2
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=this_model,limit=1,tag=left_arm]","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run tag @s add drop_left_arm
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag set from entity @e[tag=this_model,limit=1,tag=right_arm] ArmorItems[3].tag
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.Damage set value 3
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=this_model,limit=1,tag=right_arm]","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run tag @s add drop_right_arm
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag set from entity @e[tag=this_model,limit=1,tag=chest] ArmorItems[3].tag
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.Damage set value 4
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=this_model,limit=1,tag=chest]","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run tag @s add drop_head
data merge entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] {Item:{tag:{medabots_server:{activated:0b,stage_item:1b}}}}
data remove entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.display{Lore:['{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']}.Lore[8]
tag @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] remove medapart_drop
kill @e[type=minecraft:area_effect_cloud,tag=medapart_selection]

scoreboard players reset #temp MedabotNr
tag @e[tag=this_model] remove this_model