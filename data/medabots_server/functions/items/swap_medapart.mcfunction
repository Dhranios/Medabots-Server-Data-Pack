summon minecraft:armor_stand ~ ~ ~ {Tags:["inventory"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{Slot:0b,id:"minecraft:stone_button",Count:1b,tag:{medabots_server:{id:"medabots_server:inventory",items:[]}}}]}
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items set from entity @s Inventory

execute if entity @s[nbt={SelectedItemSlot:0}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:0b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:1}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:1b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:2}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:2b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:3}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:3b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:4}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:4b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:5}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:5b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:6}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:6b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:7}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:7b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'
execute if entity @s[nbt={SelectedItemSlot:8}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:8b}].tag.display.Lore append value '{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}'

execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"legs"}}}}] run function medabots_server:items/swap_medapart/legs
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"left_arm"}}}}] run function medabots_server:items/swap_medapart/left_arm
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"right_arm"}}}}] run function medabots_server:items/swap_medapart/right_arm
execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"head"}}}}] run function medabots_server:items/swap_medapart/head

data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{display:{Lore:['{"italic":false,"color":"green","translate":"medabots_server:item.medapart.activated"}']},medabots_server:{activated:0b}}}].tag.medabots_server.activated set value 1b

execute as @e[tag=inventory,limit=1] run function medabots_server:other/inventory_boxes/set
function medabots_server:other/inventory_boxes/load

scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
scoreboard players reset #temp MedabotNr
function medabots_server:entities/medabot/spawn_model
function medabots_server:other/killer/score
tag @s add swapped