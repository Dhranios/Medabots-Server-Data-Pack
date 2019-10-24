execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=goal_area] if score @s Stage = #temp Stage run tag @s add dead
execute as @e[tag=mission,tag=robattle] if score @s Stage = #temp Stage run tag @s add replace
tag @e[tag=mission,tag=replace] remove robattle
tag @e[tag=mission,tag=replace] add defeat_the_enemy
execute if entity @e[tag=mission,tag=replace] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.mission.changed","color":"green"}
tag @e[tag=mission,tag=replace] remove replace
scoreboard players reset #temp Stage