execute as @e[x=-1858,y=0,z=-247,dx=94,dy=49,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=52}] run scoreboard players set @s Stage 52
fill -1858 44 -247 -1765 44 -153 minecraft:air replace minecraft:barrier
bossbar set medabots_server:grassland_e/time players
bossbar set medabots_server:grassland_e/robattle players
scoreboard players set @a[scores={Stage=52},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=52},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=52},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=52},tag=medabot,distance=0.1..] -1812 51 -200 -180 0
scoreboard players set @s[scores={Stage=52,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=52,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=52,Battle=0}] Battle 0
teleport @s[scores={Stage=52,Battle=0}] -1812 51 -200 -180 0
tag @e[scores={Stage=52},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=52}] StageVersion
scoreboard players reset @a[scores={Stage=52}] Stage
tag @e[scores={Stage=52},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=52},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1813 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_e/play"}}'}
setblock -1813 53 -249 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}