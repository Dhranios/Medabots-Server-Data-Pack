execute store result score #temp Time run bossbar get medabots_server:boxer/time value
execute store result bossbar medabots_server:boxer/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.boxer"}]}'}}}}
execute as @e[x=-1921,y=42,z=-603,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=29}] run scoreboard players set @s Stage 29
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/boxer/custom
execute if entity @s[tag=clear_stage] positioned -1890 50 -571 run function medabots_server:stage/clear