execute unless entity @e[scores={Stage=22},tag=hide_normal_time] run bossbar set medabots_server:paradise_b/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=22},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_b/time value
execute unless entity @e[scores={Stage=22},tag=hide_normal_time] store result bossbar medabots_server:paradise_b/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=22},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:paradise_b/robattle value
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if entity @e[scores={Stage=22,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:paradise_b/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=22},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/paradise_b
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1645.5,y=45,z=-631.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1644.5,y=45,z=-628.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1642.5,y=45,z=-622.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1648.5,y=45,z=-612.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players remove @e[x=-1635.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=-1635.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players add @e[x=-1653.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run tag @e[x=-1653.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players add @e[x=-1635.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=-1635.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players remove @e[x=-1653.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] Moving 1
execute if entity @e[x=-1637.5,y=45,z=-635.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run tag @e[x=-1653.5,y=45,z=-634.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=changed] remove changed
execute if block -1618 45 -589 minecraft:iron_trapdoor[open=true] if block -1615 45 -593 minecraft:air if entity @s[x=-1619,y=45,z=-592,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/0
execute if entity @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1617.5,y=45,z=-588.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1609.5,y=45,z=-590.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1656 45 -589 minecraft:iron_trapdoor[open=true] if block -1659 45 -586 minecraft:air if entity @s[x=-1658,y=45,z=-589,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/1
execute if entity @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1656.5,y=45,z=-588.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1657.5,y=45,z=-582.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1650 45 -600 minecraft:iron_trapdoor[open=true] if block -1648 45 -601 minecraft:air if entity @s[x=-1651,y=45,z=-603,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/2
execute if entity @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1649.5,y=45,z=-599.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1651.5,y=45,z=-601.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1644 45 -607 minecraft:iron_trapdoor[open=true] if block -1646 45 -609 minecraft:air if entity @s[x=-1645,y=44,z=-610,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/3
execute if entity @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1..2}]
execute if entity @s[scores={BattlingMedabots=1,State=1..}] as @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,scores={Dialog=81}] unless entity @e[tag=mission_entity,scores={Stage=22}] run tag @s remove run_until_the_time_is_up
execute if entity @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run title @s title {"translate":"medabots_server:message.stage.mission.complete","color":"green"}
execute if entity @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run scoreboard players set @e[x=-1643.5,y=45,z=-606.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up] run bossbar set medabots_server:paradise_b/robattle players
kill @e[x=-1640.5,y=45,z=-608.5,distance=..0.7,tag=mission,type=minecraft:area_effect_cloud,tag=!run_until_the_time_is_up]
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block -1659 45 -628 minecraft:iron_trapdoor[open=true] if entity @s[x=-1661,y=45,z=-628,dx=3,dy=3,dz=3] run function medabots_server:stage/create/paradise_b/second_go_battle/4
execute if entity @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=22,Medabot=0..,State=1..2}]
execute as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 22
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/paradise_b
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/paradise_b_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:paradise_b/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1634 51 -607 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots