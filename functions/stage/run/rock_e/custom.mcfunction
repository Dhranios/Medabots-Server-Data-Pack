execute unless entity @e[scores={Stage=53},tag=hide_normal_time] run bossbar set medabots_server:rock_e/time players @s[scores={Battle=1..}]
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/time value
execute unless entity @e[scores={Stage=53},tag=hide_normal_time] store result bossbar medabots_server:rock_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_e/robattle value
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if entity @e[scores={Stage=53,Medabot=0..,Battle=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=53},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={Battle=0},tag=!stage_builder] run function medabots_server:stage/clean_up/rock_e/custom
execute if entity @s[scores={Battle=0},tag=!stage_builder] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @s[tag=remove_bossbar] run bossbar set medabots_server:rock_e/robattle players
tag @s[tag=remove_bossbar] remove remove_bossbar
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:rock_e/time players
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:rock_e/robattle players @a[scores={Stage=53}]
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:rock_e/robattle value 3600
tag @s[tag=add_bossbar] remove add_bossbar
execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=build_stage,type=minecraft:item,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.rock_e"}]}'}}}}
execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=53}] run scoreboard players set @s Stage 53
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/rock_e/custom
execute if entity @s[tag=clear_stage] positioned -1860 51 -298 run function medabots_server:stage/clear