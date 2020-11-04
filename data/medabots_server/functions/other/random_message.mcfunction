# Random server messages
scoreboard players add #message RandomMessage 1
execute if score #message RandomMessage matches 6667 positioned -286 55 -52 run function medabots_server:other/random_message_show