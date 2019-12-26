execute unless entity @e[scores={Stage=10},tag=hide_normal_time] run bossbar set medabots_server:grassland_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=10},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_b/time value
execute unless entity @e[scores={Stage=10},tag=hide_normal_time] store result bossbar medabots_server:grassland_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=10},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:grassland_b/robattle value
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if entity @e[scores={Stage=10,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:grassland_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=10},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0},tag=!stage_builder] run function medabots_server:stage/clean_up/grassland_b
execute if entity @s[scores={State=0},tag=!stage_builder] run function medabots_server:other/death
execute if entity @s[tag=remove_bossbar] run bossbar set medabots_server:grassland_b/robattle players
tag @s[tag=remove_bossbar] remove remove_bossbar
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:grassland_b/time players
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:grassland_b/robattle players @a[scores={Stage=10}]
execute if entity @s[tag=add_bossbar] run bossbar set medabots_server:grassland_b/robattle value 3600
tag @s[tag=add_bossbar] remove add_bossbar
execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,tag=build_stage,type=minecraft:item,limit=1] run data modify entity @s Item.tag.display.Lore[0] set value '{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage.location","with":[{"translate":"medabots_server:location.grassland_b"}]}'
execute as @e[x=-1570,y=43,z=-414,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 10
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/grassland_b
execute if entity @s[tag=clear_stage] positioned -1540 51 -367 run function medabots_server:stage/clear