# Give only 1 player the tag, if nobody has the tag yet
execute unless entity @a[tag=message] run tag @s add message
scoreboard players reset @s[tag=!message] RandomMessage

# Random server messages
scoreboard players add @s[tag=message] RandomMessage 1
execute as @s[scores={RandomMessage=6667}] run function medabots_server:other/random_message/show