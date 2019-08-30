execute store result score #temp Time run bossbar get medabots_server:ruins_out_e/time value
execute store result bossbar medabots_server:ruins_out_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1858,y=42,z=-247,dx=94,dy=7,dz=95,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"E"}]}]}'}}}}
execute as @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=58}] run scoreboard players set @s Stage 58
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/grassland_d/custom
execute if entity @s[tag=clear_stage] positioned -1892 51 -489 run function medabots_server:stage/clear