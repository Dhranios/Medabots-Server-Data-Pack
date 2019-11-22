execute as @e[x=-1919,y=42,z=-696,dx=60,dy=7,dz=60,type=!minecraft:player] unless entity @s[scores={Stage=60}] run scoreboard players set @s Stage 60
bossbar set medabots_server:rock_f/time players
bossbar set medabots_server:rock_f/robattle players
scoreboard players set @a[scores={Stage=60},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=60},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=60},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=60},tag=enemy_medabot] -1890 51 -666 -180 0
scoreboard players set @s[scores={Stage=60,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=60,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=60,Battle=0}] Battle 0
teleport @s[scores={Stage=60,Battle=0}] -1890 51 -666 -180 0
tag @e[scores={Stage=60},type=!minecraft:player] add dead
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}