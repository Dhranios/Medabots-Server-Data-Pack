execute store result score #temp Time run bossbar get medabots_server:laboratory_b/time value
execute store result bossbar medabots_server:laboratory_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"B"}]}]}'}}}}
execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=18}] run scoreboard players set @s Stage 18
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/laboratory_b/custom
execute if entity @s[tag=clear_stage] positioned -1727 50 -575 run function medabots_server:stage/clear