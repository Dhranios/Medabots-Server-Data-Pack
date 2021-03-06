execute as @e[x=0,y=52,z=1,dx=90,dy=7,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=8}] run scoreboard players set @s Stage 8
bossbar set medabots_server:ruins_in_a/time players
bossbar set medabots_server:ruins_in_a/robattle players
scoreboard players set @a[scores={Stage=8},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=8},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=8},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=8},tag=medabot,distance=0.1..] 46 59 86 -180 0
scoreboard players set @s[scores={Stage=8,State=0}] Music 0
scoreboard players set @s[scores={Stage=8,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=8,State=0}] State 0
teleport @s[scores={Stage=8,State=0}] 46 59 86 -180 0
tag @e[scores={Stage=8},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=8},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=8},distance=0.1..] Stage
data merge block 46 60 68 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_a/play"}}'}
setblock 44 61 68 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}