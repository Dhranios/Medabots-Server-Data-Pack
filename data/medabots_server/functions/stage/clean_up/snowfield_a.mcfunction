execute as @e[x=0,y=51,z=0,dx=105,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=5}] run scoreboard players set @s Stage 5
bossbar set medabots_server:snowfield_a/time players
bossbar set medabots_server:snowfield_a/robattle players
scoreboard players set @a[scores={Stage=5},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=5},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=5},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=5},tag=medabot,distance=0.1..] 48 59 31 -180 0
scoreboard players set @s[scores={Stage=5,State=0}] Music 0
scoreboard players set @s[scores={Stage=5,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=5,State=0}] State 0
teleport @s[scores={Stage=5,State=0}] 48 59 31 -180 0
tag @e[scores={Stage=5},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=5},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=5},distance=0.1..] Stage
data merge block 47 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_a/play"}}'}
setblock 47 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}