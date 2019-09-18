execute store result score #temp Time run bossbar get medabots_server:laboratory_a/time value
execute store result bossbar medabots_server:laboratory_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.laboratory_a"}]}'}}}}
execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/laboratory_a/custom
execute if entity @s[tag=clear_stage] positioned -1772 50 -285 run function medabots_server:stage/clear