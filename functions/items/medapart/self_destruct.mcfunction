execute if entity @s[scores={SelfDestructTime=20}] run function medabots_server:items/medapart/self_destruct/20

# Start the timer
scoreboard players add @s[scores={SelfDestruct=1..,Battle=1}] SelfDestructTime 1

# Cancel the move
scoreboard players reset @s[scores={Battle=2..}] SelfDestruct