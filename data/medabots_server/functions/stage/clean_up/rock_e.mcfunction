execute as @e[x=-1906,y=42,z=-345,dx=93,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=53}] run scoreboard players set @s Stage 53
bossbar set medabots_server:rock_e/time players
bossbar set medabots_server:rock_e/robattle players
scoreboard players set @a[scores={Stage=53},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=53},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=53},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=53},tag=enemy_medabot] -1860 51 -298 -180 0
scoreboard players set @s[scores={Stage=53,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=53,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=53,Battle=0}] Battle 0
teleport @s[scores={Stage=53,Battle=0}] -1860 51 -298 -180 0
tag @e[scores={Stage=53},type=!minecraft:player] add dead
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}