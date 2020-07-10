execute unless entity @e[scores={Stage=28},tag=hide_normal_time] run bossbar set medabots_server:laboratory_c/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=28},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_c/time value
execute unless entity @e[scores={Stage=28},tag=hide_normal_time] store result bossbar medabots_server:laboratory_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=28},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:laboratory_c/robattle value
execute if entity @e[scores={Stage=28},tag=hide_normal_time] if entity @e[scores={Stage=28,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:laboratory_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=28},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=0,y=51,z=0,dx=22,dy=7,dz=44,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/laboratory_c
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block 10 53 22 minecraft:iron_trapdoor[open=true] if entity @s[x=9,y=53,z=19,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_c/first_go_battle/0
execute if entity @e[x=0,y=51,z=0,dx=22,dy=7,dz=44,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=28,Medabot=0..,State=1..2}]
execute as @e[x=0,y=51,z=0,dx=22,dy=7,dz=44,type=!minecraft:player] unless entity @s[scores={Stage=0..}] run scoreboard players set @s Stage 28
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/laboratory_c
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/laboratory_c_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:laboratory_c/robattle players
tag @s[scores={BattlingMedabots=1,State=1..},advancements={medabots_server:story_progression/infinity={doctor_harus_research=true,doctor_haru_defeated=false}}] add dialog_infinity_doctor_haru_defeated
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned 10 59 21 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots