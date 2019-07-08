execute store result score #temp Time run bossbar get medabots_server:laboratory_c/time value
execute store result bossbar medabots_server:laboratory_c/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"C"}]}]}'}}}}
execute as @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,type=!minecraft:player] unless entity @s[scores={Stage=28}] run scoreboard players set @s Stage 28
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/laboratory_c/custom
execute if entity @s[tag=clear_stage] positioned -1586 50 -597 run function medabots_server:stage/clear