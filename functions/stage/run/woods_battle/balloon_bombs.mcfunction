execute store result score @s BattlingMedabots if entity @e[scores={Stage=47,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee] run summon minecraft:armor_stand -1948 45 -610 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=47}] run scoreboard players set @s Stage 47
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/woods_battle/balloon_bombs
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:wave_1/story_progression={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] add dialog_infinity_gillgirls_jammy_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -617 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots