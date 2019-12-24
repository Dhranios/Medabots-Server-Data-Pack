execute as @e[x=-2022,y=43,z=-632,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=48}] run scoreboard players set @s Stage 48
scoreboard players set @a[scores={Stage=48},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=48},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=48},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=48},tag=medabot,distance=0.1..] -1999 51 -608 -180 0
scoreboard players set @s[scores={Stage=48,State=0}] Music 0
scoreboard players set @s[scores={Stage=48,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=48,State=0}] State 0
teleport @s[scores={Stage=48,State=0}] -1999 51 -608 -180 0
tag @e[scores={Stage=48},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=48},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=48},distance=0.1..] Stage
data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/icefield_battle/play"}}'}
setblock -2000 53 -634 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}