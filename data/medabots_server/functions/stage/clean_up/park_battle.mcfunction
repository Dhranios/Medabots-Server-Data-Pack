execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=50},tag=medabot,distance=0.1..] -1997 51 -560 -180 0
scoreboard players set @s[scores={Stage=50,State=0}] Music 0
scoreboard players set @s[scores={Stage=50,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=50,State=0}] State 0
teleport @s[scores={Stage=50,State=0}] -1997 51 -560 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=50}] StageVersion
scoreboard players reset @a[scores={Stage=50}] Stage
data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock -1950 53 -591 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}