scoreboard players remove @s[scores={FloorSwitchTime=0..}] FloorSwitchTime 1
scoreboard players set @s[tag=delay_1,tag=trigger] FloorSwitchTime 20
scoreboard players set @s[tag=delay_2,tag=trigger] FloorSwitchTime 40
scoreboard players set @s[tag=delay_5,tag=trigger] FloorSwitchTime 100
scoreboard players set @s[tag=delay_10,tag=trigger] FloorSwitchTime 200
scoreboard players set @s[tag=delay_20,tag=trigger] FloorSwitchTime 400
scoreboard players set @s[tag=delay_30,tag=trigger] FloorSwitchTime 600
scoreboard players set @s[tag=delay_40,tag=trigger] FloorSwitchTime 800
scoreboard players set @s[tag=delay_60,tag=trigger] FloorSwitchTime 1200
scoreboard players set @s[tag=delay_120,tag=trigger] FloorSwitchTime 2400
execute if entity @s[scores={FloorSwitchTime=-1..0}] run setblock ~ ~-1 ~ minecraft:orange_wool
execute if entity @s[scores={FloorSwitchTime=1..}] run setblock ~ ~-1 ~ minecraft:yellow_wool