# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/hammer_punch/clean_up

# Countdown punching
scoreboard players remove @s[scores={Time=..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=15},tag=!dead] run function medabots_server:blocks/hammer_punch/punch
execute if entity @s[scores={Time=5},tag=!dead] run setblock ~ ~-1 ~ minecraft:observer[facing=down,powered=false]
execute if entity @s[scores={Time=5},tag=!dead] run setblock ~ ~2 ~ minecraft:air
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

scoreboard players set @e[tag=custom_stage] PowerAmount 0