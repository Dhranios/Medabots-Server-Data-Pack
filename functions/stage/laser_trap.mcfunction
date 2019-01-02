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
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.laser_trap hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=0}] if block ~ ~1 ~ minecraft:sandstone_stairs[facing=south] run summon minecraft:arrow ~ ~1 ~-1 {Motion:[0d,0d,-3d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ -3000
execute if entity @s[scores={Time=0}] if block ~ ~1 ~ minecraft:sandstone_stairs[facing=west] run summon minecraft:arrow ~1 ~1 ~ {Motion:[3d,0d,0d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 3000
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 0
execute if entity @s[scores={Time=0}] if block ~ ~1 ~ minecraft:sandstone_stairs[facing=north] run summon minecraft:arrow ~ ~1 ~1 {Motion:[0d,0d,3d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 3000
execute if entity @s[scores={Time=0}] if block ~ ~1 ~ minecraft:sandstone_stairs[facing=east] run summon minecraft:arrow ~-1 ~1 ~ {Motion:[-3d,0d,0d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX -3000
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 0

# Set the time depending on the delay
scoreboard players set @s[tag=delay_10,scores={Time=0}] Time 200
scoreboard players set @s[tag=delay_11,scores={Time=0}] Time 220
scoreboard players set @s[tag=delay_12,scores={Time=0}] Time 240
scoreboard players set @s[tag=delay_13,scores={Time=0}] Time 260
scoreboard players set @s[tag=delay_14,scores={Time=0}] Time 280
scoreboard players set @s[tag=delay_15,scores={Time=0}] Time 300