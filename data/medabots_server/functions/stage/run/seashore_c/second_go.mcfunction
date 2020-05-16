execute unless entity @e[scores={Stage=25},tag=hide_normal_time] run bossbar set medabots_server:seashore_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=25},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_c/time value
execute unless entity @e[scores={Stage=25},tag=hide_normal_time] store result bossbar medabots_server:seashore_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=25},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:seashore_c/robattle value
execute if entity @e[scores={Stage=25},tag=hide_normal_time] if entity @e[scores={Stage=25,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:seashore_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=25},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/seashore_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1565 43 -592 minecraft:lime_wool run scoreboard players set @e[x=-1541.5,y=44,z=-602.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1563 43 -582 minecraft:blue_wool run scoreboard players set @e[x=-1528.5,y=44,z=-585.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1563 43 -582 minecraft:light_blue_wool run scoreboard players set @e[x=-1528.5,y=44,z=-585.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block -1518 43 -565 minecraft:lime_wool run scoreboard players set @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1521 43 -556 minecraft:yellow_wool run scoreboard players set @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1518 43 -565 minecraft:green_wool if block -1521 43 -556 minecraft:orange_wool run scoreboard players set @e[x=-1520.5,y=44,z=-556.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=1}] PowerAmount 0
execute if block -1557 43 -596 minecraft:lime_wool run scoreboard players add @e[x=-1556.5,y=44,z=-594.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] Moving 1
execute if block -1557 43 -596 minecraft:lime_wool run tag @e[x=-1556.5,y=44,z=-594.5,distance=..0.7,tag=fan,type=minecraft:armor_stand,tag=!changed] add changed
execute if block -1541 43 -556 minecraft:lime_wool run scoreboard players set @e[x=-1567.5,y=44,z=-555.5,distance=..0.7,tag=laser_trap,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block -1530 44 -587 minecraft:iron_trapdoor[open=true] if entity @s[x=-1531,y=44,z=-590,dx=3,dy=3,dz=3] run function medabots_server:stage/create/seashore_c/second_go_battle/0
execute if entity @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=25,Medabot=0..,State=1..2}]
execute as @e[x=-1570,y=42,z=-608,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 25
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/seashore_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/seashore_c_second_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:seashore_c/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/get_score/time_damage_money
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1541 50 -578 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots