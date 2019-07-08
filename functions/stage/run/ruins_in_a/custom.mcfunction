execute store result score #temp Time run bossbar get medabots_server:ruins_in_a/time value
execute store result bossbar medabots_server:ruins_in_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"A"}]}]}'}}}}
execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_in_a/custom
execute if entity @s[tag=clear_stage] positioned -1683 50 -259 run function medabots_server:stage/clear