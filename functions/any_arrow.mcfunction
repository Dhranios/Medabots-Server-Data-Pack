# tag all arrows that sit in the ground
tag @s[nbt={inGround:1b}] add in_ground

# Make the shooting attacks do something
data merge entity @s[tag=!anti_fly,nbt={CustomPotionEffects:[{Id:18b,Amplifier:8b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:'{"translate":"medabots_server:move.anti_fly"}',Tags:["anti_fly"]}
data merge entity @s[tag=!ultra_shot,nbt={CustomPotionEffects:[{Id:18b,Amplifier:4b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:'{"translate":"medabots_server:move.kabuto"}',Tags:["ultra_shot"]}
data merge entity @s[tag=!missile,nbt={CustomPotionEffects:[{Id:18b,Amplifier:3b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:'{"translate":"medabots_server:move.missile"}',Tags:["missile"]}
data merge entity @s[tag=!napalm,nbt={CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:'{"translate":"medabots_server:move.napalm"}',Tags:["napalm"]}
data merge entity @s[tag=!laser,nbt={CustomPotionEffects:[{Id:18b,Amplifier:2b,Duration:0,Ambient:1b,ShowParticles:0b}]}] {CustomName:'{"translate":"medabots_server:move.laser"}',Tags:["laser"]}
execute if entity @s[tag=anti_fly] run function medabots_server:medaparts/anti_fly_arrow
execute if entity @s[tag=ultra_shot] run function medabots_server:medaparts/ultra_shot_arrow
execute if entity @s[tag=missile] run function medabots_server:medaparts/missile_arrow
execute if entity @s[tag=napalm] run function medabots_server:medaparts/napalm_arrow
execute if entity @s[tag=laser] run function medabots_server:medaparts/laser_arrow

scoreboard players add @s[tag=life_time] LifeTime 1

# Trigger balloon bombs
execute if entity @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:sponge"}}] run function medabots_server:entities/balloon_bomb/shot

# Destroy pots
execute if entity @s[tag=in_ground] if block ~ ~ ~ minecraft:chest run tag @e[distance=..0.7,tag=pot] add broken
execute if entity @s[tag=in_ground] if block ~0.1 ~-1 ~ minecraft:chest positioned ~0.1 ~-1 ~ run tag @e[distance=..0.7,tag=pot] add broken
execute if entity @s[tag=in_ground] if block ~-0.1 ~-1 ~ minecraft:chest positioned ~-0.1 ~-1 ~ run tag @e[distance=..0.7,tag=pot] add broken
execute if entity @s[tag=in_ground] if block ~ ~-1 ~0.1 minecraft:chest positioned ~ ~-1 ~0.1 run tag @e[distance=..0.7,tag=pot] add broken
execute if entity @s[tag=in_ground] if block ~ ~-1 ~-0.1 minecraft:chest positioned ~ ~-1 ~-0.1 run tag @e[distance=..0.7,tag=pot] add broken

# Kill all landed arrows
kill @s[tag=in_ground]

# Refresh clients
data merge entity @s {Air:1}
data merge entity @s {Air:0}

# Save old motion for freeze check
execute store result score @s OtherX run scoreboard players get @s MotionX
execute store result score @s OtherY run scoreboard players get @s MotionY
execute store result score @s OtherZ run scoreboard players get @s MotionZ

# Save previous motion
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionY run data get entity @s Motion[1] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

# kill if frozen
execute if score @s[tag=!above,tag=!below,tag=!north,tag=!south,tag=!east,tag=!west] OtherX = @s MotionX if score @s OtherY = @s MotionY if score @s OtherZ = @s MotionZ run kill @s