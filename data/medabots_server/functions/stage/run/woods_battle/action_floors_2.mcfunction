execute if entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=47},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=47},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=47},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1972,y=43,z=-640,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=47}] run scoreboard players set @s Stage 47
execute as @e[scores={Stage=47},tag=practice_battle] run tag @e[scores={Stage=47},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/woods_battle
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}}] add dialog_infinity_vs_sloan_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -616 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots