# New cannons need scores and rotation
execute unless entity @s[scores={Time=-1..}] run function medabots_server:entities/cannon/scores

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
execute at @a[scores={Battle=2}] if score @s Stage = @a[distance=..0.1,limit=1,sort=nearest,scores={Battle=2}] Stage run tag @s add no_fire
execute if entity @s[scores={Time=0},tag=detected,tag=!no_fire] run function medabots_server:entities/cannon/fire
tag @s[tag=no_fire] remove no_fire

# Set anything that has detected to have not detected
tag @s[tag=detected] remove detected

# No detect is the same as detected
tag @s[tag=!detect] add detected

# Set the time depending on the delay
scoreboard players set @s[tag=delay_4,scores={Time=0}] Time 80
scoreboard players set @s[tag=delay_3,scores={Time=0}] Time 60
scoreboard players set @s[tag=delay_2,scores={Time=0}] Time 40
scoreboard players set @s[tag=delay_1,scores={Time=0}] Time 20

# Try to find the enemy
execute if entity @s[tag=detect] run function medabots_server:entities/cannon/detect

# Not detected results in no opening of fire
scoreboard players set @s[scores={CannonFire=-1},tag=!detected] CannonFire 0
scoreboard players set @s[scores={CannonFire=1..},tag=!detected] CannonFire 0

# Rotate cannon
execute if entity @s[tag=rotate_over_x_negative,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_z_negative,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_x_positive,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_z_positive,scores={CannonFire=-1..0,Time=0..},tag=!detect] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_x_negative,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_z_negative,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_x_positive,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:entities/cannon/turn
execute if entity @s[tag=rotate_over_z_positive,scores={CannonFire=-1..0,Time=0..},tag=detect,tag=!detected] run function medabots_server:entities/cannon/turn

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