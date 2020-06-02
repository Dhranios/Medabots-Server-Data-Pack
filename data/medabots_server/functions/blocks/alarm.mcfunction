# Set time to 0 if disabled/just spawned
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Timer
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if score @s[scores={Time=0}] PowerAmount >= @s PowerNeeded run scoreboard players set @s Time 600

# Play sound and annoy selected guards when powered
execute if entity @s[scores={Time=40}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=80}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=120}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=160}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=200}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=240}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=280}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=320}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=360}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=400}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=440}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=480}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=520}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=560}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=600}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=1..},tag=ringing] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 33
execute if entity @s[scores={Time=1..},tag=!ringing] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 34
tag @s[scores={Time=1..},tag=!ringing] add ringing_2
tag @s[tag=ringing_2] add ringing
tag @s[tag=!ringing_2] remove ringing
tag @s[tag=ringing_2] remove ringing_2
execute store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[scores={Time=1..}] as @e[tag=guard,distance=..16,tag=!alarm_ringing] if score @s Stage = #temp Stage run tag @s add alarm_ringing

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object