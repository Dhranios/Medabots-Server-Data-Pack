# For players: switch the message send per kill
scoreboard players add @s[scores={Killer=1..},type=minecraft:player] Message 1
scoreboard players set @s[scores={Message=3},type=minecraft:player] Message 0

# For non-players: switch the message send every tick
scoreboard players add @s[tag=killerable,type=!minecraft:player] Message 1
scoreboard players set @s[scores={Message=3},type=!minecraft:player] Message 0

# Send the killer message
execute if entity @s[scores={Killer=1..},tag=!dying] run function medabots_server:other/killer/message

# Reset killer score
scoreboard players add @s[scores={Killer=1..},tag=killed_player] TotalKills 1
tag @s[scores={Killer=1..},tag=killed_player] remove killed_player
scoreboard players remove @s[scores={Killer=1..}] Killer 1