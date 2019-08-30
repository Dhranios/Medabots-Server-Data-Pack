# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]

# Coundown shooting
scoreboard players remove @s[scores={Time=1..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount = @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @a[scores={Battle=2}] if score @s Stage = #temp Stage run tag @e[tag=laser_trap,distance=..0.1] add no_fire
execute if entity @s[scores={Time=0},tag=!no_fire] run function medabots_server:blocks/laser_trap/fire
tag @s[tag=no_fire] remove no_fire
scoreboard players reset #temp Stage

# Set the time depending on the delay
scoreboard players set @s[tag=delay_1,scores={Time=0}] Time 20
scoreboard players set @s[tag=delay_2,scores={Time=0}] Time 40
scoreboard players set @s[tag=delay_3,scores={Time=0}] Time 60
scoreboard players set @s[tag=delay_4,scores={Time=0}] Time 80
scoreboard players set @s[tag=delay_5,scores={Time=0}] Time 100
scoreboard players set @s[tag=delay_6,scores={Time=0}] Time 120
scoreboard players set @s[tag=delay_7,scores={Time=0}] Time 140
scoreboard players set @s[tag=delay_8,scores={Time=0}] Time 160
scoreboard players set @s[tag=delay_9,scores={Time=0}] Time 180
scoreboard players set @s[tag=delay_10,scores={Time=0}] Time 200
scoreboard players set @s[tag=delay_11,scores={Time=0}] Time 220
scoreboard players set @s[tag=delay_12,scores={Time=0}] Time 240
scoreboard players set @s[tag=delay_13,scores={Time=0}] Time 260
scoreboard players set @s[tag=delay_14,scores={Time=0}] Time 280
scoreboard players set @s[tag=delay_15,scores={Time=0}] Time 300