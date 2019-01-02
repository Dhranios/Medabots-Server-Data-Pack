# New cannons need scores and rotation
execute unless entity @s[scores={CannonFire=-1..}] run scoreboard players add @s CannonFire 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=look_over_x_negative] ~ ~ ~ 90 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=look_over_x_positive] ~ ~ ~ -90 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=look_over_z_negative] ~ ~ ~ -180 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=look_over_z_positive] ~ ~ ~ 0 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=rotate_over_x_negative] ~ ~ ~ 90 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=rotate_over_x_positive] ~ ~ ~ -90 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=rotate_over_z_negative] ~ ~ ~ -180 0
execute unless entity @s[scores={Time=-1..}] run teleport @s[tag=rotate_over_z_positive] ~ ~ ~ 0 0
tag @s[tag=rotate_over_x_negative,tag=detect] add cannon_4
tag @s[tag=rotate_over_x_positive,tag=detect] add cannon_4
tag @s[tag=rotate_over_z_negative,tag=detect] add cannon_4
tag @s[tag=rotate_over_z_positive,tag=detect] add cannon_4
execute unless entity @s[scores={Time=-1..}] run scoreboard players set @s Time -1

# Coundown shooting
scoreboard players remove @s[scores={Time=1..9}] Time 1
scoreboard players remove @s[scores={Time=10},tag=detected] Time 1
scoreboard players remove @s[scores={Time=11..}] Time 1

# Stop rotating
scoreboard players set @s[scores={Time=10},tag=detected] CannonFire 1

# enemy found
execute if entity @s[scores={Time=10,CannonFire=0..},tag=detect,tag=detected] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=8,CannonFire=0..},tag=detect,tag=detected] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1

# Fire in the hole!
execute if entity @s[scores={Time=0},tag=detected] run function medabots_server:stage/cannon_fire

# Set anything that has detected to have not detected
tag @s[tag=detected] remove detected

# No detect is the same as detected
tag @s[tag=!detect] add detected

# Set the time depending on the delay
scoreboard players set @s[tag=delay_4,scores={Time=0}] Time 80
scoreboard players set @s[tag=delay_3,scores={Time=0}] Time 60
scoreboard players set @s[tag=delay_2,scores={Time=0}] Time 40
scoreboard players set @s[tag=delay_1,scores={Time=0}] Time 20

# Not Detected but is attampting to detect is resetting the time and trying to find the enemy
execute if entity @s[tag=detect,tag=look_over_x_negative] if entity @a[dx=-11,dy=3,dz=0,tag=hostile,tag=!enemy_medabot] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_x_positive] if entity @a[dx=11,dy=3,dz=0,tag=hostile,tag=!enemy_medabot] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_z_negative] if entity @a[dx=0,dy=3,dz=-11,tag=hostile,tag=!enemy_medabot] run tag @s add detected
execute if entity @s[tag=detect,tag=look_over_z_positive] if entity @a[dx=0,dy=3,dz=11,tag=hostile,tag=!enemy_medabot] run tag @s add detected

# Not Detected but is cannon type 4 is resetting the time and trying to find the enemy, and target lock
execute if entity @s[tag=cannon_4] positioned ~ ~-1 ~ run summon minecraft:area_effect_cloud ^ ^ ^5.5 {CustomName:"{\"text\":\"Cannon Target\"}",Tags:["cannon_target"],Duration:1}
execute at @e[tag=cannon_target,type=minecraft:area_effect_cloud] positioned ~ ~1 ~ if entity @a[limit=1,distance=..5.5,tag=hostile,tag=!enemy_medabot] run tag @s add detected
kill @e[tag=cannon_target,type=minecraft:area_effect_cloud]
teleport @s[tag=cannon_4,tag=detected] ~ ~ ~ facing entity @a[limit=1,tag=hostile,sort=nearest,tag=!enemy_medabot]

# Not Detected results in no opening of fire
scoreboard players set @s[scores={CannonFire=-1},tag=!detected] CannonFire 0
scoreboard players set @s[scores={CannonFire=1..},tag=!detected] CannonFire 0

# Rotate cannon
execute if entity @s[tag=rotate_over_x_negative,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_z_negative,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_x_positive,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_z_positive,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_x_negative,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_z_negative,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_x_positive,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:stage/cannon_turn
execute if entity @s[tag=rotate_over_z_positive,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:stage/cannon_turn

# Allow rotating only on the second tick
scoreboard players set @s[scores={Time=-1}] Time 20

# Set death
tag @s[tag=!dead,nbt={AbsorptionAmount:0.0f}] add dead

# Place part of self
execute if entity @s[tag=!dead] run fill ~ ~2 ~ ~ ~2 ~ minecraft:barrier replace minecraft:air
execute if entity @s[tag=!dead] run fill ~ ~ ~ ~ ~ ~ minecraft:iron_block replace minecraft:air

# Prevent death animation if stage clean up
teleport @s[tag=dead,nbt=!{AbsorptionAmount:0.0f}] ~ -1000 ~

# destroy me
execute if entity @s[tag=dead] run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:iron_block
execute if entity @s[tag=dead] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt
execute if entity @s[tag=dead] at @s run playsound medabots_server:entity.cannon.death hostile @a ~ ~ ~ 1