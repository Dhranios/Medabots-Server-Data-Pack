execute if entity @e[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=62,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1985 43 -223 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}
execute as @e[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=62}] run scoreboard players set @s Stage 62
execute as @e[scores={Stage=62},tag=practise_battle] run tag @e[scores={Stage=62},tag=medabot] add practise_robattle
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/final_destination_2
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/final_destination_2
scoreboard players add @s[scores={BattlingMedabots=1,Battle=1..}] KillStreak 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1985 43 -196 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots

execute as @e[scores={Stage=62},tag=!dying] at @s run teleport @s[y=0,dy=10] -2041 52 -220