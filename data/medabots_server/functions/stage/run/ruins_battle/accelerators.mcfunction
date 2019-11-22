execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=49,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1994 45 -561 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_battle
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_jaxy=true,vs_jaxy_battle=false}}] add dialog_infinity_vs_jaxy_battle
tag @s[scores={BattlingMedabots=1,Battle=1..,KillStreak=3},tag=story_battle] add dialog_infinity_postgame_doctor_haru_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1997 51 -560 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots