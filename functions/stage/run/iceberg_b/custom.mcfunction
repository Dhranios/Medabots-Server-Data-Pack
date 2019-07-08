execute store result score #temp Time run bossbar get medabots_server:iceberg_b/time value
execute store result bossbar medabots_server:iceberg_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"B"}]}]}'}}}}
execute as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,type=!minecraft:player] unless entity @s[scores={Stage=15}] run scoreboard players set @s Stage 15
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/iceberg_b/custom
execute if entity @s[tag=clear_stage] positioned -1795 50 -394 run function medabots_server:stage/clear