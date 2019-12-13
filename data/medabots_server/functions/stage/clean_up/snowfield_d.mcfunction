execute as @e[x=-1602,y=42,z=-815,dx=61,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=32}] run scoreboard players set @s Stage 32
bossbar set medabots_server:snowfield_d/time players
bossbar set medabots_server:snowfield_d/robattle players
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=32},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=32},tag=enemy_medabot] -1572 51 -784 -180 0
scoreboard players set @s[scores={Stage=32,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=32,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=32,Battle=0}] Battle 0
teleport @s[scores={Stage=32,Battle=0}] -1572 51 -784 -180 0
tag @e[scores={Stage=32},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=32}] StageVersion
scoreboard players reset @a[scores={Stage=32}] Stage
data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_d/play"}}'}
setblock -1573 53 -817 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}