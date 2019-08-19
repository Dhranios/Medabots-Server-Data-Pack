execute store result score #temp Time run bossbar get medabots_server:iceberg_d/time value
execute store result bossbar medabots_server:iceberg_d/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"D"}]}]}'}}}}
execute as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=33}] run scoreboard players set @s Stage 33
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/iceberg_d/custom
execute if entity @s[tag=clear_stage] positioned -1700 50 -769 run function medabots_server:stage/clear