execute if entity @s[scores={Battle=0}] run function medabots_server:stage/clean_up/rock_a/second_go
execute if entity @s[scores={Battle=0}] run function medabots_server:other/death
execute unless entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] run bossbar set medabots_server:rock_a/time players @s[scores={Battle=1..}]
execute unless entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:rock_a/time value
execute unless entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] store result bossbar medabots_server:rock_a/time value run scoreboard players operation #temp Time += #1 Constants
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] store result score #temp Time run bossbar get medabots_server:rock_a/robattle value
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] store result bossbar medabots_server:rock_a/robattle value if score #temp Time matches 1.. run scoreboard players operation #temp Time -= #1 Constants
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,scores={Medabot=0..,Battle=1..2,Stage=2},tag=enemy_medabot] if score #temp Time matches 0 as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] at @s run function medabots_server:stage/referee_decides
scoreboard players reset #temp Time
execute if block -1597 44 -159 minecraft:lime_wool run tag @e[x=-1585.5,y=45,z=-163.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1617 44 -156 minecraft:light_blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=open] remove open
execute if block -1617 44 -156 minecraft:blue_wool run tag @e[x=-1616.5,y=45,z=-166.5,distance=..0.7,tag=door,tag=!open] add open
execute if block -1616 46 -167 minecraft:iron_door[open=true] if entity @s[x=-1616,y=45,z=-168,dx=3,dy=3,dz=3] run function medabots_server:stage/create/rock_a/second_go_battle/0
execute if entity @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,tag=mr_referee] store result score @s BattlingMedabots if entity @e[scores={Stage=2,Medabot=0..,Battle=1..2}]
execute as @e[x=-1636,y=43,z=-180,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=2}] run scoreboard players set @s Stage 2
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/rock_a/second_go
stopsound @s[scores={BattlingMedabots=1}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1603 51 -149 14
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1}] only medabots_server:stages/wave_1/rock_a_second_go
teleport @s[scores={BattlingMedabots=1}] -1603 51 -149 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run bossbar set medabots_server:rock_a/robattle players
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots