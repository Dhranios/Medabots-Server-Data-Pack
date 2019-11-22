execute as @e[x=-1665,y=42,z=-638,dx=64,dy=7,dz=63,type=!minecraft:player] unless entity @s[scores={Stage=22}] run scoreboard players set @s Stage 22
bossbar set medabots_server:paradise_b/time players
bossbar set medabots_server:paradise_b/robattle players
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] Music 0
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] MusicType 1
scoreboard players set @a[scores={Stage=22},tag=enemy_medabot] Battle 0
teleport @a[scores={Stage=22},tag=enemy_medabot] -1634 51 -607 -180 0
scoreboard players set @s[scores={Stage=22,Battle=0}] Music 0
scoreboard players set @s[scores={Stage=22,Battle=0}] MusicType 1
scoreboard players set @s[scores={Stage=22,Battle=0}] Battle 0
teleport @s[scores={Stage=22,Battle=0}] -1634 51 -607 -180 0
tag @e[scores={Stage=22},type=!minecraft:player] add dead
data merge block -1635 52 -638 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_b/play"}}'}
setblock -1635 53 -640 minecraft:redstone_block
clear @s minecraft:written_book{medabots_server:{id:"medabots_server:stage_builder"}}
execute if block ~ ~ ~ minecraft:oak_wall_sign run tellraw @s {"translate":"medabots_server:message.stage.available_again","color":"green"}