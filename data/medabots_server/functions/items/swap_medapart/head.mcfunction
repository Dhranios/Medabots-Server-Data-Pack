execute store result score @s MaxHeadUses run data get entity @s SelectedItem.tag.medabots_server.uses
execute store result score @s MaxHeadArmor run data get entity @s SelectedItem.tag.medabots_server.armor

scoreboard players operation @s HeadArmor = @s HeadPer
scoreboard players operation @s HeadArmor *= @s MaxHeadArmor
scoreboard players operation @s HeadArmor /= #100 Constants
scoreboard players operation @s HeadUses = @s HeadUsesPer
scoreboard players operation @s HeadUses *= @s MaxHeadUses
scoreboard players operation @s HeadUses /= #100 Constants

execute if entity @s[nbt={SelectedItemSlot:0}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:0b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:1}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:1b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:2}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:2b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:3}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:3b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:4}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:4b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:5}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:5b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:6}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:6b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:7}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:7b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute if entity @s[nbt={SelectedItemSlot:8}] run data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{Slot:8b}].Slot set from entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot
execute store result entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].Slot byte 1 run data get entity @s SelectedItemSlot
data remove entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].tag.display.Lore[8]
data modify entity @e[tag=inventory,limit=1] ArmorItems[3].tag.medabots_server.items[{tag:{medabots_server:{part:"head",activated:1b}}}].tag.medabots_server.activated set value 0b