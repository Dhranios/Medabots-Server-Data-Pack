# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]

# Coundown shooting
scoreboard players remove @s[scores={Time=1..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @a[scores={Battle=2}] if score @s Stage = #temp Stage run tag @e[tag=laser_trap,distance=..0.1] add no_fire
execute if entity @s[scores={Time=0},tag=!no_fire] run function medabots_server:blocks/laser_trap/fire
tag @s[tag=no_fire] remove no_fire
scoreboard players reset #temp Stage

# Set the time depending on the delay
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime
scoreboard players set @e[tag=custom_stage] PowerAmount 0