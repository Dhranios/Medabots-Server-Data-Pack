# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]

# Coundown shooting
scoreboard players remove @s[scores={Time=1..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/laser_trap/fire

# Set the time depending on the delay
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object