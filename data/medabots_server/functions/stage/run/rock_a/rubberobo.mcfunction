execute store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1597 44 -159 minecraft:lime_wool run scoreboard players set @e[x=-1585.5,y=45,z=-164.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1617 44 -156 minecraft:blue_wool run scoreboard players set @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1617 44 -156 minecraft:light_blue_wool run scoreboard players set @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 2
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/rock_a
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/rock_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_rock_a=true,rubberobo_leaves_rock_a=false}}] add dialog_infinity_rubberobo_leaves_rock_a
execute if entity @s[tag=clear_stage] positioned -1604 51 -149 run function medabots_server:stage/clear
