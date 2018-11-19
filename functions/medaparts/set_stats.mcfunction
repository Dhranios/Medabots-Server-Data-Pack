# Set to in-battle and set the killer score
tag @s add hostile
function medabots_server:medaparts/killer_score
scoreboard players set @s[tag=!full_medapart_set] Battle 0

# Set the stats' max values
execute store result score @s MaxHeadUses run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.uses
execute store result score @s MaxHeadArmor run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.armor
execute store result score @s MaxRightArmArmor run data get entity @s Inventory[{Slot:2b}].tag.medabots_server.armor
execute store result score @s MaxLeftArmArmor run data get entity @s Inventory[{Slot:1b}].tag.medabots_server.armor
execute store result score @s MaxLegsArmor run data get entity @s Inventory[{Slot:0b}].tag.medabots_server.armor
execute store result score @s HeadPower run data get entity @s Inventory[{Slot:3b}].tag.medabots_server.power
execute store result score @s RightArmPower run data get entity @s Inventory[{Slot:2b}].tag.medabots_server.power
execute store result score @s LeftArmPower run data get entity @s Inventory[{Slot:1b}].tag.medabots_server.power
execute store result score @s LegsDefense run data get entity @s Inventory[{Slot:0b}].tag.medabots_server.defense
scoreboard players operation @s HeadUses = @s MaxHeadUses
scoreboard players operation @s HeadArmor = @s MaxHeadArmor
scoreboard players operation @s RightArmArmor = @s MaxRightArmArmor
scoreboard players operation @s LeftArmArmor = @s MaxLeftArmArmor
scoreboard players operation @s LegsArmor = @s MaxLegsArmor

# Activate parts
execute store result entity @s Inventory[{Slot:0b}].tag.medabots_server.activated byte 1 run scoreboard players get #1 Constants
execute store result entity @s Inventory[{Slot:1b}].tag.medabots_server.activated byte 1 run scoreboard players get #1 Constants
execute store result entity @s Inventory[{Slot:2b}].tag.medabots_server.activated byte 1 run scoreboard players get #1 Constants
execute store result entity @s Inventory[{Slot:3b}].tag.medabots_server.activated byte 1 run scoreboard players get #1 Constants
execute store result entity @s Inventory[{Slot:4b}].tag.medabots_server.activated byte 1 run scoreboard players get #1 Constants