execute store result score #temp HomeX run data get entity @s ArmorItems[3].tag.medabots_server.last_mirror.x
execute store result score #temp HomeY run data get entity @s ArmorItems[3].tag.medabots_server.last_mirror.y
execute store result score #temp HomeZ run data get entity @s ArmorItems[3].tag.medabots_server.last_mirror.z
execute store result score #temp OtherX run data get entity @s Pos[0]
execute store result score #temp OtherY run data get entity @s Pos[1]
execute store result score #temp OtherZ run data get entity @s Pos[2]

execute if score #temp HomeX = #temp OtherX if score #temp HomeY = #temp OtherY if score #temp HomeZ = #temp OtherZ run tag @s add nope

execute if entity @s[tag=!nope] run function medabots_server:items/medapart/laser/move/mirror

scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeY
scoreboard players reset #temp HomeZ
scoreboard players reset #temp OtherX
scoreboard players reset #temp OtherY
scoreboard players reset #temp OtherZ
tag @s remove nope