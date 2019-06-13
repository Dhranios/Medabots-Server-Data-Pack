execute store result score @s BattlingMedabots if entity @e[scores={Stage=46,Medabot=0..,Battle=1..}]
execute as @s[scores={BattlingMedabots=1}] run function medabots_server:stage/clean_up/ricco_harbor/empty
stopsound @s[scores={BattlingMedabots=1}] music 
scoreboard players set @s[scores={BattlingMedabots=1}] Battle 0
scoreboard players set @s[scores={BattlingMedabots=1}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1}] Music 299
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1}] -1440 51 -158 14
teleport @s[scores={BattlingMedabots=1}] -1440 51 -158 -180 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block ~ ~-1 ~ minecraft:white_wool run effect give @s minecraft:jump_boost 1 3 true
tag @s[x=-1440,y=44,z=-163,dx=8,dy=5,dz=8,advancements={medabots_server:wave_1/screw_you_all=false}] add achieve_screw_you_all
execute if block ~ ~1 ~ minecraft:water run advancement grant @s[tag=achieve_screw_you_all] only medabots_server:wave_1/screw_you_all
tag @s[tag=achieve_screw_you_all,nbt={OnGround:1b}] remove achieve_rico