execute store result score #temp Time run bossbar get medabots_server:paradise_a/time value
execute store result bossbar medabots_server:paradise_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,tag=build_stage,limit=1] run data merge entity @s {Item:{tag:{display:{Name:'{"italic":false,"color":"white","translate":"medabots_server:item.custom_stage","with":[{"translate":"medabots_server:location.paradise","with":[{"text":"A"}]}]}'}}}}
execute as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=21}] run scoreboard players set @s Stage 21
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/paradise_a/custom
execute if entity @s[tag=clear_stage] positioned -1714 51 -683 run function medabots_server:stage/clear