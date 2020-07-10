execute as @e[x=0,y=50,z=0,dx=88,dy=7,dz=91,type=!minecraft:player] unless entity @s[scores={Stage=57}] run scoreboard players set @s Stage 57
bossbar set medabots_server:iceberg_e/time players
bossbar set medabots_server:iceberg_e/robattle players
scoreboard players set @a[scores={Stage=57},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=57},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=57},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=57},tag=medabot,distance=0.1..] 41 59 53 -180 0
scoreboard players set @s[scores={Stage=57,State=0}] Music 0
scoreboard players set @s[scores={Stage=57,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=57,State=0}] State 0
teleport @s[scores={Stage=57,State=0}] 41 59 53 -180 0
tag @e[scores={Stage=57},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=57},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=57},distance=0.1..] Stage
data merge block 40 60 17 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_e/play"}}'}
setblock 40 61 15 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}