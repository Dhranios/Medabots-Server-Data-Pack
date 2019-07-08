execute store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"A"}]}]}'}}}}
execute as @e[x=-1570,y=42,z=-247,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/seashore_a/custom
execute if entity @s[tag=clear_stage] positioned -1539 51 -216 run function medabots_server:stage/clear