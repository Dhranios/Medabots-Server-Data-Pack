# Referee text
scoreboard players add @s[scores={Dialog=194..275}] Dialog 1
execute store result score #temp Stage run scoreboard players get @s Stage
execute as @e[tag=hostile,scores={Medabot=0..}] if score @s Stage = #temp Stage run tag @s add this_robattle
execute if entity @s[scores={Dialog=195}] as @a[tag=hostile,tag=this_robattle] run title @s title {"translate":"medabots_server:message.stage.mission.time_is_up","color":"green"}
execute if entity @s[scores={Dialog=195}] as @a[tag=hostile,tag=this_robattle] run playsound medabots_server:entity.mr_referee.time_is_up voice @s ~ ~ ~ 1000
execute if entity @s[scores={Dialog=195..}] as @e[tag=hostile,tag=this_robattle] run scoreboard players set @s[scores={Time=1..}] Time 950
execute if entity @s[scores={Dialog=195}] as @e[tag=hostile,tag=this_robattle] run scoreboard players set @s Battle 2
execute if entity @s[scores={Dialog=275}] as @a[tag=hostile,tag=!enemy_medabot,tag=this_robattle] at @e[tag=hostile,tag=enemy_medabot,tag=this_robattle] run function medabots_server:stage/referee_decides_decision
scoreboard players reset #temp Stage
tag @e[tag=this_robattle] remove this_robattle