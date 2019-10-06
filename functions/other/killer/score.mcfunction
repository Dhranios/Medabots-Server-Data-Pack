# Give a score depending on the selected set
scoreboard players set @s Medabot 0
execute store result score #head Medabot run data get entity @s Inventory[{Slot:3b}].tag.Damage
execute store result score #right_arm Medabot run data get entity @s Inventory[{Slot:2b}].tag.Damage
execute store result score #left_arm Medabot run data get entity @s Inventory[{Slot:1b}].tag.Damage
execute store result score #legs Medabot run data get entity @s Inventory[{Slot:0b}].Damage
execute if score #head Medabot = #right_arm Medabot if score #head Medabot = #left_arm Medabot if score #head Medabot = #legs Medabot store result score @s Medabot run scoreboard players get #head Medabot
scoreboard players reset #head Medabot
scoreboard players reset #right_arm Medabot
scoreboard players reset #left_arm Medabot
scoreboard players reset #legs Medabot