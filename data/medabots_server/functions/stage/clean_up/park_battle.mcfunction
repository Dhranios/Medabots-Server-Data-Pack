execute as @e[x=-1973,y=0,z=-589,dx=50,dy=50,dz=50,type=!minecraft:player] unless entity @s[scores={Stage=50}] run scoreboard players set @s Stage 50
scoreboard players set @a[scores={Stage=50},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=50},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=50},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=50},tag=enemy_medabot] -1997 51 -560 -180 0
scoreboard players set @s[scores={Stage=50,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=50,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=50,Battle=0}] Battle 0
teleport @s[scores={Stage=50,Battle=0}] -1997 51 -560 -180 0
tag @e[scores={Stage=50},type=!minecraft:player] add dead
data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_battle/play"}}'}
setblock -1950 53 -591 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}