execute store result score #temp Time run bossbar get medabots_server:rock_f/time value
execute store result bossbar medabots_server:rock_f/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1919,y=42,z=-696,dx=60,dy=7,dz=60,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.rock_f"}]}'}}}}
execute as @e[x=-1919,y=42,z=-696,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=60}] run scoreboard players set @s Stage 60
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/rock_f/custom
execute if entity @s[tag=clear_stage] positioned -1890 51 -666 run function medabots_server:stage/clear