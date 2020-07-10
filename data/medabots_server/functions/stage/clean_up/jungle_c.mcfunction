execute as @e[x=0,y=51,z=0,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=24}] run scoreboard players set @s Stage 24
bossbar set medabots_server:jungle_c/time players
bossbar set medabots_server:jungle_c/robattle players
scoreboard players set @a[scores={Stage=24},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=24},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=24},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=24},tag=medabot,distance=0.1..] 29 59 30 -180 0
scoreboard players set @s[scores={Stage=24,State=0}] Music 0
scoreboard players set @s[scores={Stage=24,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=24,State=0}] State 0
teleport @s[scores={Stage=24,State=0}] 29 59 30 -180 0
tag @e[scores={Stage=24},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=24},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=24},distance=0.1..] Stage
data merge block 28 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_c/play"}}'}
setblock 28 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}