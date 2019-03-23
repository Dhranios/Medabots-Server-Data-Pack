execute store result score @s BattlingMedabots if entity @e[scores={Stage=41,Medabot=0..,Battle=1..}]
execute if entity @e[x=-1267,y=40,z=-139,dx=60,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run data merge block -1236 52 -139 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.full\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @e[x=-1267,y=40,z=-139,dx=60,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run setblock -1236 53 -141 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=3..}] unless entity @e[x=-1267,y=40,z=-139,dx=60,dy=9,dz=77,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1230 43 -99 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[90.0f,0.0f]}
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.lagdou_ruins2
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=true}] only medabots_server:stages/wave_1/lagdou_ruins_6_second_go
advancement grant @s[scores={BattlingMedabots=1,Death=0},advancements={medabots_server:stages/wave_1/lagdou_ruins_6_first_go=false}] only medabots_server:stages/wave_1/lagdou_ruins_6_first_go
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1236 51 -99 3
teleport @s[scores={BattlingMedabots=1}] -1236 51 -99 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1237 51 -140 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1235 51 -140 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1237 53 -141 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1235 53 -141 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1236 53 -141 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[scores={Stage=41},type=!minecraft:player] add dead
execute if entity @s[scores={BattlingMedabots=1}] run data merge block -1236 52 -139 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.no_pvp\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1267,y=40,z=-139,dx=60,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=41}] run scoreboard players set @s Stage 41