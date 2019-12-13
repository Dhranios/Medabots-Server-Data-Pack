execute as @e[x=-1705,y=42,z=-179,dx=63,dy=8,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=3}] run scoreboard players set @s Stage 3
bossbar set medabots_server:jungle_a/time players
bossbar set medabots_server:jungle_a/robattle players
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=3},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=3},tag=enemy_medabot] -1673 51 -148 -180 0
scoreboard players set @s[scores={Stage=3,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=3,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=3,Battle=0}] Battle 0
teleport @s[scores={Stage=3,Battle=0}] -1673 51 -148 -180 0
tag @e[scores={Stage=3},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=3}] StageVersion
scoreboard players reset @a[scores={Stage=3}] Stage
data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_a/play"}}'}
setblock -1674 53 -181 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}