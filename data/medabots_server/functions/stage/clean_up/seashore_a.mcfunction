execute as @e[x=0,y=51,z=0,dx=63,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=4}] run scoreboard players set @s Stage 4
bossbar set medabots_server:seashore_a/time players
bossbar set medabots_server:seashore_a/robattle players
scoreboard players set @a[scores={Stage=4},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=4},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=4},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=4},tag=medabot,distance=0.1..] 31 59 31 -180 0
scoreboard players set @s[scores={Stage=4,State=0}] Music 0
scoreboard players set @s[scores={Stage=4,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=4,State=0}] State 0
teleport @s[scores={Stage=4,State=0}] 31 59 31 -180 0
tag @e[scores={Stage=4},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=4},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=4},distance=0.1..] Stage
data merge block 30 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/seashore_a/play"}}'}
setblock 30 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}