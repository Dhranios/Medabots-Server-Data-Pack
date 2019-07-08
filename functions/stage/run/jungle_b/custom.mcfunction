execute store result score #temp Time run bossbar get medabots_server:jungle_b/time value
execute store result bossbar medabots_server:jungle_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"B"}]}]}'}}}}
execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=12}] run scoreboard players set @s Stage 12
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_b/custom
execute if entity @s[tag=clear_stage] positioned -1620 51 -431 run function medabots_server:stage/clear