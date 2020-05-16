execute store result score @s Health run data get entity @s AbsorptionAmount

# Target entity
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=medabot,tag=!enemy_medabot,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
execute as @e[tag=last_known_location,type=minecraft:armor_stand] if score @s Stage = #temp Stage run tag @s add potential_target
tag @e[tag=potential_target,limit=1,sort=nearest,tag=!was_hidden] add target
scoreboard players reset #temp Stage

# Behavior depending on version
execute if entity @s[tag=!dying,tag=appeared] run function medabots_server:entities/topmaniac/tick
execute if entity @s[tag=!dying,tag=!appeared] run function medabots_server:entities/topmaniac/appear

execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/topmaniac/death

tag @e[tag=potential_target] remove potential_target
tag @e[tag=target,limit=1] remove target

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp TopmaniacNr = @s TopmaniacNr
execute if entity @s[tag=dead] as @e[tag=topmaniac_model,type=minecraft:armor_stand] if score @s TopmaniacNr = #temp TopmaniacNr run kill @s
execute if entity @s[tag=dead] as @e[scores={TopmaniacNr=1..}] if score @s TopmaniacNr > #temp TopmaniacNr run scoreboard players remove @s TopmaniacNr 1
execute if entity @s[tag=dead] run scoreboard players reset #temp TopmaniacNr

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/topmaniac

execute store result score @s LastHealth run data get entity @s AbsorptionAmount