execute as @e[x=0,y=51,z=0,dx=42,dy=7,dz=42,type=!minecraft:player] unless entity @s[scores={Stage=49}] run scoreboard players set @s Stage 49
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=49},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=49},tag=medabot,distance=0.1..] 20 59 21 -180 0
scoreboard players set @s[scores={Stage=49,State=0}] Music 0
scoreboard players set @s[scores={Stage=49,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=49,State=0}] State 0
teleport @s[scores={Stage=49,State=0}] 20 59 21 -180 0
tag @e[scores={Stage=49},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=49},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=49},distance=0.1..] Stage
data merge block 19 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_battle/play"}}'}
setblock 19 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}