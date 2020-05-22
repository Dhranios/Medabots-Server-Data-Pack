execute unless entity @e[scores={Stage=58},tag=hide_normal_time] run bossbar set medabots_server:ruins_out_e/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=58},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_e/time value
execute unless entity @e[scores={Stage=58},tag=hide_normal_time] store result bossbar medabots_server:ruins_out_e/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=58},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:ruins_out_e/robattle value
execute if entity @e[scores={Stage=58},tag=hide_normal_time] if entity @e[scores={Stage=58,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:ruins_out_e/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=58},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/ruins_out_e
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1886.5,y=45,z=-445.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1879.5,y=45,z=-446.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1886.5,y=45,z=-445.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1861.5,y=45,z=-445.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1886.5,y=45,z=-445.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1861.5,y=45,z=-446.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1861.5,y=45,z=-443.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1902.5,y=45,z=-445.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1871.5,y=45,z=-482.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1861.5,y=45,z=-472.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1871.5,y=45,z=-482.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1861.5,y=45,z=-472.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1889.5,y=45,z=-471.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1867.5,y=45,z=-484.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1889.5,y=45,z=-471.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1867.5,y=45,z=-484.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1877.5,y=45,z=-529.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1884.5,y=45,z=-452.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1877.5,y=45,z=-529.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1884.5,y=45,z=-452.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1877.5,y=45,z=-529.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1888.5,y=45,z=-530.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1877.5,y=45,z=-529.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1888.5,y=45,z=-530.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1910.5,y=45,z=-482.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1920.5,y=45,z=-472.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1910.5,y=45,z=-482.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1920.5,y=45,z=-472.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1892.5,y=45,z=-471.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1915.5,y=45,z=-484.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1892.5,y=45,z=-471.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1915.5,y=45,z=-484.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1929.5,y=45,z=-507.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1897.5,y=45,z=-452.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1929.5,y=45,z=-507.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1897.5,y=45,z=-452.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1929.5,y=45,z=-507.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1893.5,y=45,z=-530.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1929.5,y=45,z=-507.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1893.5,y=45,z=-530.5,distance=..0.7,tag=alarm,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1890.5,y=45,z=-481.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-452.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1867 45 -513 minecraft:iron_trapdoor[open=true] if block -1892 45 -512 minecraft:black_stained_glass if entity @s[x=-1868,y=45,z=-516,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/0
execute if entity @e[x=-1867.5,y=45,z=-523.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1866.5,y=45,z=-512.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-511.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1917 45 -513 minecraft:iron_trapdoor[open=true] if block -1892 45 -513 minecraft:black_stained_glass if entity @s[x=-1918,y=45,z=-516,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/1
execute if entity @e[x=-1913.5,y=45,z=-520.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1916.5,y=45,z=-512.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-512.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1905 45 -485 minecraft:iron_trapdoor[open=true] if block -1891 45 -508 minecraft:black_stained_glass if entity @s[x=-1906,y=45,z=-488,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/2
execute if entity @e[x=-1901.5,y=45,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1904.5,y=45,z=-484.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1890.5,y=45,z=-507.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1891 45 -508 minecraft:iron_trapdoor[open=true] if block -1892 45 -514 minecraft:black_stained_glass if entity @s[x=-1893,y=45,z=-508,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/3
execute if entity @e[x=-1891.5,y=45,z=-500.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1890.5,y=45,z=-507.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-513.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1892 45 -453 minecraft:iron_trapdoor[open=true] if block -1892 45 -471 minecraft:black_stained_glass if entity @s[x=-1893,y=45,z=-456,dx=3,dy=3,dz=3] run function medabots_server:stage/create/ruins_out_e/dev_fvbico_battle/4
execute if entity @e[x=-1893.5,y=45,z=-463.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=58,Medabot=0..,State=1..2}]
title @s[scores={BattlingMedabots=1,State=1..}] title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-452.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run scoreboard players set @e[x=-1891.5,y=45,z=-470.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run kill @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 58
execute if entity @s[tag=clear_stage] run function medabots_server:stage/clean_up/ruins_out_e
advancement grant @s[tag=clear_stage] only medabots_server:developer_challenge/ruins_out_e_fvbico
tag @s[tag=clear_stage,advancements={medabots_server:story_progression/other={ruins_out_e_fvbico=true,ruins_out_e_fvbico_cleared=false}}] add dialog_other_ruins_out_e_fvbico_cleared
execute if entity @s[tag=clear_stage] positioned -1892 51 -489 run function medabots_server:stage/clear