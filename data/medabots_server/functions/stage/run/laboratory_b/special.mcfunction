execute unless entity @e[scores={Stage=18},tag=hide_normal_time] run bossbar set medabots_server:laboratory_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=18},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_b/time value
execute unless entity @e[scores={Stage=18},tag=hide_normal_time] store result bossbar medabots_server:laboratory_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=18},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_b/robattle value
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if entity @e[scores={Stage=18,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:laboratory_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=18},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/laboratory_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1702.5,y=44,z=-598.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1678.5,y=44,z=-612.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1702.5,y=44,z=-598.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1678.5,y=44,z=-612.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1750.5,y=44,z=-543.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1750.5,y=44,z=-543.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1726.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1726.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1698.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1698.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1670.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1750.5,y=44,z=-542.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1670.5,y=44,z=-542.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1757.5,y=44,z=-550.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1757.5,y=44,z=-550.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1758.5,y=44,z=-574.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-574.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1758.5,y=44,z=-602.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-602.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1758.5,y=44,z=-630.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1758.5,y=44,z=-550.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1758.5,y=44,z=-630.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block -1725 44 -559 minecraft:iron_trapdoor[open=true] if block -1701 44 -559 minecraft:black_stained_glass if entity @s[x=-1725,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/special_battle/0
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=18}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1724.5,y=44,z=-558.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1700.5,y=44,z=-559.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1701.5,y=44,z=-631.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:laboratory_b/robattle players
kill @e[x=-1712.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1697 44 -559 minecraft:iron_trapdoor[open=true] if block -1673 44 -559 minecraft:black_stained_glass if entity @s[x=-1697,y=44,z=-561,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/special_battle/1
execute if entity @e[x=-1684.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=-1684.5,y=44,z=-559.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1696.5,y=44,z=-558.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1672.5,y=44,z=-559.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1700.5,y=44,z=-631.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1743 44 -577 minecraft:iron_trapdoor[open=true] if block -1743 44 -601 minecraft:black_stained_glass if entity @s[x=-1744,y=44,z=-580,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/special_battle/2
execute if entity @e[x=-1743.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=-1743.5,y=44,z=-588.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] if entity @e[x=-1753.5,y=44,z=-585.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1731.5,y=44,z=-582.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1754.5,y=44,z=-592.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1738.5,y=44,z=-597.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1742.5,y=44,z=-576.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1743.5,y=44,z=-600.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1703.5,y=44,z=-631.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1743 44 -605 minecraft:iron_trapdoor[open=true] if block -1743 44 -629 minecraft:black_stained_glass if entity @s[x=-1744,y=44,z=-608,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/special_battle/3
execute if entity @e[x=-1743.5,y=44,z=-616.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute if entity @e[x=-1743.5,y=44,z=-616.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=18},tag=cannon,type=minecraft:husk,tag=mission_entity] run tag @s add mission_success
title @s[tag=mission_success] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1742.5,y=44,z=-604.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1743.5,y=44,z=-628.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1702.5,y=44,z=-631.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=18,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=18,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:laboratory_b/robattle players
execute if entity @s[tag=mission_success] run kill @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mission,type=minecraft:area_effect_cloud]
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1679 44 -614 minecraft:iron_trapdoor[open=true] if entity @s[x=-1680,y=44,z=-617,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_b/special_battle/4
execute if entity @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=18,Medabot=0..,State=1..2}]
execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 18
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/laboratory_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/laboratory_b_special
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:laboratory_b/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={harus_experiment=true,flame_tisala_is_yours=false}}] add dialog_infinity_flame_tisala_is_yours
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1727 50 -575 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots