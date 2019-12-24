execute as @e[x=-2003,y=42,z=-329,dx=93,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=55}] run scoreboard players set @s Stage 55
bossbar set medabots_server:seashore_e/time players
bossbar set medabots_server:seashore_e/robattle players
scoreboard players set @a[scores={Stage=55},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=55},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=55},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=55},tag=medabot,distance=0.1..] -1957 51 -290 -180 0
scoreboard players set @s[scores={Stage=55,State=0}] Music 0
scoreboard players set @s[scores={Stage=55,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=55,State=0}] State 0
teleport @s[scores={Stage=55,State=0}] -1957 51 -290 -180 0
tag @e[scores={Stage=55},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=55},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=55},distance=0.1..] Stage
data merge block -1958 52 -329 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_e/play"}}'}
setblock -1958 53 -331 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}