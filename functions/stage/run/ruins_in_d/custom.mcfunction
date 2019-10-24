execute unless entity @e[scores={Stage=34},tag=hide_normal_time] run bossbar set medabots_server:ruins_in_d/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/time value
execute unless entity @e[scores={Stage=34},tag=hide_normal_time] store result bossbar medabots_server:ruins_in_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_in_d/robattle value
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if entity @e[scores={Stage=34,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_in_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=34},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/ruins_in_d/custom
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @s[tag=remove_bossbar] run bossbar set medabots_server:ruins_in_d/robattle players
tag @s[tag=remove_bossbar] remove remove_bossbar
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:ruins_in_d/time players
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:ruins_in_d/robattle players @a[scores={Stage=34}]
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:ruins_in_d/robattle value 3600
tag @s[tag=add_bossbar] remove add_bossbar
execute as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_in_d"}]}'}}}}
execute as @e[x=-1793,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=34}] run scoreboard players set @s Stage 34
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_in_d/custom
execute if entity @s[tag=clear_stage] positioned -1763 50 -755 run function medabots_server:stage/clear