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

# Prevent collision from messing up, and any damage it receives goes to the main entity
execute as @e[distance=..0.4,tag=cannon_blockade] run data merge entity @s {Rotation:[0.0d,0.0d]}
execute as @e[distance=..0.4,tag=cannon_blockade] run effect give @s minecraft:invisibility 1000000 0 true
execute as @e[distance=..0.4,tag=cannon_blockade] store result score #temp Health run data get entity @s AbsorptionAmount 100
scoreboard players remove #temp Health 100000
execute store result score #temp2 Health run data get entity @s AbsorptionAmount 100
scoreboard players operation #temp2 Health += #temp Health
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get #temp2 Health
scoreboard players reset #temp Health
scoreboard players reset #temp2 Health
execute as @e[distance=..0.4,tag=cannon_blockade] run data merge entity @s {Health:20.0f,Air:300s,Peek:1b,AbsorptionAmount:1000.0f}

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp CannonNr = @s CannonNr
execute if entity @s[tag=dead] as @e[tag=cannon_model,type=minecraft:armor_stand] if score @s CannonNr = #temp CannonNr run kill @s
execute if entity @s[tag=dead] as @e[tag=cannon_blockade,type=minecraft:shulker] if score @s CannonNr = #temp CannonNr run kill @s
execute if entity @s[tag=dead] as @e[scores={CannonNr=1..}] if score @s CannonNr > #temp CannonNr run scoreboard players remove @s CannonNr 1
execute if entity @s[tag=dead] run scoreboard players reset #temp CannonNr

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/cannon
data merge entity @s {Invulnerable:0b}