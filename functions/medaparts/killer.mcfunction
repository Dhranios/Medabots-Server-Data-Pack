# For players: switch the message send per kill
scoreboard players add @s[scores={Killer=1},type=minecraft:player] Message 1
scoreboard players set @s[scores={Message=3},type=minecraft:player] Message 0

# For non-players: switch the message send every tick
scoreboard players add @s[tag=killerable,type=!minecraft:player] Message 1
scoreboard players set @s[scores={Message=4},type=!minecraft:player] Message 0

# Give the killing player medallars and experience
scoreboard players add @s[scores={Killer=1},type=minecraft:player] Money 15
experience add @s[scores={Killer=1},type=minecraft:player] 10

# Send the killer message
execute if entity @s[scores={Killer=1}] run function medabots_server:medaparts/killer_message

# Reset killer score
scoreboard players set @s[scores={Killer=1}] Killer 0