execute as @e[x=-1504,y=8,z=-210,dx=275,dy=41,dz=93,type=!minecraft:player] unless entity @s[scores={Stage=46}] run scoreboard players set @s Stage 46
scoreboard players set @a[scores={Stage=46},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=46},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=46},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=46},tag=medabot,distance=0.1..] -1440 51 -158 -180 0
scoreboard players set @s[scores={Stage=46,State=0}] Music 0
scoreboard players set @s[scores={Stage=46,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=46,State=0}] State 0
teleport @s[scores={Stage=46,State=0}] -1440 51 -158 -180 0
tag @e[scores={Stage=46},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=46},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=46},distance=0.1..] Stage
data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ricco_harbor/play"}}'}
setblock -1441 53 -212 minecraft:redstone_block
tag @s remove achieve_screw_you_all
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}