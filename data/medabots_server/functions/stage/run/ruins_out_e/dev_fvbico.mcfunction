execute unless entity @e[scores={Stage=58},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_e/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=58},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_e/time value
execute unless entity @e[scores={Stage=58},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=58},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_e/robattle value
execute if entity @e[scores={Stage=58},tag=hide_normal_time] if entity @e[scores={Stage=58,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=58},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/ruins_out_e
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=35.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=42.5,y=53,z=89.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=35.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=60.5,y=53,z=90.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=35.5,y=53,z=90.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=60.5,y=53,z=89.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=60.5,y=53,z=92.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=19.5,y=53,z=89.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=50.5,y=53,z=53.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=60.5,y=53,z=63.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=50.5,y=53,z=53.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=60.5,y=53,z=63.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=32.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=54.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=32.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=54.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=44.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=37.5,y=53,z=83.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=44.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=37.5,y=53,z=83.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=44.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=33.5,y=53,z=5.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=44.5,y=53,z=6.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=33.5,y=53,z=5.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=11.5,y=53,z=53.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=1.5,y=53,z=63.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=11.5,y=53,z=53.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=1.5,y=53,z=63.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=6.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=29.5,y=53,z=64.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=6.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-7.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=24.5,y=53,z=83.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-7.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=24.5,y=53,z=83.5,distance=..0.7,tag=press_wall,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-7.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=28.5,y=53,z=5.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-7.5,y=53,z=28.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=28.5,y=53,z=5.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=31.5,y=53,z=54.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=30.5,y=53,z=83.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 55 53 23 minecraft:iron_trapdoor[open=true] if block 30 53 24 minecraft:black_stained_glass if entity @s[x=54,y=53,z=20,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/0
execute if entity @e[x=54.5,y=53,z=12.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=55.5,y=53,z=23.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=24.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 5 53 23 minecraft:iron_trapdoor[open=true] if block 30 53 23 minecraft:black_stained_glass if entity @s[x=4,y=53,z=20,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/1
execute if entity @e[x=8.5,y=53,z=15.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=5.5,y=53,z=23.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=23.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 17 53 51 minecraft:iron_trapdoor[open=true] if block 31 53 28 minecraft:black_stained_glass if entity @s[x=16,y=53,z=48,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/2
execute if entity @e[x=20.5,y=53,z=24.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=17.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=31.5,y=53,z=28.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 31 53 28 minecraft:iron_trapdoor[open=true] if block 30 53 22 minecraft:black_stained_glass if entity @s[x=29,y=53,z=28,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/3
execute if entity @e[x=30.5,y=53,z=35.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=31.5,y=53,z=28.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block 30 53 83 minecraft:iron_trapdoor[open=true] if block 30 53 65 minecraft:black_stained_glass if entity @s[x=29,y=53,z=80,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/4
execute if entity @e[x=28.5,y=53,z=72.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=83.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=30.5,y=53,z=65.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=0,y=50,z=0,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 58
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_e
advancement grant @s[tag=clear_stage] only medabots_server:developer_challenge/ruins_out_e_fvbico
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/other={ruins_out_e_fvbico=true,ruins_out_e_fvbico_cleared=false}}] add dialog_other_ruins_out_e_fvbico_cleared
execute if entity @s[tag=clear_stage] positioned 30 59 47 run function medabots_server:stage/clear