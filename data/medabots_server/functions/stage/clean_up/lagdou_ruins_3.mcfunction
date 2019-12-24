execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=38}] run scoreboard players set @s Stage 38
scoreboard players set @a[scores={Stage=38},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=38},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=38},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=38},tag=medabot,distance=0.1..] -1227 51 -19 -180 0
scoreboard players set @s[scores={Stage=38,State=0}] Music 0
scoreboard players set @s[scores={Stage=38,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=38,State=0}] State 0
teleport @s[scores={Stage=38,State=0}] -1227 51 -19 -180 0
tag @e[scores={Stage=38},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=38},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=38},distance=0.1..] Stage
data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_3/play"}}'}
setblock -1228 53 -60 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}