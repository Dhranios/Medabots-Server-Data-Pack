scoreboard players operation #temp NeededPlayers = @s NeededPlayers
scoreboard players operation #temp NeededPlayers -= @a[distance=..0.1,scores={StageIndex=0..},limit=1] StageIndex
execute if entity @a[distance=..0.1,scores={StageIndex=0..},limit=1] run scoreboard players remove #temp NeededPlayers 1

execute if score #temp NeededPlayers matches 0 run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_in_d"}]}
execute if score #temp NeededPlayers matches 1 run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_in_d"}]}
execute if score #temp NeededPlayers matches 2.. run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_d"},{"score":{"name":"#temp","objective":"NeededPlayers"}}]}

execute if score #temp NeededPlayers matches 0 run data merge block 32 60 32 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if score #temp NeededPlayers matches 0 run setblock 34 61 32 minecraft:air
execute if score #temp NeededPlayers matches 0 run data merge block 29 60 32 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_in_d/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if score #temp NeededPlayers matches 0 run setblock 27 61 32 minecraft:air

execute if score #temp NeededPlayers matches 0 unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/create/ruins_in_d/custom
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=1}] run function medabots_server:stage/create/ruins_in_d/first_go

scoreboard players reset #temp NeededPlayers