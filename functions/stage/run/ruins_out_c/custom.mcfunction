execute store result score #temp Time run bossbar get medabots_server:ruins_out_c/time value
execute store result bossbar medabots_server:ruins_out_c/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_out_c"}]}'}}}}
execute as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=27}] run scoreboard players set @s Stage 27
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_c/custom
execute if entity @s[tag=clear_stage] positioned -1635 50 -673 run function medabots_server:stage/clear