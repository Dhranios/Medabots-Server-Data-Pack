execute as @e[x=0,y=50,z=0,dx=94,dy=7,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=14}] run scoreboard players set @s Stage 14
bossbar set medabots_server:snowfield_b/time players
bossbar set medabots_server:snowfield_b/robattle players
scoreboard players set @a[scores={Stage=14},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=14},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=14},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=14},tag=medabot,distance=0.1..] 47 59 46 -180 0
scoreboard players set @s[scores={Stage=14,State=0}] Music 0
scoreboard players set @s[scores={Stage=14,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=14,State=0}] State 0
teleport @s[scores={Stage=14,State=0}] 47 59 46 -180 0
tag @e[scores={Stage=14},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=14},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=14},distance=0.1..] Stage
data merge block 46 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_b/play"}}'}
setblock 46 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}