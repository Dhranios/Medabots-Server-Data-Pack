execute store result score #temp Time run bossbar get medabots_server:iceberg_c/time value
execute store result bossbar medabots_server:iceberg_c/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"C"}]}]}'}}}}
execute as @e[x=-1570,y=42,z=-685,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=26}] run scoreboard players set @s Stage 26
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/iceberg_c/custom
execute if entity @s[tag=clear_stage] positioned -1541 50 -648 run function medabots_server:stage/clear