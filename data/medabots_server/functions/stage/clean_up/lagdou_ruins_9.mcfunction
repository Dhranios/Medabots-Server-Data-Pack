execute as @e[x=-1314,y=42,z=-291,dx=53,dy=7,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=44}] run scoreboard players set @s Stage 44
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
fill -1314 46 -291 -1261 46 -223 minecraft:air replace minecraft:fire
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=44},tag=medabot,distance=0.1..] -1288 51 -256 -180 0
scoreboard players set @s[scores={Stage=44,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=44,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=44,Battle=0}] Battle 0
teleport @s[scores={Stage=44,Battle=0}] -1288 51 -256 -180 0
tag @e[scores={Stage=44},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=44}] StageVersion
scoreboard players reset @a[scores={Stage=44}] Stage
data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_9/play"}}'}
setblock -1289 53 -281 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}