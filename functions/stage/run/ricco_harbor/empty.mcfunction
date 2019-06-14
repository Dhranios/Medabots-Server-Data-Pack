execute store result score @s BattlingMedabots if entity @e[scores={Stage=46,Medabot=0..,Battle=1..}]
execute if entity @s[scores={BattlingMedabots=2..}] unless entity @e[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,tag=mr_referee,type=minecraft:armor_stand] run summon minecraft:armor_stand -1426 38 -159 {Invisible:1b,Marker:1b,Small:1b,CustomName:'{"translate":"medabots_server:entity.mr_referee"}',Tags:["mr_referee","no_overwrite"],Rotation:[-180.0f,0.0f]}
execute as @e[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=46}] run scoreboard players set @s Stage 46
execute as @s[scores={BattlingMedabots=1,Battle=1..}] run function medabots_server:stage/clean_up/ricco_harbor/empty
execute if entity @s[scores={BattlingMedabots=1,Battle=1..}] positioned -1440 51 -158 run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
execute if block ~ ~-1 ~ minecraft:white_wool run effect give @s minecraft:jump_boost 1 3 true
tag @s[x=-1440,y=44,z=-163,dx=8,dy=5,dz=8,advancements={medabots_server:wave_1/screw_you_all=false}] add achieve_screw_you_all
execute if block ~ ~1 ~ minecraft:water run advancement grant @s[tag=achieve_screw_you_all] only medabots_server:wave_1/screw_you_all
tag @s[tag=achieve_screw_you_all,nbt={OnGround:1b}] remove achieve_screw_you_all