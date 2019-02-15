# Set time to 0 if disabled/just spawned
execute unless entity @s[scores={Time=0..}] run scoreboard players set @s Time 0

# Timer
scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players set @s[tag=enabled,scores={Time=0}] Time 600

# Play sound and annoy selected guards when enabled
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
execute if entity @s[scores={Time=1..}] as @e[tag=guard,distance=..16] if score @s Stage = @e[distance=..0.1,limit=1,tag=alarm] Stage run data merge entity @s {NoAI:1b}

# Stop annoying the guards when disabled again
execute if entity @s[tag=!enabled,scores={Time=0}] as @e[tag=guard,distance=..16] if score @s Stage = @e[distance=..0.1,limit=1,tag=alarm] Stage run data merge entity @s {NoAI:0b}

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~1 ~ minecraft:air
kill @s[tag=dead]