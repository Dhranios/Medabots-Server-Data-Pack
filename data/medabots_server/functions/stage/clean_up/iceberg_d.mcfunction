execute as @e[x=-1729,y=41,z=-795,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=33}] run scoreboard players set @s Stage 33
bossbar set medabots_server:iceberg_d/time players
bossbar set medabots_server:iceberg_d/robattle players
scoreboard players set @a[scores={Stage=33},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=33},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=33},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=33},tag=medabot,distance=0.1..] -1700 50 -769 -180 0
scoreboard players set @s[scores={Stage=33,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=33,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=33,Battle=0}] Battle 0
teleport @s[scores={Stage=33,Battle=0}] -1700 50 -769 -180 0
tag @e[scores={Stage=33},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=33}] StageVersion
scoreboard players reset @a[scores={Stage=33}] Stage
data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_d/play"}}'}
setblock -1701 52 -795 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}