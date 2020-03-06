# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f},tag=!disabled] add dying
execute if entity @s[tag=dying,tag=!dead,tag=!disabled] run function medabots_server:animations/cannon/death
execute if entity @s[tag=dead,tag=!disabled] run function medabots_server:blocks/action_floor/reenable_spawning

# Coundown shooting
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=1..9},tag=enabled,tag=!disabled] Time 1
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=10},tag=detected,tag=enabled,tag=!disabled] Time 1
execute unless entity @s[scores={FreezeTime=1..}] run scoreboard players remove @s[scores={Time=11..},tag=enabled,tag=!disabled] Time 1

# Stop rotating
scoreboard players set @s[scores={Time=9},tag=detected] CannonFire 1

# Enemy found
execute if entity @s[scores={Time=9,CannonFire=0..},tag=detect,tag=detected,tag=!dying,tag=!already_targetted,tag=enabled,tag=!disabled] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=7,CannonFire=0..},tag=detect,tag=detected,tag=!dying,tag=!already_targetted,tag=enabled,tag=!disabled] run playsound medabots_server:entity.cannon.beep hostile @a ~ ~ ~ 1

# Fire in the hole!
execute if entity @s[scores={Time=0,CannonFire=1..},tag=!dying] unless entity @s[scores={IneffectiveTime=1..},tag=enabled,tag=!disabled] run function medabots_server:entities/cannon/fire
scoreboard players set @s[scores={Time=0,CannonFire=1..,IneffectiveTime=1..},tag=!dying,tag=enabled,tag=!disabled] CannonFire 0

# Set anything that has detected to have not detected
tag @s[tag=!detected] remove already_targetted
tag @s[tag=detected,tag=detect] remove detected

# No detect is the same as detected
tag @s[tag=!detect] add detected

# Set the time depending on the delay
scoreboard players set @s[scores={ParalyzeTime=1..}] Time 0
scoreboard players operation @s[scores={Time=0},tag=enabled,tag=!disabled] Time = @s DelayTime

# Try to find the enemy
execute if entity @s[tag=detect,tag=!dying,tag=enabled,tag=!disabled] run function medabots_server:entities/cannon/detect

# Not detected results means no opening of fire
scoreboard players set @s[scores={CannonFire=1..,Time=10},tag=!detected,tag=!dying,tag=enabled,tag=!disabled] CannonFire 0

# Rotate cannon
execute unless entity @s[scores={FreezeTime=1..}] unless entity @s[scores={ParalyzeTime=1..}] at @s[tag=rotating,scores={CannonFire=0,Time=0..},tag=!detect,tag=!dying,tag=enabled,tag=!disabled] run function medabots_server:entities/cannon/turn
execute unless entity @s[scores={FreezeTime=1..}] unless entity @s[scores={ParalyzeTime=1..}] at @s[tag=rotating,scores={CannonFire=0,Time=0..},tag=detect,tag=!detected,tag=!dying,tag=enabled,tag=!disabled] run function medabots_server:entities/cannon/turn

# Allow rotating only on the second tick
scoreboard players set @s[scores={Time=-1}] Time 20

# Place part of self
execute at @s[tag=!dead,tag=!dying] run fill ~ ~2 ~ ~ ~2 ~ minecraft:black_stained_glass replace minecraft:air
execute at @s[tag=!dead,tag=!dying] run fill ~ ~ ~ ~ ~ ~ minecraft:black_stained_glass replace minecraft:air
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:black_stained_glass
execute if entity @s[tag=dead,tag=!dying] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:grass_block replace minecraft:dirt

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp CannonNr = @s CannonNr
execute if entity @s[tag=dead] as @e[tag=cannon_model,type=minecraft:armor_stand] if score @s CannonNr = #temp CannonNr run kill @s
execute if entity @s[tag=dead] as @e[scores={CannonNr=1..}] if score @s CannonNr > #temp CannonNr run scoreboard players remove @s CannonNr 1
execute if entity @s[tag=dead] run scoreboard players reset #temp CannonNr

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/cannon
data merge entity @s {Invulnerable:0b}