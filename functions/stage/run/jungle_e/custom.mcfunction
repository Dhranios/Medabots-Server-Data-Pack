execute unless entity @e[scores={Stage=54},tag=hide_normal_time] run bossbar set medabots_server:jungle_e/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=54},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_e/time value
execute unless entity @e[scores={Stage=54},tag=hide_normal_time] store result bossbar medabots_server:jungle_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=54},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_e/robattle value
execute if entity @e[scores={Stage=54},tag=hide_normal_time] if entity @e[scores={Stage=54,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=54},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=54},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/jungle_e/custom
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @s[tag=remove_bossbar] run bossbar set medabots_server:jungle_e/robattle players
tag @s[tag=remove_bossbar] remove remove_bossbar
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:jungle_e/time players
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:jungle_e/robattle players @a[scores={Stage=54}]
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:jungle_e/robattle value 3600
tag @s[tag=add_bossbar] remove add_bossbar
execute as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.jungle_e"}]}'}}}}
execute as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,type=!minecraft:player] unless entity @s[scores={Stage=54}] run scoreboard players set @s Stage 54
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_e/custom
execute if entity @s[tag=clear_stage] positioned -1908 51 -200 run function medabots_server:stage/clear