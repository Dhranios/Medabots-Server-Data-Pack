execute as @e[x=-1389,y=36,z=-114,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45
scoreboard players set @a[scores={Stage=45},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=45},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=45},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=45},tag=enemy_medabot] -1361 51 -80 -180 0
scoreboard players set @s[scores={Stage=45,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=45,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=45,Battle=0}] Battle 0
teleport @s[scores={Stage=45,Battle=0}] -1361 51 -80 -180 0
tag @e[scores={Stage=45},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=45}] StageVersion
scoreboard players reset @a[scores={Stage=45}] Stage
data merge block -1362 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_10/play"}}'}
setblock -1362 53 -116 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}