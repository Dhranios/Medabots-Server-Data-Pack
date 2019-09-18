execute store result score #temp Time run bossbar get medabots_server:ruins_in_e/time value
execute store result bossbar medabots_server:ruins_in_e/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-2015,y=41,z=-536,dx=91,dy=7,dz=94,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_in_e"}]}'}}}}
execute as @e[x=-2015,y=41,z=-536,dx=91,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=59}] run scoreboard players set @s Stage 59
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_in_e/custom
execute if entity @s[tag=clear_stage] positioned -1981 50 -478 run function medabots_server:stage/clear