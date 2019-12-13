execute as @e[x=-1256,y=0,z=-58,dx=59,dy=48,dz=83,type=!minecraft:player] unless entity @s[scores={Stage=38}] run scoreboard players set @s Stage 38
scoreboard players set @a[scores={Stage=38},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=38},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=38},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=38},tag=enemy_medabot] -1227 51 -19 -180 0
scoreboard players set @s[scores={Stage=38,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=38,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=38,Battle=0}] Battle 0
teleport @s[scores={Stage=38,Battle=0}] -1227 51 -19 -180 0
tag @e[scores={Stage=38},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=38}] StageVersion
scoreboard players reset @a[scores={Stage=38}] Stage
data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_3/play"}}'}
setblock -1228 53 -60 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}