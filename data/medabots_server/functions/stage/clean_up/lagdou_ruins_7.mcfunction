execute as @e[x=-1311,y=40,z=-220,dx=74,dy=9,dz=77,type=!minecraft:player] unless entity @s[scores={Stage=42}] run scoreboard players set @s Stage 42
fill -1238 46 -148 -1311 49 -217 minecraft:wall_torch[facing=east] replace minecraft:redstone_wall_torch[facing=east]
fill -1238 46 -148 -1311 49 -217 minecraft:wall_torch[facing=north] replace minecraft:redstone_wall_torch[facing=north]
fill -1238 46 -148 -1311 49 -217 minecraft:wall_torch[facing=south] replace minecraft:redstone_wall_torch[facing=south]
fill -1238 46 -148 -1311 49 -217 minecraft:wall_torch[facing=west] replace minecraft:redstone_wall_torch[facing=west]
scoreboard players set @a[scores={Stage=42},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=42},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=42},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=42},tag=medabot,distance=0.1..] -1280 51 -171 -180 0
scoreboard players set @s[scores={Stage=42,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=42,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=42,Battle=0}] Battle 0
teleport @s[scores={Stage=42,Battle=0}] -1280 51 -171 -180 0
tag @e[scores={Stage=42},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=42}] StageVersion
scoreboard players reset @a[scores={Stage=42}] Stage
data merge block -1281 52 -178 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_7/play"}}'}
setblock -1281 53 -180 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}