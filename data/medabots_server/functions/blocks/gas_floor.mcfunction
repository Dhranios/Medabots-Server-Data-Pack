# New gass floors need scores and carpet
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 20

# Coundown blowing
scoreboard players remove @s[scores={Time=1..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.gas_floor hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Time=0}] Time 200
execute if entity @s[scores={Time=121..}] run function medabots_server:blocks/gas_floor/gas

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
kill @s[tag=dead]

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object