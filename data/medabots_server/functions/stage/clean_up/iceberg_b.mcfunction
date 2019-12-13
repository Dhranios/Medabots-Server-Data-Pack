execute as @e[x=-1824,y=41,z=-438,dx=60,dy=7,dz=90,type=!minecraft:player] unless entity @s[scores={Stage=15}] run scoreboard players set @s Stage 15
bossbar set medabots_server:iceberg_b/time players
bossbar set medabots_server:iceberg_b/robattle players
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=15},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=15},tag=enemy_medabot] -1795 50 -394 -180 0
scoreboard players set @s[scores={Stage=15,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=15,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=15,Battle=0}] Battle 0
teleport @s[scores={Stage=15,Battle=0}] -1795 50 -394 -180 0
tag @e[scores={Stage=15},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=15}] StageVersion
scoreboard players reset @a[scores={Stage=15}] Stage
data merge block -1796 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_b/play"}}'}
setblock -1796 52 -439 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}