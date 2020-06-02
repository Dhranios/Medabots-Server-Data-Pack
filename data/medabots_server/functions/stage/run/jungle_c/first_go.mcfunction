execute unless entity @e[scores={Stage=24},tag=hide_normal_time] run bossbar set medabots_server:jungle_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=24},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_c/time value
execute unless entity @e[scores={Stage=24},tag=hide_normal_time] store result bossbar medabots_server:jungle_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=24},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:jungle_c/robattle value
execute if entity @e[scores={Stage=24},tag=hide_normal_time] if entity @e[scores={Stage=24,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:jungle_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=24},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=24},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/jungle_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1533.5,y=44,z=-524.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-510.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1533.5,y=44,z=-524.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-510.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1533.5,y=44,z=-524.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1539.5,y=44,z=-540.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1534.5,y=44,z=-533.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-511.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1534.5,y=44,z=-533.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-511.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1539.5,y=44,z=-540.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1534.5,y=44,z=-533.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1515.5,y=44,z=-530.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-510.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1515.5,y=44,z=-530.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-512.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1515.5,y=44,z=-530.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1514.5,y=44,z=-510.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1514.5,y=44,z=-512.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1515.5,y=44,z=-530.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1523.5,y=44,z=-526.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1524.5,y=44,z=-527.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1523.5,y=44,z=-526.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1524.5,y=44,z=-527.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1566.5,y=44,z=-499.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1559.5,y=44,z=-488.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1567.5,y=44,z=-515.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1559.5,y=44,z=-488.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1566.5,y=44,z=-499.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1567.5,y=44,z=-515.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1559.5,y=44,z=-488.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1539.5,y=44,z=-533.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1539.5,y=44,z=-533.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1537.5,y=44,z=-534.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1537.5,y=44,z=-534.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1541.5,y=44,z=-535.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1541.5,y=44,z=-535.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1538.5,y=44,z=-537.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1538.5,y=44,z=-537.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1515.5,y=44,z=-537.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1515.5,y=44,z=-537.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1520.5,y=44,z=-535.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1520.5,y=44,z=-535.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1518.5,y=44,z=-534.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1518.5,y=44,z=-534.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1515.5,y=44,z=-533.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1515.5,y=44,z=-533.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1519.5,y=44,z=-531.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1531.5,y=44,z=-523.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1519.5,y=44,z=-531.5,distance=..0.7,tag=action_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if block -1522 44 -496 minecraft:iron_trapdoor[open=true] if block -1523 44 -488 minecraft:black_stained_glass if entity @s[x=-1524,y=44,z=-496,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_c/first_go_battle/0
execute if entity @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=24,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=24}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1522.5,y=44,z=-495.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1522.5,y=44,z=-487.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:jungle_c/robattle players
kill @e[x=-1518.5,y=44,z=-490.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1541 44 -510 minecraft:iron_trapdoor[open=true] if block -1567 44 -533 minecraft:air if entity @s[x=-1544,y=44,z=-512,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_c/first_go_battle/1
execute if entity @e[x=-1545.5,y=44,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=24,Medabot=0..,State=1..2}]
execute if entity @e[x=-1545.5,y=44,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[scores={Stage=24},tag=guard,type=minecraft:creeper,tag=mission_entity] run tag @s add mission_success
execute if entity @s[tag=mission_success] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @s[tag=mission_success] run scoreboard players set @e[x=-1540.5,y=44,z=-510.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @s[tag=mission_success] run kill @e[x=-1545.5,y=44,z=-511.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud]
execute if entity @s[tag=mission_success] run tag @e[scores={Stage=24,Medabot=0..,State=1..},type=minecraft:skeleton] add dead
execute if entity @s[tag=mission_success] as @a[scores={Stage=24,Medabot=0..,State=1..2},tag=enemy_medabot] run function medabots_server:stage/exit/enforced
execute if entity @s[tag=mission_success] run bossbar set medabots_server:jungle_c/robattle players
tag @s[tag=mission_success] remove mission_success
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1552 44 -524 minecraft:iron_trapdoor[open=true] if entity @s[x=-1553,y=44,z=-528,dx=3,dy=3,dz=3] run function medabots_server:stage/create/jungle_c/first_go_battle/2
execute if entity @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=24,Medabot=0..,State=1..2}]
execute as @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 24
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/jungle_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/jungle_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:jungle_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={krosserdog_saved=true,totalizer_saved=false}}] add dialog_infinity_totalizer_saved
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1541 50 -515 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots