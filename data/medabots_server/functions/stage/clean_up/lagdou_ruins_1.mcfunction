execute as @e[x=-1329,y=0,z=-115,dx=61,dy=50,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=36}] run scoreboard players set @s Stage 36
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=36},tag=medabot,distance=0.1..] -1298 51 -87 -180 0
scoreboard players set @s[scores={Stage=36,State=0}] Music 0
scoreboard players set @s[scores={Stage=36,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=36,State=0}] State 0
teleport @s[scores={Stage=36,State=0}] -1298 51 -87 -180 0
tag @e[scores={Stage=36},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=36}] StageVersion
scoreboard players reset @a[scores={Stage=36}] Stage
data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_1/play"}}'}
setblock -1299 53 -117 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}