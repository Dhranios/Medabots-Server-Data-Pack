execute as @e[x=-1856,y=41,z=-811,dx=61,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=35}] run scoreboard players set @s Stage 35
bossbar set medabots_server:laboratory_d/time players
bossbar set medabots_server:laboratory_d/robattle players
scoreboard players set @a[scores={Stage=35},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=35},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=35},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=35},tag=enemy_medabot] -1827 50 -767 -180 0
scoreboard players set @s[scores={Stage=35,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=35,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=35,Battle=0}] Battle 0
teleport @s[scores={Stage=35,Battle=0}] -1827 50 -767 -180 0
tag @e[scores={Stage=35},type=!minecraft:player] add dead
data merge block -1828 51 -806 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_d/play"}}'}
setblock -1828 52 -808 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}