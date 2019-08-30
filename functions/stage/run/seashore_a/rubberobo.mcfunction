execute store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if block -1537 44 -187 minecraft:lime_wool run scoreboard players set @e[x=-1550.5,y=45,z=-193.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1549 44 -186 minecraft:lime_wool run scoreboard players set @e[x=-1532.5,y=45,z=-195.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1534 44 -206 minecraft:light_blue_wool run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1551 44 -206 minecraft:lime_wool run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute if block -1534 44 -206 minecraft:blue_wool if block -1551 44 -206 minecraft:green_wool run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,scores={PowerAmount=1}] PowerAmount 0
execute if block -1563 44 -235 minecraft:lime_wool run scoreboard players set @e[x=-1514.5,y=45,z=-229.5,distance=..0.7,tag=door,scores={PowerAmount=0}] PowerAmount 1
execute as @e[x=-1570,y=43,z=-247,dx=63,dy=7,dz=63] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
execute if entity @s[tag=clear_stage,gamemode=adventure] run function medabots_server:stage/clean_up/seashore_a/rubberobo
advancement grant @s[tag=clear_stage,gamemode=adventure] only medabots_server:stages/wave_1/seashore_a_rubberobo
tag @s[tag=clear_stage,gamemode=adventure,advancements={medabots_server:story_progression/infinity={rubberobo_enters_seashore_a=true,rubberobo_leaves_seashore_a=false}}] add dialog_infinity_rubberobo_leaves_seashore_a
execute if entity @s[tag=clear_stage,gamemode=adventure] positioned -1539 51 -216 run function medabots_server:stage/clear
