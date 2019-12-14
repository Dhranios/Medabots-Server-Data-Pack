execute store result score @s NeededPlayers run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.vs
execute store result score #temp Money run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.cleared
execute if score #temp Money matches 0 run tag @s[tag=!vs_cpus,scores={NeededPlayers=1..}] add disallowed
tellraw @s[tag=disallowed] {"translate":"medabots_server:message.stage.clear_before_players"}
execute if entity @s[tag=!disallowed] run function medabots_server:gamemodes/default/set_stats
execute if entity @s[tag=!disallowed] run scoreboard players set @s StageIndex -1
execute if entity @s[tag=!disallowed] run tag @s add main
execute if entity @s[tag=!disallowed] unless entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/create/grassland_a/custom
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/join/grassland_a/try_to_complete
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run teleport @s -1539 51 -151 -180 0
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock -1538 53 -182 minecraft:redstone_block
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block -1538 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_a/try"}}'}
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock -1540 53 -182 minecraft:redstone_block
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
scoreboard players reset #temp Money
tag @s remove disallowed