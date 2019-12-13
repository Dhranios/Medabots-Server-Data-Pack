execute as @e[x=-1666,y=0,z=-572,dx=92,dy=49,dz=92,type=!minecraft:player] unless entity @s[scores={Stage=17}] run scoreboard players set @s Stage 17
fill -1667 43 -573 -1574 43 -480 minecraft:air replace minecraft:barrier
bossbar set medabots_server:ruins_in_b/time players
bossbar set medabots_server:ruins_in_b/robattle players
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=17},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=17},tag=enemy_medabot] -1620 50 -526 -180 0
scoreboard players set @s[scores={Stage=17,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=17,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=17,Battle=0}] Battle 0
teleport @s[scores={Stage=17,Battle=0}] -1620 50 -526 -180 0
tag @e[scores={Stage=17},type=!minecraft:player] add dead
scoreboard players reset @a[scores={Stage=17}] StageVersion
scoreboard players reset @a[scores={Stage=17}] Stage
tag @e[scores={Stage=17},type=!minecraft:player,tag=barrier] add air
tag @e[scores={Stage=17},type=!minecraft:player,tag=barrier] remove barrier
data merge block -1621 51 -572 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -574 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}