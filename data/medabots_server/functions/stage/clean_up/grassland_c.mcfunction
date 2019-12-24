execute as @e[x=-1570,y=42,z=-480,dx=65,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=23}] run scoreboard players set @s Stage 23
bossbar set medabots_server:grassland_c/time players
bossbar set medabots_server:grassland_c/robattle players
scoreboard players set @a[scores={Stage=23},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=23},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=23},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=23},tag=medabot,distance=0.1..] -1539 50 -449 -180 0
scoreboard players set @s[scores={Stage=23,State=0}] Music 0
scoreboard players set @s[scores={Stage=23,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=23,State=0}] State 0
teleport @s[scores={Stage=23,State=0}] -1539 50 -449 -180 0
tag @e[scores={Stage=23},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=23},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=23},distance=0.1..] Stage
data merge block -1540 51 -480 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_c/play"}}'}
setblock -1540 52 -482 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}