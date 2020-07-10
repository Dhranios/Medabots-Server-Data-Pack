execute as @e[x=0,y=8,z=0,dx=95,dy=49,dz=96,type=!minecraft:player] unless entity @s[scores={Stage=54}] run scoreboard players set @s Stage 54
fill -1955 44 -247 -1861 44 -152 minecraft:air replace minecraft:barrier
bossbar set medabots_server:jungle_e/time players
bossbar set medabots_server:jungle_e/robattle players
scoreboard players set @a[scores={Stage=54},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=54},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=54},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=54},tag=medabot,distance=0.1..] 47 59 47 -180 0
scoreboard players set @s[scores={Stage=54,State=0}] Music 0
scoreboard players set @s[scores={Stage=54,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=54,State=0}] State 0
teleport @s[scores={Stage=54,State=0}] 47 59 47 -180 0
tag @e[scores={Stage=54},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=54},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=54},distance=0.1..] Stage
tag @e[scores={Stage=54},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=54},type=!minecraft:player,tag=barrier] remove barrier
data merge block 46 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_e/play"}}'}
setblock 46 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}