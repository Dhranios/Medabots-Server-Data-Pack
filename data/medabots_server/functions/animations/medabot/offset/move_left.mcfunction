execute if score #temp Time matches 10.. run teleport @s ^0.1 ^ ^
execute if score #temp Time matches ..-10 run teleport @s ^-0.1 ^ ^
execute if score #temp Time matches 10.. run scoreboard players remove #temp Time 10
execute if score #temp Time matches ..-10 run scoreboard players add #temp Time 10
execute if score #temp Time matches 1..9 positioned as @s run teleport @s ^0.01 ^ ^
execute if score #temp Time matches -9..-1 positioned as @s run teleport @s ^-0.01 ^ ^
execute if score #temp Time matches 1..9 run scoreboard players remove #temp Time 1
execute if score #temp Time matches -9..-1 run scoreboard players add #temp Time 1
execute unless score #temp Time matches 0 positioned as @s run function medabots_server:animations/medabot/offset/move_left