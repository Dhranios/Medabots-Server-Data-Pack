playsound medabots_server:block.laser_trap hostile @a ~ ~ ~ 1
execute if block ~ ~1 ~ minecraft:sandstone_stairs[facing=south] run summon minecraft:arrow ~ ~1 ~-1 {Motion:[0d,0d,-3d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ -3000
execute if block ~ ~1 ~ minecraft:sandstone_stairs[facing=west] run summon minecraft:arrow ~1 ~1 ~ {Motion:[3d,0d,0d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 3000
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 0
execute if block ~ ~1 ~ minecraft:sandstone_stairs[facing=north] run summon minecraft:arrow ~ ~1 ~1 {Motion:[0d,0d,3d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 3000
execute if block ~ ~1 ~ minecraft:sandstone_stairs[facing=east] run summon minecraft:arrow ~-1 ~1 ~ {Motion:[-3d,0d,0d],Potion:"minecraft:water",CustomPotionColor:6724056,CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}],CustomName:"{\"translate\":\"medabots_server:move.laser\"}",Tags:["laser"],damage:5.0d,NoGravity:1b}
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionX=-7000..}] run scoreboard players set @s MotionX -3000
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionY=-7000..}] run scoreboard players set @s MotionY 0
execute as @e[type=minecraft:arrow,tag=laser,distance=..4] unless entity @s[scores={MotionZ=-7000..}] run scoreboard players set @s MotionZ 0