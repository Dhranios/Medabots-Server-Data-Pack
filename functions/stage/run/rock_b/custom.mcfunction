execute store result score #temp Time run bossbar get medabots_server:rock_b/time value
execute store result bossbar medabots_server:rock_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.rock","with":[{"text":"B"}]}]}'}}}}
execute as @e[x=-1636,y=43,z=-382,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=11}] run scoreboard players set @s Stage 11
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/rock_b/custom
execute if entity @s[tag=clear_stage] positioned -1604 51 -351 run function medabots_server:stage/clear