execute store result score #temp Time run bossbar get medabots_server:paradise_b/time value
execute store result bossbar medabots_server:paradise_b/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.paradise_b"}]}'}}}}
execute as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=22}] run scoreboard players set @s Stage 22
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/paradise_b/custom
execute if entity @s[tag=clear_stage] positioned -1634 51 -607 run function medabots_server:stage/clear