execute as @e[x=-1905,y=42,z=-438,dx=79,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=56}] run scoreboard players set @s Stage 56
bossbar set medabots_server:snowfield_e/time players
bossbar set medabots_server:snowfield_e/robattle players
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] Battle 0
teleport @a[scores={Stage=56},tag=medabot,distance=0.1..] -1866 51 -399 -180 0
scoreboard players set @s[scores={Stage=56,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=56,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=56,Battle=0}] Battle 0
teleport @s[scores={Stage=56,Battle=0}] -1866 51 -399 -180 0
tag @e[scores={Stage=56},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=56}] StageVersion
scoreboard players reset @a[scores={Stage=56}] Stage
data merge block -1867 52 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_e/play"}}'}
setblock -1867 53 -440 minecraft:redstone_block
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}