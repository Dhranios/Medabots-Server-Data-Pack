execute unless entity @e[scores={Stage=19},tag=hide_normal_time] run bossbar set medabots_server:park_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=19},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:park_a/time value
execute unless entity @e[scores={Stage=19},tag=hide_normal_time] store result bossbar medabots_server:park_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=19},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:park_a/robattle value
execute if entity @e[scores={Stage=19},tag=hide_normal_time] if entity @e[scores={Stage=19,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:park_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=19},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/park_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=-1805.5,y=45,z=-554.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1806.5,y=45,z=-556.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1784.5,y=45,z=-584.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=-1799.5,y=45,z=-567.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1799.5,y=45,z=-567.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1784.5,y=45,z=-584.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1785.5,y=45,z=-582.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1777.5,y=45,z=-609.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1777.5,y=45,z=-585.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1774.5,y=45,z=-582.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1774.5,y=45,z=-583.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1774.5,y=45,z=-582.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1790.5,y=45,z=-584.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1812.5,y=45,z=-630.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=-1839.5,y=45,z=-625.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=-1842.5,y=45,z=-587.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=-1841.5,y=45,z=-551.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=-1811.5,y=45,z=-548.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] if entity @e[x=-1768.5,y=45,z=-568.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1806.5,y=45,z=-570.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=-1799.5,y=45,z=-567.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=-1795.5,y=45,z=-567.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=-1799.5,y=45,z=-567.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=-1795.5,y=45,z=-567.5,distance=..0.7,tag=press_wall,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1794 45 -585 minecraft:iron_trapdoor[open=true] if entity @s[x=-1797,y=45,z=-587,dx=3,dy=3,dz=3] run function medabots_server:stage/create/park_a/second_go_battle/0
execute if entity @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=19,Medabot=0..,State=1..2}]
execute as @e[x=-1854,y=0,z=-633,dx=91,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 19
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/park_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/park_a_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:park_a/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1809 51 -587 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots