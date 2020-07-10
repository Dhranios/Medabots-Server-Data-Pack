execute unless entity @e[scores={Stage=32},tag=hide_normal_time] run bossbar set medabots_server:snowfield_d/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=32},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_d/time value
execute unless entity @e[scores={Stage=32},tag=hide_normal_time] store result bossbar medabots_server:snowfield_d/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=32},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:snowfield_d/robattle value
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if entity @e[scores={Stage=32,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:snowfield_d/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=61,dy=7,dz=62,tag=mission,type=minecraft:area_effect_cloud] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[scores={Stage=32},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=50,z=0,dx=61,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/snowfield_d
execute if entity @s[scores={State=0}] run function medabots_server:other/death
scoreboard players reset #temp Time
execute if entity @e[x=3.5,y=53,z=48.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=7.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=8.5,y=53,z=16.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=6.5,y=53,z=9.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=8.5,y=53,z=16.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=14.5,y=53,z=30.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=8.5,y=53,z=16.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=26.5,y=53,z=39.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=49.5,y=53,z=47.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=50.5,y=53,z=53.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=37.5,y=53,z=3.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=38.5,y=53,z=20.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=45.5,y=53,z=48.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=43.5,y=53,z=50.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=44.5,y=53,z=53.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=42.5,y=53,z=51.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=46.5,y=53,z=53.5,distance=..0.7,tag=gas_floor,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block 39 53 19 minecraft:iron_trapdoor[open=true] if entity @s[x=39,y=53,z=18,dx=3,dy=3,dz=3] run function medabots_server:stage/create/snowfield_d/first_go_battle/0
execute if entity @e[x=0,y=50,z=0,dx=61,dy=7,dz=62,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=32,Medabot=0..,State=1..2}]
execute as @e[x=0,y=50,z=0,dx=61,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 32
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/snowfield_d
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/snowfield_d_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:snowfield_d/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 30 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots