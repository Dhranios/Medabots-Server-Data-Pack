execute unless entity @e[scores={Stage=2},tag=hide_normal_time] run bossbar set medabots_server:rock_a/time players @s[scores={State=1..}]
execute unless entity @e[scores={Stage=2},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute unless entity @e[scores={Stage=2},tag=hide_normal_time] store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[scores={Stage=2},tag=hide_normal_time] store result score #temp Time run bossbar get medabots_server:rock_a/robattle value
execute if entity @e[scores={Stage=2},tag=hide_normal_time] if entity @e[scores={Stage=2,Medabot=0..,State=1},tag=enemy_medabot,tag=!dying] store result bossbar medabots_server:rock_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[scores={Stage=2},tag=hide_normal_time] if score #temp Time matches 0 as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if entity @s[scores={State=0}] run function medabots_server:stage/clean_up/rock_a
execute if entity @s[scores={State=0}] run function medabots_server:other/death
execute if block -1597 44 -159 minecraft:lime_wool run scoreboard players set @e[x=-1585.5,y=45,z=-163.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1617 44 -156 minecraft:lime_wool run scoreboard players set @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,type=minecraft:area_effect_cloud,scores={PowerAmount=0}] PowerAmount 1
execute if block -1616 45 -167 minecraft:iron_door[open=true] if entity @s[x=-1616,y=45,z=-168,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_a/first_go_battle/0
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=2,Medabot=0..,State=1..2}]
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=2}] run scoreboard players set @s Stage 2
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/rock_a
advancement grant @s[scores={BattlingMedabots=1,State=1..}] only medabots_server:stages/wave_1/rock_a_first_go
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run bossbar set medabots_server:rock_a/robattle players
execute if entity @s[scores={BattlingMedabots=1,State=1..}] positioned -1604 51 -149 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots