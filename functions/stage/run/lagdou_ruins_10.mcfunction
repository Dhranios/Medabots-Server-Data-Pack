playsound medabots_server:music.stage.pvp.lagdou_ruins3 music @s[scores={Music=0},gamemode=adventure] ~ ~ ~ 100
scoreboard players set @s[scores={Music=0},gamemode=adventure] Music 900
execute store result score @s BattlingMedabots if entity @e[scores={Stage=45,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1389,y=36,z=-114,dx=56,dy=13,dz=98,tag=mr_referee,type=minecraft:armor_stand] run data merge block -1361 52 -114 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.full\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @e[x=-1389,y=36,z=-114,dx=56,dy=13,dz=98,tag=mr_referee,type=minecraft:armor_stand] run setblock -1361 53 -116 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=3..}] unless entity @e[x=-1389,y=36,z=-114,dx=56,dy=13,dz=98,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1356 39 -77 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.lagdou_ruins3
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:wave_1/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1361 51 -80 3
teleport @s[scores={BattlingMedabots=1}] -1361 51 -80 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1362 51 -115 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1360 51 -115 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1362 53 -116 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1360 53 -116 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1361 53 -116 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[scores={Stage=45},type=!minecraft:player] add dead
execute if entity @s[scores={BattlingMedabots=1}] run data merge block -1361 52 -114 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.no_pvp\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1389,y=36,z=-114,dx=56,dy=13,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45