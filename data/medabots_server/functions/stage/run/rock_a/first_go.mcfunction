execute unless entity @e[scores={Stage=2},tag=hide_normal_time] run bossbar set medabots_server:rock_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=2},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute unless entity @e[scores={Stage=2},tag=hide_normal_time] store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=2},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_a/robattle value
execute if entity @e[scores={Stage=2},tag=hide_normal_time] if entity @e[scores={Stage=2,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=2},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/rock_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if entity @e[x=39.5,y=53,z=21.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=50.5,y=53,z=16.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if entity @e[x=19.5,y=53,z=24.5,distance=..0.7,tag=floor_switch,type=minecraft:armor_stand,scores={Time=1..}] run scoreboard players set @e[x=19.5,y=53,z=13.5,distance=..0.7,tag=door,type=minecraft:armor_stand,scores={PowerAmount=0}] PowerAmount 1
execute if block 20 53 13 minecraft:iron_trapdoor[open=true] if entity @s[x=20,y=53,z=12,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_a/first_go_battle/0
execute if entity @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=2,Medabot=0..,State=1}]
execute as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/rock_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/rock_a_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_a/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 32 59 31 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots