summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"medabots_server:move.beam"}',Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:red_stained_glass",Count:1b}],Marker:1b,Tags:["beam","source","new"]}
execute store result score @s MotionX run data get entity @s Motion[0] 100
execute store result score @s MotionY run data get entity @s Motion[1] 100
execute store result score @s MotionZ run data get entity @s Motion[2] 100
execute store result score @s PosX run data get entity @s Pos[0] 100
execute store result score @s PosY run data get entity @s Pos[1] 100
execute store result score @s PosZ run data get entity @s Pos[2] 100
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation @s PosX += @s MotionX
execute store result entity @s Pos[1] double 0.01 run scoreboard players operation @s PosY += @s MotionY
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation @s PosZ += @s MotionZ
execute at @e[tag=new,limit=1] facing entity @s feet run teleport @e[tag=new,limit=1] ~ ~-1.7 ~ ~ ~
execute if entity @s[nbt={damage:3.5f}] run tag @e[tag=new] add strong
tag @e[tag=new] remove new
tag @s add dead
