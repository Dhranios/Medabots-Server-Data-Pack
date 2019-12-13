execute as @e[x=-1997,y=41,z=-424,dx=88,dy=7,dz=91,type=!minecraft:player] unless entity @s[scores={Stage=57}] run scoreboard players set @s Stage 57
bossbar set medabots_server:iceberg_e/time players
bossbar set medabots_server:iceberg_e/robattle players
scoreboard players set @a[scores={Stage=57},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=57},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=57},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=57},tag=enemy_medabot] -1953 50 -379 -180 0
scoreboard players set @s[scores={Stage=57,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=57,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=57,Battle=0}] Battle 0
teleport @s[scores={Stage=57,Battle=0}] -1953 50 -379 -180 0
tag @e[scores={Stage=57},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=57}] StageVersion
scoreboard players reset @a[scores={Stage=57}] Stage
data merge block -1954 51 -390 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_e/play"}}'}
setblock -1954 52 -392 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}