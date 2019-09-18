execute store result score #temp Time run bossbar get medabots_server:ruins_out_b/time value
execute store result bossbar medabots_server:ruins_out_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.ruins_out_b"}]}'}}}}
execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_b/custom
execute if entity @s[tag=clear_stage] positioned -1813 51 -489 run function medabots_server:stage/clear