execute as @e[x=0,y=8,z=0,dx=91,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=19}] run scoreboard players set @s Stage 19
fill -1854 44 -633 -1764 44 -540 minecraft:air replace minecraft:barrier
bossbar set medabots_server:park_a/time players
bossbar set medabots_server:park_a/robattle players
bossbar set medabots_server:park_a/time max 72000
scoreboard players set @a[scores={Stage=19},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=19},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=19},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=19},tag=medabot,distance=0.1..] 45 59 46 -180 0
scoreboard players set @s[scores={Stage=19,State=0}] Music 0
scoreboard players set @s[scores={Stage=19,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=19,State=0}] State 0
teleport @s[scores={Stage=19,State=0}] 45 59 46 -180 0
tag @e[scores={Stage=19},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=19},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=19},distance=0.1..] Stage
tag @e[scores={Stage=19},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=19},type=!minecraft:player,tag=barrier] remove barrier
data merge block 44 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_a/play"}}'}
setblock 44 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}