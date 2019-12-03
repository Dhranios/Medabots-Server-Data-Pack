execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=50,Medabot=0..,Battle=1..}]
execute unless entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1962 45 -581 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}
execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
execute as @e[scores={Stage=50},tag=practise_battle] run tag @e[scores={Stage=50},tag=medabot] add practise_robattle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/park_battle
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_max=true,erikas_pass=false}}] add dialog_infinity_erikas_pass
tag @s[scores={BattlingMedabots=1,Battle=1..,KillStreak=2},tag=story_battle] add dialog_infinity_postgame_max_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -564 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots