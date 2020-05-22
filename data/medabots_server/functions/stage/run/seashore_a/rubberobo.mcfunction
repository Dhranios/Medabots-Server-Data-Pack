execute store result score #temp Time run bossbar get medabots_server:seashore_a/time value
execute store result bossbar medabots_server:seashore_a/time value run scoreboard players operation #temp Time += #1 Constants
scoreboard players reset #temp Time
execute if entity @e[x=-1536.5,y=45,z=-186.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1550.5,y=45,z=-193.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1548.5,y=45,z=-185.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1532.5,y=45,z=-195.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1533.5,y=45,z=-205.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1550.5,y=45,z=-205.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1533.5,y=45,z=-205.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1550.5,y=45,z=-205.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1533.5,y=45,z=-206.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1562.5,y=45,z=-234.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1514.5,y=45,z=-229.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute as @e[x=-1570,y=43,z=-247,dx=63,dy=7,dz=63] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 4
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/seashore_a
advancement grant @s[tag=clear_stage] only medabots_server:stages/wave_1/seashore_a_rubberobo
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/infinity={rubberobo_enters_seashore_a=true,rubberobo_leaves_seashore_a=false}}] add dialog_infinity_rubberobo_leaves_seashore_a
execute if entity @s[tag=clear_stage] positioned -1539 51 -216 run function medabots_server:stage/clear
