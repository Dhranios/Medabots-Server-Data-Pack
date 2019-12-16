execute as @e[x=-2017,y=43,z=-581,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=49},tag=medabot,distance=0.1..] -1997 51 -560 -180 0
scoreboard players set @s[scores={Stage=49,State=0}] Music 0
scoreboard players set @s[scores={Stage=49,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=49,State=0}] State 0
teleport @s[scores={Stage=49,State=0}] -1997 51 -560 -180 0
tag @e[scores={Stage=49},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=49}] StageVersion
scoreboard players reset @a[scores={Stage=49}] Stage
data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_battle/play"}}'}
setblock -1998 53 -583 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}