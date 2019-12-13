execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] store result score @s BattlingMedabots if entity @e[scores={Stage=50},tag=medabot,tag=!enemy_medabot,tag=!ally_medabot]
execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=50},tag=enemy_medabot] run scoreboard players add @s BattlingMedabots 1
execute if entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand,tag=finished] if entity @e[scores={Stage=50},tag=ally_medabot] run scoreboard players add @s BattlingMedabots 1
execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
execute as @e[scores={Stage=50},tag=practice_battle] run tag @e[scores={Stage=50},tag=medabot] add practice_robattle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/park_battle
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:story_progression/infinity={vs_samantha=true,vs_samantha_battle=false}}] add dialog_infinity_vs_samantha_battle
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1949 51 -564 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots