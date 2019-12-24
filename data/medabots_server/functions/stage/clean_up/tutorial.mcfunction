execute as @e[x=-1888,y=42,z=-633,dx=31,dy=7,dz=27] unless entity @s[scores={Stage=0}] run scoreboard players set @s Stage 0
tag @e[scores={Stage=0},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=0},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=0},distance=0.1..] Stage