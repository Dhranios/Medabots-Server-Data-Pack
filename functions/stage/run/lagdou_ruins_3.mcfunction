execute store result score @s BattlingMedabots if entity @e[scores={Stage=38,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,tag=mr_referee,type=minecraft:armor_stand] run data merge block -1227 52 -58 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.full\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,tag=mr_referee,type=minecraft:armor_stand] run setblock -1227 53 -60 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=3..}] unless entity @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1238 46 -9 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-90.0f,0.0f]}
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.lagdou_ruins1
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_3_second_go
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_3_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_3_first_go
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1224 51 -19 3
teleport @s[scores={BattlingMedabots=1}] -1224 51 -19 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1228 51 -59 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1226 51 -59 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1228 53 -60 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1226 53 -60 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1227 53 -60 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[scores={Stage=38},type=!minecraft:player] add dead
execute if entity @s[scores={BattlingMedabots=1}] run data merge block -1227 52 -58 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.no_pvp\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=38}] run scoreboard players set @s Stage 38