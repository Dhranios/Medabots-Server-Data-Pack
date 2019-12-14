execute as @e[x=-1600,y=42,z=-750,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=30}] run scoreboard players set @s Stage 30
bossbar set medabots_server:grassland_d/time players
bossbar set medabots_server:grassland_d/robattle players
scoreboard players set @a[scores={Stage=30},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=30},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=30},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=30},tag=medabot,distance=0.1..] -1570 51 -720 -180 0
scoreboard players set @s[scores={Stage=30,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=30,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=30,Battle=0}] Battle 0
teleport @s[scores={Stage=30,Battle=0}] -1570 51 -720 -180 0
tag @e[scores={Stage=30},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=30}] StageVersion
scoreboard players reset @a[scores={Stage=30}] Stage
data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_d/play"}}'}
setblock -1571 53 -752 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}