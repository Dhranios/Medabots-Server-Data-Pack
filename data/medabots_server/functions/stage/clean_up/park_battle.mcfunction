execute as @e[x=0,y=8,z=0,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=50},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=50},tag=medabot,distance=0.1..] -24 59 29 -180 0
scoreboard players set @s[scores={Stage=50,State=0}] Music 0
scoreboard players set @s[scores={Stage=50,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=50,State=0}] State 0
teleport @s[scores={Stage=50,State=0}] -24 59 29 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=50},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=50},distance=0.1..] Stage
data merge block 23 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock 23 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}