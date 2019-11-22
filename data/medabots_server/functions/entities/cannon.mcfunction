# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying] run function medabots_server:animations/cannon/death

# Coundown shooting
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=1..9}] Time 1
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=10},tag=detected] Time 1
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=11..}] Time 1

# Stop rotating
scoreboard players set @s[scores={Time=9},tag=detected] CannonFire 1

# Enemy found
execute if entity @s[scores={Time=9,CannonFire=0..},tag=detect,tag=detected,tag=!dying,tag=!already_targetted] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=7,CannonFire=0..},tag=detect,tag=detected,tag=!dying,tag=!already_targetted] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1

# Fire in the hole!
execute if entity @s[scores={Time=0,CannonFire=1..},tag=!dying] unless entity @s[scores={IneffectiveTime=1..}] run function medabots_server:entities/cannon/fire
scoreboard players set @s[scores={Time=0,CannonFire=1..,IneffectiveTime=1..},tag=!dying] CannonFire 0

# Set anything that has detected to have not detected
tag @s[tag=!detected] remove already_targetted
tag @s[tag=detected,tag=detect] remove detected

# No detect is the same as detected
tag @s[tag=!detect] add detected

# Set the time depending on the delay
scoreboard players set @s[scores={ParalyzeTime=1..}] Time 0
scoreboard players operation @s[scores={Time=0}] Time = @s DelayTime

# Try to find the enemy
execute if entity @s[tag=detect,tag=!dying] run function medabots_server:entities/cannon/detect

# Not detected results means no opening of fire
scoreboard players set @s[scores={CannonFire=1..,Time=10},tag=!detected,tag=!dying] CannonFire 0

# Rotate cannon
execute unless entity @s[scores={FreezeTime=1..}] unless entity @s[scores={ParalyzeTime=1..}] at @s[tag=rotating,scores={CannonFire=0,Time=0..},tag=!detect,tag=!dying] run function medabots_server:entities/cannon/turn
execute unless entity @s[scores={FreezeTime=1..}] unless entity @s[scores={ParalyzeTime=1..}] at @s[tag=rotating,scores={CannonFire=0,Time=0..},tag=detect,tag=!detected,tag=!dying] run function medabots_server:entities/cannon/turn

# Allow rotating only on the second tick
scoreboard players set @s[scores={Time=-1}] Time 20

# Place part of self
execute at @s[tag=!dead,tag=!dying] run fill ~ ~2 ~ ~ ~2 ~ minecraft:barrier replace minecraft:air
execute at @s[tag=!dead,tag=!dying] run fill ~ ~ ~ ~ ~ ~ minecraft:iron_block replace minecraft:air
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:barrier
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:iron_block
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt

# Clean up
teleport @s[tag=dead] ~ -1000 ~