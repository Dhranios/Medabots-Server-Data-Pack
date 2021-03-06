execute store result score @s Health run data get entity @s AbsorptionAmount

# Target entity
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=medabot,tag=!enemy_medabot,tag=!dying] if score @s Stage = #temp Stage run tag @s add potential_target
execute as @e[tag=last_known_location,type=minecraft:armor_stand,tag=!enemy_medabot] if score @s Stage = #temp Stage run tag @s add potential_target
tag @e[tag=potential_target,limit=1,sort=nearest,tag=!was_hidden] add target
scoreboard players reset #temp Stage

execute store result entity @s[tag=idle,tag=!dying] Pos[1] double 0.01 run scoreboard players get @s HomeY

execute if entity @s[tag=cooperate] run particle minecraft:dust 0.5 0.5 0.0 1 ~ ~1 ~ 1 2 1 3 2

# Behavior depending on version
execute if entity @s[tag=smash_melee,tag=!dying,tag=appeared] run function medabots_server:entities/crazy_hand/melee
execute if entity @s[tag=smash_brawl,tag=!dying,tag=appeared] run function medabots_server:entities/crazy_hand/brawl
execute if entity @s[tag=smash_4,tag=!dying,tag=appeared] run function medabots_server:entities/crazy_hand/4
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4,tag=!dying,tag=appeared] run function medabots_server:entities/crazy_hand/generic

execute if entity @s[tag=smash_melee,tag=!dying,tag=!appeared] run function medabots_server:entities/crazy_hand/appear_melee
execute if entity @s[tag=smash_brawl,tag=!dying,tag=!appeared] run function medabots_server:entities/crazy_hand/appear_brawl
execute if entity @s[tag=smash_4,tag=!dying,tag=!appeared] run function medabots_server:entities/crazy_hand/appear_4
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4,tag=!dying,tag=!appeared] run function medabots_server:entities/crazy_hand/appear_generic

execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/crazy_hand/death

tag @e[tag=potential_target] remove potential_target
tag @e[tag=target,limit=1] remove target

# Clean up
teleport @s[tag=dead] ~ -1000 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp CrazyHandNr = @s CrazyHandNr
execute if entity @s[tag=dead] as @e[tag=crazy_hand_model,type=minecraft:armor_stand] if score @s CrazyHandNr = #temp CrazyHandNr run kill @s
execute if entity @s[tag=dead] run scoreboard players reset #temp CrazyHandNr

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/crazy_hand

execute store result score @s LastHealth run data get entity @s AbsorptionAmount