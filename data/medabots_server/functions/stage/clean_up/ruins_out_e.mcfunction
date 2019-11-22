execute as @e[x=-1922,y=42,z=-536,dx=62,dy=7,dz=95,type=!minecraft:player] unless entity @s[scores={Stage=58}] run scoreboard players set @s Stage 58
bossbar set medabots_server:ruins_out_e/time players
bossbar set medabots_server:ruins_out_e/robattle players
scoreboard players set @a[scores={Stage=58},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=58},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=58},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=58},tag=enemy_medabot] -1892 51 -489 -180 0
scoreboard players set @s[scores={Stage=58,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=58,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=58,Battle=0}] Battle 0
teleport @s[scores={Stage=58,Battle=0}] -1892 51 -489 -180 0
data merge block -1893 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_e/play"}}'}
setblock -1893 53 -538 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}