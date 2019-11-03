execute store result score @s Health run data get entity @s AbsorptionAmount

# Target entity
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=medabot,tag=!enemy_medabot] if score @s Stage = #temp Stage run tag @s add potential_target
tag @e[tag=potential_target,limit=1,sort=nearest] add target
scoreboard players reset #temp Stage

# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying
execute if entity @s[tag=dying,tag=!dead] run function medabots_server:animations/master_hand/death

execute store result entity @s[tag=idle] Pos[1] double 1 run scoreboard players get @s HomeY

# Behavior depending on version
execute if entity @s[tag=smash_bros,tag=!dying,tag=appeared] run function medabots_server:entities/master_hand/1
execute if entity @s[tag=smash_melee,tag=!dying,tag=appeared] run function medabots_server:entities/master_hand/2
execute if entity @s[tag=smash_brawl,tag=!dying,tag=appeared] run function medabots_server:entities/master_hand/3
execute if entity @s[tag=smash_4,tag=!dying,tag=appeared] run function medabots_server:entities/master_hand/4
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4,tag=!dying,tag=appeared] run function medabots_server:entities/master_hand/generic

execute if entity @s[tag=smash_bros,tag=!appeared] run function medabots_server:entities/master_hand/appear_1
execute if entity @s[tag=smash_melee,tag=!appeared] run function medabots_server:entities/master_hand/appear_2
execute if entity @s[tag=smash_brawl,tag=!appeared] run function medabots_server:entities/master_hand/appear_3
execute if entity @s[tag=smash_4,tag=!appeared] run function medabots_server:entities/master_hand/appear_4
execute if entity @s[tag=!smash_bros,tag=!smash_melee,tag=!smash_brawl,tag=!smash_4,tag=!appeared] run function medabots_server:entities/master_hand/appear_generic

tag @e[tag=potential_target] remove potential_target
tag @e[tag=target,limit=1] remove target

# Model
execute if entity @s[tag=!dead] run function medabots_server:animations/master_hand

execute store result score @s LastHealth run data get entity @s AbsorptionAmount