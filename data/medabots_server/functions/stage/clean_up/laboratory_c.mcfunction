execute as @e[x=0,y=51,z=0,dx=22,dy=7,dz=44,type=!minecraft:player] unless entity @s[scores={Stage=28}] run scoreboard players set @s Stage 28
bossbar set medabots_server:laboratory_c/time players
bossbar set medabots_server:laboratory_c/robattle players
scoreboard players set @a[scores={Stage=28},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=28},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=28},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=28},tag=medabot,distance=0.1..] 10 59 21 -180 0
scoreboard players set @s[scores={Stage=28,State=0}] Music 0
scoreboard players set @s[scores={Stage=28,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=28,State=0}] State 0
teleport @s[scores={Stage=28,State=0}] 10 59 21 -180 0
tag @e[scores={Stage=28},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=28},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=28},distance=0.1..] Stage
data merge block 9 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_c/play"}}'}
setblock 9 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}