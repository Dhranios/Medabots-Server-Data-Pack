execute store result score @s BattlingMedabots if entity @e[scores={Stage=50,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1962 45 -555 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[0.0f,0.0f]}
execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
execute if entity @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/park_battle/action_floors
stopsound @s[scores={BattlingMedabots=1,Death=0}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Death=0},tag=!story_battle] -1949 51 -564 14
scoreboard players set @s[scores={BattlingMedabots=1,Death=0}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1,Death=0},tag=!story_battle] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Death=0},tag=!story_battle] Music 299
teleport @s[scores={BattlingMedabots=1,Death=0}] -1949 51 -564 -180 0
tag @s[scores={BattlingMedabots=1,Death=0}] remove story_battle
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots