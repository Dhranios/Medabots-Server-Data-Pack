execute store result score @s BattlingMedabots if entity @e[scores={Stage=45,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1356 39 -77 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","no_overwrite"],Rotation:[90.0f,0.0f]}
execute as @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabot_server:stage/clean_up/lagdou_ruins_10/empty
stopsound @s[scores={BattlingMedabots=1,Battle=1..}] music
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] MusicType 1
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Music 299
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=true}] only medabots_server:wave_1/hero_of_magvel
advancement grant @s[scores={BattlingMedabots=1,Battle=1..},advancements={medabots_server:stages/wave_1/lagdou_ruins_10=false}] only medabots_server:stages/wave_1/lagdou_ruins_10
playsound medabots_server:music.stage.stage_end music @s[scores={BattlingMedabots=1,Battle=1..}] -1361 51 -80 1000
teleport @s[scores={BattlingMedabots=1,Battle=1..}] -1361 51 -80 -180 0
scoreboard players set @s[scores={BattlingMedabots=1,Battle=1..}] Battle 0
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots