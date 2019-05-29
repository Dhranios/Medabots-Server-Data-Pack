# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/hammer_punch/clean_up

# Countdown punching
scoreboard players remove @s[scores={Time=..19}] Time 1
scoreboard players remove @s[scores={Time=20},tag=enabled] Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/hammer_punch/punch
execute if entity @s[scores={Time=-20},tag=!dead] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
execute if entity @s[scores={Time=-20},tag=!dead] run setblock ~ ~2 ~ minecraft:stone_button[face=floor,facing=south]
scoreboard players set @s[scores={Time=-20},tag=delay_1] Time 20
scoreboard players set @s[scores={Time=-20},tag=delay_2] Time 40
scoreboard players set @s[scores={Time=-20},tag=delay_3] Time 60
scoreboard players set @s[scores={Time=-20},tag=delay_4] Time 80
scoreboard players set @s[scores={Time=-20},tag=delay_5] Time 100
scoreboard players set @s[scores={Time=-20},tag=delay_6] Time 120
scoreboard players set @s[scores={Time=-20},tag=delay_7] Time 140
scoreboard players set @s[scores={Time=-20},tag=delay_8] Time 160
scoreboard players set @s[scores={Time=-20},tag=delay_9] Time 180
scoreboard players set @s[scores={Time=-20},tag=delay_10] Time 200
