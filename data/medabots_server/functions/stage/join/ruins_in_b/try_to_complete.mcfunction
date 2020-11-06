scoreboard players operation #temp NeededPlayers = @s NeededPlayers
scoreboard players operation #temp NeededPlayers -= @a[distance=..0.1,scores={StageIndex=0..},limit=1] StageIndex
execute if entity @a[distance=..0.1,scores={StageIndex=0..},limit=1] run scoreboard players remove #temp NeededPlayers 1

execute if score #temp NeededPlayers matches 0 run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"}]}
execute if score #temp NeededPlayers matches 1 run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"}]}
execute if score #temp NeededPlayers matches 2.. run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in_b"},{"score":{"name":"#temp","objective":"NeededPlayers"}}]}

execute if score #temp NeededPlayers matches 0 run data merge block 47 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if score #temp NeededPlayers matches 0 run setblock 47 61 -2 minecraft:air
execute if score #temp NeededPlayers matches 0 run data merge block 45 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_in_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if score #temp NeededPlayers matches 0 run setblock 45 61 -2 minecraft:air

execute if score #temp NeededPlayers matches 0 unless entity @s[scores={StageVersion=0..}] run function medabots_server:stage/create/ruins_in_b/custom
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=1}] run function medabots_server:stage/create/ruins_in_b/first_go
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=2}] run function medabots_server:stage/create/ruins_in_b/second_go
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=3}] run function medabots_server:stage/create/ruins_in_b/rubberobo
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=4}] run function medabots_server:stage/create/ruins_in_b/dev_dhranios

scoreboard players reset #temp NeededPlayers