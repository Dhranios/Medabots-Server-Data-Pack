summon minecraft:tnt ~ ~ ~ {Fuse:20s,Tags:["hostile","bomb_explosion"],NoGravity:1b}
execute if entity @s[scores={ActionFloorNr=0..}] run scoreboard players operation @e[distance=..0.7,tag=bomb_explosion,type=minecraft:tnt] ActionFloorNr = @s ActionFloorNr
tag @s add dead