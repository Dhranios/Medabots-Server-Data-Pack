execute unless entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] run bossbar set medabots_server:laboratory_c/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_c/time value
execute unless entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] store result bossbar medabots_server:laboratory_c/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:laboratory_c/robattle value
execute if entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] store result bossbar medabots_server:laboratory_c/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,tag=mission] at @s run function medabots_server:stage/mission_time_up
execute if entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,scores={Medabot=0..,Battle=1..2,Stage=28},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/laboratory_c/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute if block -1586 44 -596 minecraft:iron_door[open=true] if entity @s[x=-1587,y=44,z=-599,dx=3,dy=3,dz=3] run function medabots_server:stage/create/laboratory_c/second_go_battle/0
execute if entity @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=28,Medabot=0..,Battle=1..2}]
execute as @e[x=-1596,y=42,z=-618,dx=22,dy=7,dz=44,type=!minecraft:player] unless entity @s[scores={Stage=28}] run scoreboard players set @s Stage 28
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/laboratory_c/second_go
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/laboratory_c_second_go
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run bossbar set medabots_server:laboratory_c/robattle players
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1586 50 -597 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots