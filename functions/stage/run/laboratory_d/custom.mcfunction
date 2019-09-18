execute store result score #temp Time run bossbar get medabots_server:laboratory_d/time value
execute store result bossbar medabots_server:laboratory_d/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.laboratory_d"}]}'}}}}
execute as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=35}] run scoreboard players set @s Stage 35
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/laboratory_d/custom
execute if entity @s[tag=clear_stage] positioned -1827 50 -767 run function medabots_server:stage/clear