execute store result score #temp Time run bossbar get medabots_server:jungle_d/time value
execute store result bossbar medabots_server:jungle_d/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1665,y=42,z=-768,dx=61,dy=7,dz=61,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.jungle_d"}]}'}}}}
execute as @e[x=-1665,y=42,z=-768,dx=61,dy=7,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=31}] run scoreboard players set @s Stage 31
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_d/custom
execute if entity @s[tag=clear_stage] positioned -1635 51 -738 run function medabots_server:stage/clear