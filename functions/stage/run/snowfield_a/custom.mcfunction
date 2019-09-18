execute store result score #temp Time run bossbar get medabots_server:snowfield_a/time value
execute store result bossbar medabots_server:snowfield_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1668,y=43,z=-247,dx=105,dy=7,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.snowfield_a"}]}'}}}}
execute as @e[x=-1668,y=43,z=-247,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/snowfield_a/custom
execute if entity @s[tag=clear_stage] positioned -1620 51 -216 run function medabots_server:stage/clear