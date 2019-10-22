execute if entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=61,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -2041 43 -223 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","not_7","no_overwrite"],Rotation:[0.0f,0.0f]}
execute as @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=61}] run scoreboard players set @s Stage 61
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/final_destination_1/empty
advancement grant @s[scores={BattlingMedabots=1,Battle=1..}] only medabots_server:stages/wave_1/final_destination_1
scoreboard players add @s[scores={BattlingMedabots=1,Battle=1..}] KillStreak 1
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -2041 43 -196 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots