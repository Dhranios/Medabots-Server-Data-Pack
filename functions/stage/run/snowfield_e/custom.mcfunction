execute store result score #temp Time run bossbar get medabots_server:snowfield_e/time value
execute store result bossbar medabots_server:snowfield_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1905,y=42,z=-438,dx=79,dy=7,dz=78,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.snowfield_e"}]}'}}}}
execute as @e[x=-1905,y=42,z=-438,dx=79,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=56}] run scoreboard players set @s Stage 56
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/snowfield_e/custom
execute if entity @s[tag=clear_stage] positioned -1866 51 -399 run function medabots_server:stage/clear