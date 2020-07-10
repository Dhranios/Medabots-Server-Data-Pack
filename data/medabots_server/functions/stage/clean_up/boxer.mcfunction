execute as @e[x=0,y=51,z=0,dx=64,dy=7,dz=64,type=!minecraft:player] unless entity @s[scores={Stage=29}] run scoreboard players set @s Stage 29
bossbar set medabots_server:boxer/robattle players
bossbar set medabots_server:boxer/time players
scoreboard players set @a[scores={Stage=29},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=29},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=29},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=29},tag=medabot,distance=0.1..] 31 59 32 -180 0
scoreboard players set @s[scores={Stage=29,State=0}] Music 0
scoreboard players set @s[scores={Stage=29,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=29,State=0}] State 0
teleport @s[scores={Stage=29,State=0}] 31 59 32 -180 0
tag @e[scores={Stage=29},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=29},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=29},distance=0.1..] Stage
data merge block 30 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/boxer/play"}}'}
setblock 30 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}