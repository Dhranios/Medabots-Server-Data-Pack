execute store result score #temp Time run bossbar get medabots_server:iceberg_e/time value
execute store result bossbar medabots_server:iceberg_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1997,y=41,z=-424,dx=88,dy=7,dz=91,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"E"}]}]}'}}}}
execute as @e[x=-1997,y=41,z=-424,dx=88,dy=7,dz=91,type=!minecraft:player] unless entity @s[scores={Stage=57}] run scoreboard players set @s Stage 57
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/iceberg_e/custom
execute if entity @s[tag=clear_stage] positioned -1954 50 -379 run function medabots_server:stage/clear