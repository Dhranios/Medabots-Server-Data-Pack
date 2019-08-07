execute store result score @s BattlingMedabots if entity @e[scores={Stage=50,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1936 45 -575 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/park_battle/walls
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:wave_1/story_progression={vs_shrimplips=true,vs_shrimplips_battle=false}}] add dialog_infinity_vs_shrimplips_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -564 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots