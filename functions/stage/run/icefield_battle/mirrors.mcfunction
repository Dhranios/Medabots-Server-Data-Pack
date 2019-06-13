execute store result score @s BattlingMedabots if entity @e[scores={Stage=48,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,tag=mr_referee] run summon minecraft:armor_stand -2001 45 -608 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
execute as @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=48}] run scoreboard players set @s Stage 48
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/icefield_battle/balloon_bombs
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1999 51 -608 1000
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1999 51 -608 -180 0
tag @s[scores={BattlingMedabots=1,Battle=1..}] remove story_battle
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots