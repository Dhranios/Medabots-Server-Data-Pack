execute if entity @s[type=minecraft:player] run function medabots_server:other/intro_message/message
execute if entity @s[type=!minecraft:player,tag=try_special_message] run function medabots_server:other/intro_message/try_special
execute if entity @s[type=!minecraft:player,tag=!try_special_message] run function medabots_server:other/intro_message/message
tag @s add intro_message
tag @s remove message_1
tag @s remove message_2
tag @s remove message_3