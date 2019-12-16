execute as @e[x=-1666,y=0,z=-477,dx=94,dy=50,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=12}] run scoreboard players set @s Stage 12
fill -1666 44 -477 -1573 44 -386 minecraft:air replace minecraft:barrier
bossbar set medabots_server:jungle_b/time players
bossbar set medabots_server:jungle_b/robattle players
scoreboard players set @a[scores={Stage=12},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=12},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=12},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=12},tag=medabot,distance=0.1..] -1620 51 -431 -180 0
scoreboard players set @s[scores={Stage=12,State=0}] Music 0
scoreboard players set @s[scores={Stage=12,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=12,State=0}] State 0
teleport @s[scores={Stage=12,State=0}] -1620 51 -431 -180 0
tag @e[scores={Stage=12},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=12}] StageVersion
scoreboard players reset @a[scores={Stage=12}] Stage
tag @e[scores={Stage=12},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=12},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_b/play"}}'}
setblock -1621 53 -479 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}