execute as @e[x=0,y=49,z=0,dx=68,dy=11,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=37}] run scoreboard players set @s Stage 37
scoreboard players set @a[scores={Stage=37},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=37},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=37},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=37},tag=medabot,distance=0.1..] 34 61 26 -180 0
scoreboard players set @s[scores={Stage=37,State=0}] Music 0
scoreboard players set @s[scores={Stage=37,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=37,State=0}] State 0
teleport @s[scores={Stage=37,State=0}] 34 61 26 -180 0
tag @e[scores={Stage=37},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=37},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=37},distance=0.1..] Stage
data merge block 33 62 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_2/play"}}'}
setblock 33 63 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}