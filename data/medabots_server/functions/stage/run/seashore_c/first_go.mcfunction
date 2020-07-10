execute unless entity @e[scores={Stage=25},tag=hide_normal_time] run bossbar set medabots_server:seashore_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=25},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_c/time value
execute unless entity @e[scores={Stage=25},tag=hide_normal_time] store result bossbar medabots_server:seashore_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=25},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_c/robattle value
execute if entity @e[scores={Stage=25},tag=hide_normal_time] if entity @e[scores={Stage=25,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:seashore_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=25},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=60,dy=7,dz=60,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/seashore_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=5.5,y=53,z=17.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=28.5,y=53,z=5.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=7.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=41.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=7.5,y=53,z=26.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=41.5,y=53,z=22.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=52.5,y=53,z=43.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=49.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=49.5,y=53,z=52.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=49.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=52.5,y=53,z=43.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] if entity @e[x=49.5,y=53,z=52.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=49.5,y=53,z=51.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=12.5,y=53,z=12.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=13.5,y=53,z=12.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=12.5,y=53,z=12.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=..0}] run scoreboard players set @e[x=13.5,y=53,z=12.5,distance=..0.7,tag=hammer_punch,scores={PowerAmount=1}] PowerAmount 0
execute if entity @e[x=29.5,y=53,z=52.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=2.5,y=53,z=52.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 40 53 21 minecraft:iron_trapdoor[open=true] if entity @s[x=39,y=53,z=18,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_c/first_go_battle/0
execute if entity @e[x=0,y=51,z=0,dx=60,dy=7,dz=60,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=25,Medabot=0..,State=1..2}]
execute as @e[x=0,y=51,z=0,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 25
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/seashore_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/seashore_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:seashore_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={totalizer_saved=true,peppercat_saved=false}}] add dialog_infinity_peppercat_saved
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 29 59 30 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots