scoreboard players operation #temp NeededPlayers = @s NeededPlayers
scoreboard players operation #temp NeededPlayers -= @a[distance=..0.1,scores={StageIndex=0..},limit=1] StageIndex
execute if entity @a[distance=..0.1,scores={StageIndex=0..},limit=1] run scoreboard players remove #temp NeededPlayers 1

execute if entity @s[scores={ArenaType=0..1}] run tag @a[distance=..0.1,limit=1] add enemy_medabot
execute if entity @s[scores={ArenaType=2}] run tag @a[distance=..0.1,scores={StageIndex=0},limit=1] add ally_medabot
execute if entity @s[scores={ArenaType=2}] run tag @a[distance=..0.1,scores={StageIndex=1..2},limit=1] add enemy_medabot

execute if score #temp NeededPlayers matches 0 run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.woods_battle"}]}
execute if score #temp NeededPlayers matches 1 run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.woods_battle"}]}
execute if score #temp NeededPlayers matches 2.. run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.woods_battle"},{"score":{"name":"#temp","objective":"NeededPlayers"}}]}

execute if score #temp NeededPlayers matches 0 run data merge block 24 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if score #temp NeededPlayers matches 0 run setblock 24 61 -2 minecraft:air
execute if score #temp NeededPlayers matches 0 run data merge block 22 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/woods_battle/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if score #temp NeededPlayers matches 0 run setblock 22 61 -2 minecraft:air

execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=1}] run function medabots_server:stage/create/woods_battle/stones
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=2}] run function medabots_server:stage/create/woods_battle/action_floors_1
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=3}] run function medabots_server:stage/create/woods_battle/action_floors_2
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=4}] run function medabots_server:stage/create/woods_battle/balloon_bombs
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=5}] run function medabots_server:stage/create/woods_battle/accelerators
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=6}] run function medabots_server:stage/create/woods_battle/lasers
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=7}] run function medabots_server:stage/create/woods_battle/cannons
execute if score #temp NeededPlayers matches 0 if entity @s[scores={StageVersion=8}] run function medabots_server:stage/create/woods_battle/empty

scoreboard players reset #temp NeededPlayers