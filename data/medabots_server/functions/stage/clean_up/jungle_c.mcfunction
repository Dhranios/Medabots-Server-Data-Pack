execute as @e[x=-1570,y=42,z=-545,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=24}] run scoreboard players set @s Stage 24
bossbar set medabots_server:jungle_c/time players
bossbar set medabots_server:jungle_c/robattle players
scoreboard players set @a[scores={Stage=24},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=24},tag=enemy_medabot] MusicType 22
scoreboard players set @a[scores={Stage=24},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=24},tag=enemy_medabot] -1541 50 -515 -180 0
scoreboard players set @s[scores={Stage=24,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=24,Battle=0}] MusicType 22
scoreboard players set @s[scores={Stage=24,Battle=0}] Battle 0
teleport @s[scores={Stage=24,Battle=0}] -1541 50 -515 -180 0
tag @e[scores={Stage=24},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=24}] StageVersion
scoreboard players reset @a[scores={Stage=24}] Stage
data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_c/play"}}'}
setblock -1542 52 -547 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}