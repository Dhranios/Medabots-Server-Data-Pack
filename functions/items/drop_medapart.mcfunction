summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","legs"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","left_arm"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","right_arm"],Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Medapart Selection"}',Tags:["medapart_selection","head"],Duration:1}
tag @e[type=minecraft:area_effect_cloud,tag=medapart_selection,sort=random,limit=1] add selected
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:diamond_pickaxe",Count:1b},Tags:["medapart_drop"],PickupDelay:1s}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item set from entity @s Inventory[{tag:{medabots_server:{part:"legs",activated:1b}}}]
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"Inventory[{tag:{medabots_server:{part:\"legs\",activated:1b}}}].tag.display.Name","entity":"@s","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=legs] run tag @s add drop_legs
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item set from entity @s Inventory[{tag:{medabots_server:{part:"left_arm",activated:1b}}}]
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"Inventory[{tag:{medabots_server:{part:\"left_arm\",activated:1b}}}].tag.display.Name","entity":"@s","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=left_arm] run tag @s add drop_left_arm
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item set from entity @s Inventory[{tag:{medabots_server:{part:"right_arm",activated:1b}}}]
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"Inventory[{tag:{medabots_server:{part:\"right_arm\",activated:1b}}}].tag.display.Name","entity":"@s","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=right_arm] run tag @s add drop_right_arm
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run data modify entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item set from entity @s Inventory[{tag:{medabots_server:{part:"head",activated:1b}}}]
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run tellraw @s {"translate":"medabots_server:message.lost_medapart","color":"red","with":[{"nbt":"Inventory[{tag:{medabots_server:{part:\"head\",activated:1b}}}].tag.display.Name","entity":"@s","interpret":true,"color":"red"}]}
execute if entity @e[type=minecraft:area_effect_cloud,tag=medapart_selection,tag=selected,tag=head] run tag @s add drop_head
data merge entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] {Item:{tag:{medabots_server:{activated:0b,stage_item:1b}}}}
data remove entity @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] Item.tag.display{Lore:['{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']}.Lore[8]
tag @e[type=minecraft:item,tag=medapart_drop,distance=..1,limit=1] remove medapart_drop
kill @e[type=minecraft:area_effect_cloud,tag=medapart_selection]