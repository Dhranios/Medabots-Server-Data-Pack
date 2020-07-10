execute as @e[x=0,y=10,z=0,dx=61,dy=50,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=36}] run scoreboard players set @s Stage 36
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=36},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=36},tag=medabot,distance=0.1..] 31 61 28 -180 0
scoreboard players set @s[scores={Stage=36,State=0}] Music 0
scoreboard players set @s[scores={Stage=36,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=36,State=0}] State 0
teleport @s[scores={Stage=36,State=0}] 31 61 28 -180 0
tag @e[scores={Stage=36},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=36},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=36},distance=0.1..] Stage
data merge block 30 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_1/play"}}'}
setblock 30 63 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}