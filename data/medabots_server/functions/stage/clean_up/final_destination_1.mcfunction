execute as @e[x=-2066,y=0,z=-245,dx=51,dy=53,dz=51,type=!minecraft:player] unless entity @s[scores={Stage=61}] run scoreboard players set @s Stage 61
bossbar set medabots_server:master_hand/1 players
scoreboard players set @a[scores={Stage=61},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=61},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=61},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=61},tag=medabot,distance=0.1..] -2041 43 -196 -180 0
scoreboard players set @s[scores={Stage=61,State=0}] Music 0
scoreboard players set @s[scores={Stage=61,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=61,State=0}] State 0
teleport @s[scores={Stage=61,State=0}] -2041 43 -196 -180 0
tag @e[scores={Stage=61},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=61}] StageVersion
scoreboard players reset @a[scores={Stage=61}] Stage
data merge block -2016 44 -197 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/final_destination_1/play"}}'}
setblock -2014 45 -197 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}