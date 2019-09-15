# Set time to 0 if disabled/just spawned
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Timer
scoreboard players remove @s[scores={Time=1..}] Time 1
execute if score @s[scores={Time=0}] PowerAmount >= @s PowerNeeded run scoreboard players set @s Time 600

# Play sound and annoy selected guards when powered
execute if entity @s[scores={Time=20}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=40}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=60}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=80}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=100}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=120}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=140}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=160}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=180}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=200}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=220}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=240}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=260}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=280}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=300}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=320}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=340}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=360}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=380}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=400}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=420}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=440}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=460}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=480}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=500}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=520}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=540}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=560}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=580}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute if entity @s[scores={Time=600}] run playsound medabots_server:block.alarm ambient @a ~ ~ ~ 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[scores={Time=1..}] as @e[tag=guard,distance=..16,tag=!alarm_ringing] if score @s Stage = #temp Stage run tag @s add alarm_ringing

# Stop annoying the guards when disabled again
execute if entity @s[scores={Time=0}] as @e[tag=guard,distance=..16,tag=alarm_ringing] if score @s Stage = #temp Stage run tag @s remove alarm_ringing
scoreboard players reset #temp Stage

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
kill @s[tag=dead]
scoreboard players set @e[tag=custom_stage] PowerAmount 0