execute as @e[x=0,y=50,z=0,dx=79,dy=7,dz=78,type=!minecraft:player] unless entity @s[scores={Stage=56}] run scoreboard players set @s Stage 56
bossbar set medabots_server:snowfield_e/time players
bossbar set medabots_server:snowfield_e/robattle players
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] Music 0
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] MusicType 1
scoreboard players set @a[scores={Stage=56},tag=medabot,distance=0.1..] State 0
teleport @a[scores={Stage=56},tag=medabot,distance=0.1..] 39 59 39 -180 0
scoreboard players set @s[scores={Stage=56,State=0}] Music 0
scoreboard players set @s[scores={Stage=56,State=0}] MusicType 1
scoreboard players set @s[scores={Stage=56,State=0}] State 0
teleport @s[scores={Stage=56,State=0}] 39 59 39 -180 0
tag @e[scores={Stage=56},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=56},distance=0.1..] StageVersion
scoreboard players reset @a[scores={Stage=56},distance=0.1..] Stage
data merge block 38 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_e/play"}}'}
setblock 38 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}