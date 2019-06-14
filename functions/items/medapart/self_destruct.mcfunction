execute if entity @s[scores={SelfDestructTime=40}] run function medabots_server:items/medapart/self_destruct/40

# Start the timer
scoreboard players add @s[scores={SelfDestructTime=1..}] SelfDestructTime 1
execute unless entity @s[scores={SelfDestructTime=1..}] run scoreboard players add @s[scores={SelfDestruct=1..,Battle=1},nbt={SelectedItem:{tag:{medabots_server:{part:"medal"}}}}] SelfDestructTime 1
execute unless entity @s[scores={SelfDestructTime=1..}] run scoreboard players add @s[scores={SelfDestruct=1..,Battle=1},type=!minecraft:player] SelfDestructTime 1

# Show particles
execute if entity @s[scores={SelfDestructTime=1..}] run particle minecraft:dust 1 0 0 1 ~ ~1 ~ 1 2 1 0 30

# Cancel the move
execute unless entity @s[scores={SelfDestructTime=1..}] run scoreboard players reset @s SelfDestruct