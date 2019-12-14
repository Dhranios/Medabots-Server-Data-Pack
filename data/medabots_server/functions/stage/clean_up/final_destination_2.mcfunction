execute as @e[x=-2011,y=0,z=-247,dx=53,dy=53,dz=53,type=!minecraft:player] unless entity @s[scores={Stage=62}] run scoreboard players set @s Stage 62
bossbar set medabots_server:master_hand/2 players
bossbar set medabots_server:crazy_hand/2 players
scoreboard players set @a[scores={Stage=62},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=62},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=62},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=62},tag=medabot,distance=0.1..] -1985 43 -196 -180 0
scoreboard players set @s[scores={Stage=62,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=62,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=62,Battle=0}] Battle 0
teleport @s[scores={Stage=62,Battle=0}] -1985 43 -196 -180 0
tag @e[scores={Stage=62},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=62}] StageVersion
scoreboard players reset @a[scores={Stage=62}] Stage
data merge block -1959 44 -197 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/final_destination_2/play"}}'}
setblock -1957 45 -197 minecraft:redstone_block
tag @s remove crazy_hand_spawned
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}