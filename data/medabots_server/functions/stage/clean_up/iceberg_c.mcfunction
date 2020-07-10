execute as @e[x=0,y=51,z=0,dx=60,dy=7,dz=74,type=!minecraft:player] unless entity @s[scores={Stage=26}] run scoreboard players set @s Stage 26
bossbar set medabots_server:iceberg_c/time players
bossbar set medabots_server:iceberg_c/robattle players
scoreboard players set @a[scores={Stage=26},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=26},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=26},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=26},tag=medabot,distance=0.1..] 29 59 37 -180 0
scoreboard players set @s[scores={Stage=26,State=0}] Music 0
scoreboard players set @s[scores={Stage=26,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=26,State=0}] State 0
teleport @s[scores={Stage=26,State=0}] 29 59 37 -180 0
tag @e[scores={Stage=26},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=26},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=26},distance=0.1..] Stage
data merge block 28 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_c/play"}}'}
setblock 28 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}