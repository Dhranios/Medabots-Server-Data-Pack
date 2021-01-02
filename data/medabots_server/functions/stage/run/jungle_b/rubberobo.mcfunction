execute unless entity @e[scores={Stage=12},tag=hide_normal_time] run bossbar set medabots_server:jungle_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=12},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_b/time value
execute unless entity @e[scores={Stage=12},tag=hide_normal_time] store result bossbar medabots_server:jungle_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=12},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_b/robattle value
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if entity @e[scores={Stage=12,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=8,z=0,dx=94,dy=50,dz=92,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=12},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=8,z=0,dx=94,dy=50,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/jungle_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=21.5,y=53,z=69.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=37.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=37.5,y=53,z=56.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=38.5,y=53,z=56.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=21.5,y=53,z=69.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=38.5,y=53,z=56.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=37.5,y=53,z=57.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=38.5,y=53,z=56.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=37.5,y=53,z=56.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=38.5,y=53,z=56.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=87.5,y=53,z=43.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=86.5,y=53,z=36.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=86.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=86.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=87.5,y=53,z=43.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=86.5,y=53,z=36.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=86.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=86.5,y=53,z=25.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=86.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=86.5,y=53,z=17.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=67.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=64.5,y=53,z=5.5,distance=..0.7,tag=action_floor,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 76 53 65 minecraft:iron_trapdoor[open=true] if block 87 53 60 minecraft:black_stained_glass if entity @s[x=74,y=53,z=65,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/0
execute if entity @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=12}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=75.5,y=53,z=65.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=87.5,y=53,z=60.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:jungle_b/robattle players
kill @e[x=82.5,y=53,z=68.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 65 53 9 minecraft:iron_trapdoor[open=true] if block 60 53 21 minecraft:black_stained_glass if entity @s[x=62,y=53,z=7,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/1
execute if entity @e[x=57.5,y=53,z=14.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=65.5,y=53,z=8.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=59.5,y=53,z=21.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=50.5,y=53,z=12.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=57.5,y=53,z=14.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 31 53 26 minecraft:iron_trapdoor[open=true] if entity @s[x=28,y=53,z=24,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_b/rubberobo_battle/2
execute if entity @e[x=0,y=8,z=0,dx=94,dy=50,dz=92,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=12,Medabot=0..,State=1}]
execute as @e[x=0,y=8,z=0,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 12
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/jungle_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/jungle_b_rubberobo
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={rubberobo_enters_jungle_b=true,rubberobo_leaves_jungle_b=false}}] add dialog_infinity_rubberobo_leaves_jungle_b
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 46 59 46 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots