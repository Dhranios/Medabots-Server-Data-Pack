execute store result score #temp Time run bossbar get medabots_server:rock_e/time value
execute store result bossbar medabots_server:rock_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.rock","with":[{"text":"E"}]}]}'}}}}
execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=53}] run scoreboard players set @s Stage 53
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/rock_e/custom
execute if entity @s[tag=clear_stage] positioned -1860 51 -298 run function medabots_server:stage/clear