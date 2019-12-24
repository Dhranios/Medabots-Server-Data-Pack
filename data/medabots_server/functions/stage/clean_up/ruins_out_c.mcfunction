execute as @e[x=-1665,y=0,z=-704,dx=62,dy=49,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=27}] run scoreboard players set @s Stage 27
fill -1665 43 -704 -1604 43 -642 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_out_c/time players
bossbar set medabots_server:ruins_out_c/robattle players
scoreboard players set @a[scores={Stage=27},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=27},tag=medabot,distance=0.1..] MusicType 22
scoreboard players set @a[scores={Stage=27},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=27},tag=medabot,distance=0.1..] -1635 50 -673 -180 0
scoreboard players set @s[scores={Stage=27,State=0}] Music 0
scoreboard players set @s[scores={Stage=27,State=0}] MusicType 22
scoreboard players set @s[scores={Stage=27,State=0}] State 0
teleport @s[scores={Stage=27,State=0}] -1635 50 -673 -180 0
tag @e[scores={Stage=27},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=27},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=27},distance=0.1..] Stage
tag @e[scores={Stage=27},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=27},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1636 51 -704 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_c/play"}}'}
setblock -1636 52 -706 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}