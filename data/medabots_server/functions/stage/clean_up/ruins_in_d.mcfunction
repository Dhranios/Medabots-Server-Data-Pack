execute as @e[x=0,y=50,z=0,dx=62,dy=7,dz=62,type=!minecraft:player] unless entity @s[scores={Stage=34}] run scoreboard players set @s Stage 34
bossbar set medabots_server:ruins_in_d/time players
bossbar set medabots_server:ruins_in_d/robattle players
scoreboard players set @a[scores={Stage=34},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=34},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=34},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=34},tag=medabot,distance=0.1..] 30 59 40 -180 0
scoreboard players set @s[scores={Stage=34,State=0}] Music 0
scoreboard players set @s[scores={Stage=34,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=34,State=0}] State 0
teleport @s[scores={Stage=34,State=0}] 30 59 40 -180 0
tag @e[scores={Stage=34},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=34},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=34},distance=0.1..] Stage
data merge block 29 60 32 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_d/play"}}'}
setblock 27 61 32 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}