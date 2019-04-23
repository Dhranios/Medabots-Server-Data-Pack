execute if entity @s[scores={Death=1..}] run function medabots_server:stage/clean_up/rock_a/rubberobo
execute store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1597 44 -159 minecraft:lime_wool run tag @e[x=-1585.5,y=45,z=-164.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1617 44 -156 minecraft:blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1617 44 -156 minecraft:light_blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=open] remove open
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=2}] run scoreboard players set @s Stage 2
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] if entity @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/rock_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run stopsound @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] music
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run playsound medabots_server:music.stage.stage_end music @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] -1603 51 -149 14
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] Battle 0
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] MusicType 1
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run scoreboard players set @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] Music 299
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run advancement grant @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/rock_a_rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=!minecraft:player] run teleport @s[x=-1600.5,y=45,z=-175.5,distance=..0.7,tag=hostile,gamemode=adventure] -1603 51 -149 -180 0