execute store result score @s MaxLegsArmor run data get entity @s SelectedItem.tag.medabots_server.armor
execute store result score @s LegsDefense run data get entity @s SelectedItem.tag.medabots_server.defense

scoreboard players operation @s LegsArmor = @s LegsPer
scoreboard players operation @s LegsArmor *= @s MaxLegsArmor
scoreboard players operation @s LegsArmor /= #100 Constants

tag @s remove fly_legs
tag @s remove float_legs
tag @s remove multi_legged_legs
tag @s remove two_legged_legs
tag @s remove wheel_legs
tag @s remove tank_legs
tag @s remove swim_legs

tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"fly"}}}}] add fly_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"float"}}}}] add float_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"multi_legged"}}}}] add multi_legged_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"two_legged"}}}}] add two_legged_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"wheel"}}}}] add wheel_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"tank"}}}}] add tank_legs
tag @s[nbt={SelectedItem:{tag:{medabots_server:{move:"swim"}}}}] add swim_legs

tag @s[tag=!fly_legs,tag=static_fly] remove static_fly

effect clear @s[tag=!fly_legs,tag=!float_legs] minecraft:levitation
effect clear @s[tag=!fly_legs,tag=!float_legs] minecraft:slow_falling

execute if entity @s[nbt={SelectedItemSlot:0}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:0b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:1}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:1b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:2}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:2b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:3}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:3b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:4}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:4b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:5}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:5b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:6}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:6b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:7}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:7b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:8}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:8b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot
execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].Slot byte 1 run data get entity @s SelectedItemSlot
data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].tag.display.Lore[8]
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"legs",activated:1b}}}].tag.medabots_server.activated set value 0b