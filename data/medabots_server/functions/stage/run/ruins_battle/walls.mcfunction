execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=49},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=49},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
execute as @e[scores={Stage=49},tag=practice_battle] run tag @e[scores={Stage=49},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_battle
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}}] add dialog_infinity_vs_squidguts_battle
tag @s[scores={BattlingMedabots=1,Battle=1..,KillStreak=1},tag=story_battle] add dialog_infinity_postgame_spyke_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1997 51 -560 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots