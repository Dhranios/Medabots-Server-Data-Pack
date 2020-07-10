execute store result score @s NeededPlayers run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.vs
execute store result score #temp Money run data get entity @s Inventory[{Slot:-106b}].tag.medabots_server.cleared
execute if score #temp Money matches 0 run tag @s[tag=!vs_cpus,scores={NeededPlayers=1..}] add disallowed
tellraw @s[tag=disallowed] {"translate":"medabots_server:message.stage.clear_before_players"}
execute if entity @s[tag=!disallowed] run function medabots_server:gamemodes/default/set_stats
execute if entity @s[tag=!disallowed] run scoreboard players set @s StageIndex -1
execute if entity @s[tag=!disallowed] run tag @s add main
execute if entity @s[tag=!disallowed] unless entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/create/ruins_in_d/custom
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run function medabots_server:stage/join/ruins_in_d/try_to_complete
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run teleport @s 30 59 40 -180 0
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock 34 61 32 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block 32 60 32 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_d/try"}}'}
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run setblock 27 61 32 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!disallowed] if entity @s[tag=!vs_cpus,scores={NeededPlayers=1..}] run data merge block 29 60 32 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
scoreboard players reset #temp Money
tag @s remove disallowed