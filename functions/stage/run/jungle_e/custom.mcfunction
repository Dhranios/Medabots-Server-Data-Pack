execute store result score #temp Time run bossbar get medabots_server:jungle_e/time value
execute store result bossbar medabots_server:jungle_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"E"}]}]}'}}}}
execute as @e[x=-1955,y=0,z=-247,dx=95,dy=49,dz=96,type=!minecraft:player] unless entity @s[scores={Stage=54}] run scoreboard players set @s Stage 54
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_e/custom
execute if entity @s[tag=clear_stage] positioned -1908 51 -200 run function medabots_server:stage/clear