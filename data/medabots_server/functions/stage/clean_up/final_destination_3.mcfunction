execute as @e[x=0,y=0,z=-16,dx=53,dy=87,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=63}] run scoreboard players set @s Stage 62
bossbar set medabots_server:master_hand/3 players
bossbar set medabots_server:crazy_hand/3 players
scoreboard players set @a[scores={Stage=63},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=63},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=63},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=63},tag=medabot,distance=0.1..] 25 43 34 -180 0
scoreboard players set @s[scores={Stage=63,State=0}] Music 0
scoreboard players set @s[scores={Stage=63,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=63,State=0}] State 0
teleport @s[scores={Stage=63,State=0}] 25 43 34 -180 0
tag @e[scores={Stage=63},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=63},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=63},distance=0.1..] Stage
data merge block 50 44 33 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/final_destination_3/play"}}'}
setblock 52 45 33 minecraft:stone_button[face=wall,facing=east,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}