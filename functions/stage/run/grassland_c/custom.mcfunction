execute store result score #temp Time run bossbar get medabots_server:grassland_c/time value
execute store result bossbar medabots_server:grassland_c/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"C"}]}]}'}}}}
execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=23}] run scoreboard players set @s Stage 23
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/grassland_c/custom
execute if entity @s[tag=clear_stage] positioned -1539 50 -449 run function medabots_server:stage/clear