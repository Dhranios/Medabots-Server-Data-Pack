execute as @e[x=0,y=52,z=0,dx=56,dy=14,dz=98,type=!minecraft:player] unless entity @s[scores={Stage=45}] run scoreboard players set @s Stage 45
scoreboard players set @a[scores={Stage=45},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=45},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=45},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=45},tag=medabot,distance=0.1..] 28 67 34 -180 0
scoreboard players set @s[scores={Stage=45,State=0}] Music 0
scoreboard players set @s[scores={Stage=45,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=45,State=0}] State 0
teleport @s[scores={Stage=45,State=0}] 28 67 34 -180 0
tag @e[scores={Stage=45},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=45},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=45},distance=0.1..] Stage
data merge block 27 68 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_10/play"}}'}
setblock 27 69 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}