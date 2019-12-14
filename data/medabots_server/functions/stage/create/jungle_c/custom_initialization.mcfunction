execute store result score @s NeededPlayers run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.vs
execute store result score #temp Money run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.cleared
execute if score #temp Money matches 0 run tag @s[tag=!vs_cpus,scores={NeededPlayers=1..}] add disallowed
tellraw @s[tag=disallowed] {"translate":"medabots_server:message.stage.clear_before_players"}
execute if entity @s[tag=!disallowed] run function medabots_server:gamemodes/default/set_stats
execute if entity @s[tag=!disallowed] run scoreboard players set @s StageIndex -1
execute if entity @s[tag=!disallowed] run tag @s add main
execute if entity @s[tag=!disallowed] unless entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/create/jungle_c/custom
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/join/jungle_c/try_to_complete
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run teleport @s -1541 50 -515 -180 0
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock -1540 52 -547 minecraft:redstone_block
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_c/try"}}'}
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock -1542 52 -547 minecraft:redstone_block
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
scoreboard players reset #temp Money
tag @s remove disallowed