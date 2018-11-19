execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","normal"],Duration:1}
execute if entity @s[tag=!selected] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Music Selection\"}",Tags:["music_selection","removed"],Duration:1}
execute if entity @s[tag=!selected] run tag @e[type=minecraft:area_effect_cloud,tag=music_selection,sort=random,limit=1] add selected
execute if entity @s[tag=!selected] if entity @e[type=minecraft:area_effect_cloud,tag=music_selection,tag=selected,tag=removed] run tag @s add removed
execute if entity @s[tag=!selected] run kill @e[type=minecraft:area_effect_cloud,tag=music_selection]
execute if entity @s[tag=!selected] run tag @s add selected
playsound medabots_server:music.stage.pvp.rico_harbor music @s[scores={Music=0},gamemode=adventure,tag=!removed] -1440 59 -158 5
scoreboard players set @s[scores={Music=0},gamemode=adventure,tag=!removed] Music 2440
playsound medabots_server:music.stage.pvp.rico_harbor_removed music @s[scores={Music=0},gamemode=adventure,tag=removed] -1440 59 -158 5
scoreboard players set @s[scores={Music=0},gamemode=adventure,tag=removed] Music 3640
advancement grant @s[tag=removed] only medabots_server:easter_eggs/this_is_not_delfino_plaza
tag @a[scores={Death=1..},tag=achieve_rico] remove achieve_rico
tag @a[scores={Death=1..},tag=ricco_harbor_full] remove ricco_harbor_full
tag @a[scores={Death=1..},tag=removed] remove removed
tag @a[scores={Death=1..},tag=selected] remove selected
execute store result score @s BattlingMedabots if entity @e[scores={Stage=97,Medabot=0..}]
execute if entity @e[x=-1504,y=50,z=-210,dx=275,dy=43,dz=93,tag=mr_referee,type=minecraft:armor_stand] run data merge block -1440 95 -210 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.full\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @e[x=-1504,y=50,z=-210,dx=275,dy=43,dz=93,tag=mr_referee,type=minecraft:armor_stand] run setblock -1440 96 -212 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=3..}] unless entity @e[x=-1504,y=50,z=-210,dx=275,dy=43,dz=93,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1430 75 -149 {Invisible:1b,Marker:1b,Small:1b,CustomName:"{\"translate\":\"medabots_server:entity.mr_referee\"}",Tags:["mr_referee"],Rotation:[-180.0f,0.0f]}
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.rico_harbor
stopsound @s[scores={BattlingMedabots=1}] music medabots_server:music.stage.pvp.rico_harbor_removed
tag @s[scores={BattlingMedabots=1},tag=achieve_rico] remove achieve_rico
tag @s[scores={BattlingMedabots=1},tag=removed] remove removed
tag @s[scores={BattlingMedabots=1},tag=selected] remove selected
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1440 94 -158 6
teleport @s[scores={BattlingMedabots=1}] -1440 94 -158 -180 0
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1441 94 -211 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1439 94 -211 minecraft:stone_pressure_plate
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1441 96 -212 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1439 96 -212 minecraft:redstone_block
execute if entity @s[scores={BattlingMedabots=1}] run setblock -1440 96 -212 minecraft:red_wool
execute if entity @s[scores={BattlingMedabots=1}] run tag @e[scores={Stage=97},type=!minecraft:player] add dead
execute if entity @s[scores={BattlingMedabots=1}] run data merge block -1440 95 -210 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.pvp_stage.no_pvp\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute as @e[x=-1504,y=50,z=-210,dx=275,dy=43,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=97}] run scoreboard players set @s Stage 97
execute if block ~ ~-1 ~ minecraft:white_wool run effect give @s minecraft:jump_boost 1 3 true
tag @s[x=-1440,y=87,z=-163,dx=8,dy=5,dz=8,advancements={medabots_server:wave_1/screw_you_all=false}] add achieve_rico
execute if block ~ ~1 ~ minecraft:water run advancement grant @s[tag=achieve_rico] only medabots_server:wave_1/screw_you_all
tag @s[tag=achieve_rico,nbt={OnGround:1b}] remove achieve_rico