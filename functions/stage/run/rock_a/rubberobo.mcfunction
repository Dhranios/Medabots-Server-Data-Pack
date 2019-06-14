execute store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1597 44 -159 minecraft:lime_wool run tag @e[x=-1585.5,y=45,z=-164.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1617 44 -156 minecraft:blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1617 44 -156 minecraft:light_blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=open] remove open
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=2}] run scoreboard players set @s Stage 2
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=minecraft:zombie] if entity @s[x=-1601,y=45,z=-175,dy=4,tag=hostile,gamemode=adventure] run function medabots_server:stage/clean_up/rock_a/rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=minecraft:zombie] run advancement grant @s[x=-1601,y=45,z=-175,dy=4,tag=hostile,gamemode=adventure] only medabots_server:stages/wave_1/rock_a_rubberobo
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=minecraft:zombie] run tag @s[x=-1601,y=45,z=-175,dy=4,tag=hostile,gamemode=adventure,advancements={medabots_server:wave_1/story_progression={rubberobo_enters_rock_a=true,rubberobo_leaves_rock_a=false}}] add dialog_infinity_rubberobo_leaves_rock_a
execute unless entity @e[tag=rubberobo,scores={Stage=2},type=minecraft:zombie] if entity @s[x=-1601,y=45,z=-175,dy=4,tag=hostile,gamemode=adventure] positioned -1604 51 -149 run function medabots_server:stage/clear
