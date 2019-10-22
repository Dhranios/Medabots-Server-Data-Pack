execute store result score #temp Time run bossbar get medabots_server:seashore_c/time value
execute store result bossbar medabots_server:seashore_c/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.seashore_c"}]}'}}}}
execute as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=25}] run scoreboard players set @s Stage 25
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/seashore_c/custom
execute if entity @s[tag=clear_stage] positioned -1541 50 -578 run function medabots_server:stage/clear