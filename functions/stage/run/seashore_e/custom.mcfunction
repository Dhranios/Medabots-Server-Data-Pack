execute store result score #temp Time run bossbar get medabots_server:seashore_e/time value
execute store result bossbar medabots_server:seashore_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-2003,y=42,z=-329,dx=93,dy=7,dz=78,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.seashore_e"}]}'}}}}
execute as @e[x=-2003,y=42,z=-329,dx=93,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=55}] run scoreboard players set @s Stage 55
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/seashore_e/custom
execute if entity @s[tag=clear_stage] positioned -1957 51 -290 run function medabots_server:stage/clear