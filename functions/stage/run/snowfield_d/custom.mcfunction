execute store result score #temp Time run bossbar get medabots_server:snowfield_d/time value
execute store result bossbar medabots_server:snowfield_d/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.snowfield_d"}]}'}}}}
execute as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=32}] run scoreboard players set @s Stage 32
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/snowfield_d/custom
execute if entity @s[tag=clear_stage] positioned -1572 51 -784 run function medabots_server:stage/clear