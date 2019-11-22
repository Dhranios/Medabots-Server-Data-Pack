execute as @e[x=-1729,y=43,z=-344,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
bossbar set medabots_server:ruins_in_a/time players
bossbar set medabots_server:ruins_in_a/robattle players
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=8},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=8},tag=enemy_medabot] -1683 50 -259 -180 0
scoreboard players set @s[scores={Stage=8,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=8,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=8,Battle=0}] Battle 0
teleport @s[scores={Stage=8,Battle=0}] -1683 50 -259 -180 0
tag @e[scores={Stage=8},type=!minecraft:player] add dead
data merge block -1683 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_a/play"}}'}
setblock -1685 52 -277 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}