execute as @e[x=0,y=49,z=0,dx=53,dy=7,dz=68,type=!minecraft:player] unless entity @s[scores={Stage=44}] run scoreboard players set @s Stage 44
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1261 48 -223 -1313 48 -291 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
fill -1314 46 -291 -1261 46 -223 minecraft:air replace minecraft:fire
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=44},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=44},tag=medabot,distance=0.1..] 26 58 35 -180 0
scoreboard players set @s[scores={Stage=44,State=0}] Music 0
scoreboard players set @s[scores={Stage=44,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=44,State=0}] State 0
teleport @s[scores={Stage=44,State=0}] 26 58 35 -180 0
tag @e[scores={Stage=44},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=44},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=44},distance=0.1..] Stage
data merge block 25 59 12 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_9/play"}}'}
setblock 25 60 10 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}