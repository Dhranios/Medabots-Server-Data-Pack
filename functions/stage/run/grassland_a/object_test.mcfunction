execute store result score #temp Time run bossbar get medabots_server:grassland_a/time value
execute store result bossbar medabots_server:grassland_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute as @e[x=-1570,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=1}] run scoreboard players set @s Stage 1
execute unless entity @e[scores={Stage=1},tag=rubberobo,type=!minecraft:player] if entity @s[x=-1516,y=45,z=-174,dy=4,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/grassland_a/object_test
execute unless entity @e[scores={Stage=1},tag=rubberobo,type=!minecraft:player] if entity @s[x=-1516,y=45,z=-174,dy=4,tag=hostile,gamemode=adventure] positioned -1539 51 -151 run function medabots_server:stage/clear
