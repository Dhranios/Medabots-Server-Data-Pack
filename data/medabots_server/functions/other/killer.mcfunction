# For players: switch the message send per kill
scoreboard players add @s[scores={Killer=1},type=minecraft:player] Message 1
scoreboard players set @s[scores={Message=3},type=minecraft:player] Message 0

# For non-players: switch the message send every tick
scoreboard players add @s[tag=killerable,type=!minecraft:player] Message 1
scoreboard players set @s[scores={Message=3},type=!minecraft:player] Message 0

# Send the killer message
execute if entity @s[scores={Killer=1}] run function medabots_server:other/killer/message

# Reset killer score
execute if entity @s[scores={Killer=1}] run scoreboard players add @s TotalKills 1
scoreboard players set @s[scores={Killer=1}] Killer 0