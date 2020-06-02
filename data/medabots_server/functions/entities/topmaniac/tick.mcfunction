execute at @s[tag=idle] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

# Set dead
tag @s[tag=!dying,nbt={AbsorptionAmount:0.0f}] add dying

execute if entity @e[distance=..1,tag=footstool,type=minecraft:area_effect_cloud] if entity @s[tag=!roll] run function medabots_server:entities/topmaniac/footstooled

execute unless entity @s[tag=dying,tag=!dead] if score @s Health < @s LastHealth run tag @s[scores={State=1}] add not_footstool_only
execute unless entity @s[tag=dying,tag=!dead] if score @s Health < @s LastHealth run tag @s[scores={State=2..4,Time=1..}] add not_footstool_only
execute unless entity @s[tag=dying,tag=!dead] if score @s Health < @s LastHealth run playsound medabots_server:entity.topmaniac.damage hostile @a ~ ~ ~ 1
execute if entity @s[tag=dying,tag=!dead] run playsound medabots_server:entity.topmaniac.death hostile @a ~ ~ ~ 1

execute if entity @s[scores={Time=0}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={State=1}] run function medabots_server:entities/topmaniac/active
execute if entity @s[scores={State=2..4}] run function medabots_server:entities/topmaniac/wake

# Set bossbar health
execute if entity @s[tag=!mt_battle,tag=!arena] store result bossbar medabots_server:topmaniac value run data get entity @s AbsorptionAmount
execute if entity @s[tag=mt_battle] store result bossbar medabots_server:topmaniac/mt_battle value run data get entity @s AbsorptionAmount
execute if entity @s[tag=arena] store result bossbar medabots_server:topmaniac/arena value run data get entity @s AbsorptionAmount