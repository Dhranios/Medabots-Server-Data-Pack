execute as @e[x=-2015,y=41,z=-536,dx=91,dy=7,dz=94,type=!minecraft:player] unless entity @s[scores={Stage=59}] run scoreboard players set @s Stage 59
bossbar set medabots_server:ruins_in_e/time players
bossbar set medabots_server:ruins_in_e/robattle players
scoreboard players set @a[scores={Stage=59},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=59},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=59},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=59},tag=enemy_medabot] -1981 50 -478 -180 0
scoreboard players set @s[scores={Stage=59,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=59,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=59,Battle=0}] Battle 0
teleport @s[scores={Stage=59,Battle=0}] -1981 50 -478 -180 0
tag @e[scores={Stage=59},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=59}] StageVersion
scoreboard players reset @a[scores={Stage=59}] Stage
data merge block -1982 51 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_e/play"}}'}
setblock -1982 52 -537 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}