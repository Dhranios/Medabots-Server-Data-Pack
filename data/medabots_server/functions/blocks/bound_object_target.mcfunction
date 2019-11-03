# Transfer power to position
scoreboard players operation @e[distance=..0.7] PowerAmount += @s PowerAmount
scoreboard players add @e[tag=fan,distance=..0.7,tag=!changed] Moving 1
tag @e[tag=fan,distance=..0.7,tag=!changed] add changed