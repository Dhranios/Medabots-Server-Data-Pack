execute as @e[x=-1858,y=0,z=-536,dx=94,dy=50,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=16}] run scoreboard players set @s Stage 16
fill -1858 44 -536 -1765 44 -442 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_out_b/time players
bossbar set medabots_server:ruins_out_b/robattle players
scoreboard players set @a[scores={Stage=16},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=16},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=16},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=16},tag=medabot,distance=0.1..] -1813 51 -489 -180 0
scoreboard players set @s[scores={Stage=16,State=0}] Music 0
scoreboard players set @s[scores={Stage=16,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=16,State=0}] State 0
teleport @s[scores={Stage=16,State=0}] -1813 51 -489 -180 0
tag @e[scores={Stage=16},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=16},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=16},distance=0.1..] Stage
tag @e[scores={Stage=16},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=16},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1814 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_b/play"}}'}
setblock -1814 53 -537 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}