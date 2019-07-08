execute store result score #temp Time run bossbar get medabots_server:park_b/time value
execute store result bossbar medabots_server:park_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.park","with":[{"text":"B"}]}]}'}}}}
execute as @e[x=-1857,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=20}] run scoreboard players set @s Stage 20
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/park_b/custom
execute if entity @s[tag=clear_stage] positioned -1811 51 -683 run function medabots_server:stage/clear