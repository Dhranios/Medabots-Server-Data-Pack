# Referee text
scoreboard players add @s Dialog 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute if entity @s[scores={Dialog=1}] as @e[tag=cannon,type=minecraft:zombie] if score @s Stage = #temp Stage run tag @s remove enabled
execute if entity @s[scores={Dialog=1}] as @e[tag=guard,type=minecraft:creeper] if score @s Stage = #temp Stage run tag @s remove enabled
execute if entity @s[scores={Dialog=1}] as @e[tag=!medabot] if score @s Stage = #temp Stage run tag @s add disabled
execute as @e[tag=medabot] if score @s Stage = #temp Stage run tag @s add this_robattle
execute if entity @s[scores={Dialog=1}] as @a[tag=this_robattle] run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=1}] as @a[tag=this_robattle] run playsound medabots_server:entity.mr_referee.time_is_up voice @s ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1..}] as @e[tag=this_robattle] run scoreboard players set @s[scores={Time=1..}] Time 950
execute if entity @s[scores={Dialog=1}] as @e[tag=this_robattle] run scoreboard players set @s State 2
execute if entity @s[scores={Dialog=80}] as @a[tag=!enemy_medabot,tag=this_robattle] at @e[tag=enemy_medabot,tag=this_robattle] run function medabots_server:stage/referee_decides_decision
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle