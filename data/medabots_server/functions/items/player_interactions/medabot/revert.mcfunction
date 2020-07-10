scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
scoreboard players reset #temp MedabotNr
effect clear @s minecraft:invisibility
tag @s remove has_medabot_form
tag @s remove medabot
summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory
data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"tinpet",activated:1b}}}].tag.medabots_server.activated
execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load