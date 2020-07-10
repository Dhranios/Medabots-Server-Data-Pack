execute as @e[x=0,y=8,z=0,dx=94,dy=49,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=20}] run scoreboard players set @s Stage 20
fill -1857 50 -730 -1764 44 -637 minecraft:air replace minecraft:barrier
bossbar set medabots_server:park_b/time players
bossbar set medabots_server:park_b/robattle players
scoreboard players set @a[scores={Stage=20},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=20},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=20},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=20},tag=medabot,distance=0.1..] 46 59 47 -180 0
scoreboard players set @s[scores={Stage=20,State=0}] Music 0
scoreboard players set @s[scores={Stage=20,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=20,State=0}] State 0
teleport @s[scores={Stage=20,State=0}] 46 59 47 -180 0
tag @e[scores={Stage=20},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=20},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=20},distance=0.1..] Stage
tag @e[scores={Stage=20},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=20},type=!minecraft:player,tag=barrier] remove barrier
data merge block 45 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_b/play"}}'}
setblock 45 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}