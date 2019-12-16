execute as @e[x=-1665,y=42,z=-768,dx=61,dy=7,dz=61,type=!minecraft:player] unless entity @s[scores={Stage=31}] run scoreboard players set @s Stage 31
bossbar set medabots_server:jungle_d/time players
bossbar set medabots_server:jungle_d/robattle players
scoreboard players set @a[scores={Stage=31},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=31},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=31},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=31},tag=medabot,distance=0.1..] -1635 51 -738 -180 0
scoreboard players set @s[scores={Stage=31,State=0}] Music 0
scoreboard players set @s[scores={Stage=31,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=31,State=0}] State 0
teleport @s[scores={Stage=31,State=0}] -1635 51 -738 -180 0
tag @e[scores={Stage=31},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=31}] StageVersion
scoreboard players reset @a[scores={Stage=31}] Stage
data merge block -1636 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_d/play"}}'}
setblock -1636 53 -770 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}