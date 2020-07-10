execute as @e[x=0,y=51,z=0,dx=48,dy=7,dz=48,type=!minecraft:player] unless entity @s[scores={Stage=47}] run scoreboard players set @s Stage 47
scoreboard players set @a[scores={Stage=47},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=47},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=47},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=47},tag=medabot,distance=0.1..] 23 59 24 -180 0
scoreboard players set @s[scores={Stage=47,State=0}] Music 0
scoreboard players set @s[scores={Stage=47,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=47,State=0}] State 0
teleport @s[scores={Stage=47,State=0}] 23 59 24 -180 0
tag @e[scores={Stage=47},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=47},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=47},distance=0.1..] Stage
data merge block 22 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/woods_battle/play"}}'}
setblock 22 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}