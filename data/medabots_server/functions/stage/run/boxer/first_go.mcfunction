execute unless entity @e[scores={Stage=29},tag=hide_normal_time] run bossbar set medabots_server:boxer/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=29},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:boxer/time value
execute unless entity @e[scores={Stage=29},tag=hide_normal_time] store result bossbar medabots_server:boxer/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=29},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:boxer/robattle value
execute if entity @e[scores={Stage=29},tag=hide_normal_time] if entity @e[scores={Stage=29,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:boxer/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=29},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=29},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/boxer
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block 42 53 41 minecraft:iron_trapdoor[open=true] if block 45 53 32 minecraft:black_stained_glass if entity @s[x=41,y=53,z=42,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/0
execute if entity @e[x=49.5,y=53,z=49.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=42.5,y=53,z=41.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=45.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 45 53 32 minecraft:iron_trapdoor[open=true] if block 41 53 21 minecraft:black_stained_glass if entity @s[x=45,y=53,z=31,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/1
execute if entity @e[x=58.5,y=53,z=31.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=45.5,y=53,z=32.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=41.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 41 53 21 minecraft:iron_trapdoor[open=true] if block 32 53 18 minecraft:black_stained_glass if entity @s[x=42,y=53,z=19,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/2
execute if entity @e[x=49.5,y=53,z=14.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=41.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=32.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 32 53 18 minecraft:iron_trapdoor[open=true] if block 21 53 22 minecraft:black_stained_glass if entity @s[x=31,y=53,z=15,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/3
execute if entity @e[x=32.5,y=53,z=8.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=32.5,y=53,z=18.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=20.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 21 53 22 minecraft:iron_trapdoor[open=true] if block 18 53 31 minecraft:black_stained_glass if entity @s[x=19,y=53,z=18,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/4
execute if entity @e[x=14.5,y=53,z=14.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=21.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=18.5,y=53,z=30.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 18 53 31 minecraft:iron_trapdoor[open=true] if block 22 53 42 minecraft:black_stained_glass if entity @s[x=15,y=53,z=29,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/5
execute if entity @e[x=5.5,y=53,z=32.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=18.5,y=53,z=30.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=22.5,y=53,z=42.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=1}] PowerNeeded 0
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 22 53 42 minecraft:iron_trapdoor[open=true] if block 30 53 45 minecraft:iron_trapdoor[open=true] unless entity @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mr_referee,type=minecraft:armor_stand] if entity @s[x=18,y=53,z=41,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/6
execute if entity @e[x=14.5,y=53,z=49.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=22.5,y=53,z=42.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=45.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerNeeded=0}] PowerNeeded 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 22 53 42 minecraft:iron_trapdoor[open=true] if block 30 53 45 minecraft:black_stained_glass unless entity @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mr_referee,type=minecraft:armor_stand] if entity @s[x=22,y=53,z=41,dx=3,dy=3,dz=3] run function medabots_server:stage/create/boxer/first_go_battle/7
execute if entity @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=29,Medabot=0..,State=1..2}]
execute as @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 29
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/boxer
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/boxer_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:boxer/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={the_final_battle=true,victory=false}}] add dialog_infinity_victory
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 31 59 32 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots