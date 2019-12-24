execute as @e[x=-1812,y=41,z=-322,dx=80,dy=8,dz=72,type=!minecraft:player] unless entity @s[scores={Stage=9}] run scoreboard players set @s Stage 9
bossbar set medabots_server:laboratory_a/time players
bossbar set medabots_server:laboratory_a/robattle players
scoreboard players set @a[scores={Stage=9},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=9},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=9},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=9},tag=medabot,distance=0.1..] -1772 50 -285 -180 0
scoreboard players set @s[scores={Stage=9,State=0}] Music 0
scoreboard players set @s[scores={Stage=9,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=9,State=0}] State 0
teleport @s[scores={Stage=9,State=0}] -1772 50 -285 -180 0
tag @e[scores={Stage=9},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=9},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=9},distance=0.1..] Stage
data merge block -1773 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_a/play"}}'}
setblock -1773 52 -323 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}