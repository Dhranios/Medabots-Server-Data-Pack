execute as @e[x=-1267,y=42,z=-139,dx=60,dy=7,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=41}] run scoreboard players set @s Stage 41
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1211 45 -62 -1265 47 -137 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=41},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=41},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=41},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=41},tag=medabot,distance=0.1..] -1236 51 -99 -180 0
scoreboard players set @s[scores={Stage=41,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=41,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=41,Battle=0}] Battle 0
teleport @s[scores={Stage=41,Battle=0}] -1236 51 -99 -180 0
tag @e[scores={Stage=41},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=41}] StageVersion
scoreboard players reset @a[scores={Stage=41}] Stage
data merge block -1237 52 -139 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_6/play"}}'}
setblock -1237 53 -141 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}