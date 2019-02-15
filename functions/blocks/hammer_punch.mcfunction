# Tags new hamer punches with what block they'll replace
execute unless entity @s[scores={Time=-20..}] run function medabots_server:blocks/hammer_punch/scores

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
scoreboard players set @s[scores={Time=-20},tag=delay_10] Time 200
