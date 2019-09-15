scoreboard players remove @s[scores={Time=0..}] Time 1
scoreboard players set @s[tag=delay_1,tag=trigger] Time 20
scoreboard players set @s[tag=delay_2,tag=trigger] Time 40
scoreboard players set @s[tag=delay_5,tag=trigger] Time 100
scoreboard players set @s[tag=delay_10,tag=trigger] Time 200
scoreboard players set @s[tag=delay_15,tag=trigger] Time 300
scoreboard players set @s[tag=delay_20,tag=trigger] Time 400
scoreboard players set @s[tag=delay_30,tag=trigger] Time 600
scoreboard players set @s[tag=delay_40,tag=trigger] Time 800
scoreboard players set @s[tag=delay_60,tag=trigger] Time 1200
scoreboard players set @s[tag=delay_100,tag=trigger] Time 2000
scoreboard players set @s[tag=delay_120,tag=trigger] Time 2400
execute if entity @s[scores={Time=-1..0}] run setblock ~ ~-1 ~ minecraft:orange_wool
execute if entity @s[scores={Time=1..}] run setblock ~ ~-1 ~ minecraft:yellow_wool