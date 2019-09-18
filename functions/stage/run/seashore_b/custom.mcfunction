execute store result score #temp Time run bossbar get medabots_server:seashore_b/time value
execute store result bossbar medabots_server:seashore_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.seashore_b"}]}'}}}}
execute as @e[x=-1762,y=42,z=-442,dx=94,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=13}] run scoreboard players set @s Stage 13
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/seashore_b/custom
execute if entity @s[tag=clear_stage] positioned -1715 51 -396 run function medabots_server:stage/clear