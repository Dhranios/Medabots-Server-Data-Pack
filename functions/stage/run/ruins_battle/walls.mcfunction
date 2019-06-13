execute store result score @s BattlingMedabots if entity @e[scores={Stage=49,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1994 45 -561 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ruins_battle/walls
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] -1997 51 -560 14
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..},tag=!story_battle] Music 299
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1997 51 -560 -180 0
tag @s[scores={BattlingMedabots=1,Battle=1..},tag=story_battle,advancements={medabots_server:wave_1/story_progression={vs_squidguts=true,vs_squidguts_battle=false}}] add dialog_infinity_vs_squidguts_battle
tag @s[scores={BattlingMedabots=1,Battle=1..}] remove story_battle
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots