execute as @e[x=-1760,y=41,z=-633,dx=92,dy=8,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=18}] run scoreboard players set @s Stage 18
bossbar set medabots_server:laboratory_b/time players
bossbar set medabots_server:laboratory_b/robattle players
scoreboard players set @a[scores={Stage=18},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=18},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=18},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=18},tag=medabot,distance=0.1..] -1727 50 -575 -180 0
scoreboard players set @s[scores={Stage=18,State=0}] Music 0
scoreboard players set @s[scores={Stage=18,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=18,State=0}] State 0
teleport @s[scores={Stage=18,State=0}] -1727 50 -575 -180 0
tag @e[scores={Stage=18},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=18},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=18},distance=0.1..] Stage
data merge block -1728 51 -604 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_b/play"}}'}
setblock -1728 52 -606 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}