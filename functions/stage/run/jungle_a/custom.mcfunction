execute store result score #temp Time run bossbar get medabots_server:jungle_a/time value
execute store result bossbar medabots_server:jungle_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.jungle","with":[{"text":"A"}]}]}'}}}}
execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=3}] run scoreboard players set @s Stage 3
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/jungle_a/custom
execute if entity @s[tag=clear_stage] positioned -1673 51 -148 run function medabots_server:stage/clear