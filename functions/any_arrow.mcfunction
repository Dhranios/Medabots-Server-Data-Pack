# tag all arrows that sit in the ground
tag @s[nbt={inGround:1b}] add in_ground

# Make the shooting attacks do something
function medabots_server:medaparts/anti_fly_arrow
function medabots_server:medaparts/medaforce_arrow
function medabots_server:medaparts/missile_arrow
function medabots_server:medaparts/napalm_arrow
function medabots_server:medaparts/laser_arrow

scoreboard players add @s[tag=life_time] LifeTime 1

# Trigger Balloon Bombs
tag @s[tag=in_ground,nbt={inBlockState:{Name:"minecraft:sponge"}}] add bomb
execute if entity @s[tag=bomb] if block ~ ~0.1 ~ minecraft:sponge positioned ~ ~-0.9 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if entity @s[tag=bomb] if block ~ ~-0.1 ~ minecraft:sponge positioned ~ ~-1.1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if entity @s[tag=bomb] if block ~0.1 ~ ~ minecraft:sponge positioned ~0.1 ~-1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if entity @s[tag=bomb] if block ~-0.1 ~ ~ minecraft:sponge positioned ~-0.1 ~-1 ~ run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if entity @s[tag=bomb] if block ~ ~ ~0.1 minecraft:sponge positioned ~ ~-1 ~0.1 run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst
execute if entity @s[tag=bomb] if block ~ ~ ~-0.1 minecraft:sponge positioned ~ ~-1 ~-0.1 run tag @e[sort=nearest,distance=..1,limit=1,type=minecraft:area_effect_cloud,tag=balloon_bomb] add burst

# Destroy chests
execute if entity @s[tag=in_ground] if block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:air destroy
execute if entity @s[tag=in_ground] if block ~0.1 ~-1 ~ minecraft:chest run setblock ~0.1 ~-1 ~ minecraft:air destroy
execute if entity @s[tag=in_ground] if block ~-0.1 ~-1 ~ minecraft:chest run setblock ~-0.1 ~-1 ~ minecraft:air destroy
execute if entity @s[tag=in_ground] if block ~ ~-1 ~0.1 minecraft:chest run setblock ~ ~-1 ~0.1 minecraft:air destroy
execute if entity @s[tag=in_ground] if block ~ ~-1 ~-0.1 minecraft:chest run setblock ~ ~-1 ~-0.1 minecraft:air destroy

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