execute store result score #temp Time run bossbar get medabots_server:ruins_out_a/time value
execute store result bossbar medabots_server:ruins_out_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"A"}]}]}'}}}}
execute as @e[x=-1634,y=42,z=-315,dx=127,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=7}] run scoreboard players set @s Stage 7
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_a/custom
execute if entity @s[tag=clear_stage] positioned -1570 51 -284 run function medabots_server:stage/clear