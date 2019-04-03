# New lasers need scores
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 20

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]

# Coundown shooting
scoreboard players remove @s[scores={Time=1..19}] Time 1
scoreboard players remove @s[scores={Time=20},tag=enabled] Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute at @a[scores={Battle=2}] if score @s Stage = @a[distance=..0.1,limit=1,sort=nearest,scores={Battle=2}] Stage run tag @s add no_fire
execute if entity @s[scores={Time=0},tag=!no_fire] run function medabots_server:blocks/laser_trap/fire
tag @s[tag=no_fire] remove no_fire

# Set the time depending on the delay
scoreboard players set @s[tag=delay_10,scores={Time=0}] Time 200
scoreboard players set @s[tag=delay_11,scores={Time=0}] Time 220
scoreboard players set @s[tag=delay_12,scores={Time=0}] Time 240
scoreboard players set @s[tag=delay_13,scores={Time=0}] Time 260
scoreboard players set @s[tag=delay_14,scores={Time=0}] Time 280
scoreboard players set @s[tag=delay_15,scores={Time=0}] Time 300