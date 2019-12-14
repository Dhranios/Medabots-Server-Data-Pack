execute as @e[x=-1761,y=0,z=-730,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=21}] run scoreboard players set @s Stage 21
fill -1761 44 -730 -1668 44 -637 minecraft:air replace minecraft:barrier
bossbar set medabots_server:paradise_a/time players
bossbar set medabots_server:paradise_a/robattle players
scoreboard players set @a[scores={Stage=21},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=21},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=21},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=21},tag=medabot,distance=0.1..] -1714 51 -683 -180 0
scoreboard players set @s[scores={Stage=21,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=21,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=21,Battle=0}] Battle 0
teleport @s[scores={Stage=21,Battle=0}] -1714 51 -683 -180 0
tag @e[scores={Stage=21},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=21}] StageVersion
scoreboard players reset @a[scores={Stage=21}] Stage
tag @e[scores={Stage=21},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=21},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_a/play"}}'}
setblock -1715 53 -732 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}