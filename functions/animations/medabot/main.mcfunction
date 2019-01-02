execute if entity @s[tag=legs] run function medabots_server:animations/medabot/legs
execute if entity @s[tag=left_arm] run function medabots_server:animations/medabot/left_arm
execute if entity @s[tag=right_arm] run function medabots_server:animations/medabot/right_arm
execute if entity @s[tag=head] run function medabots_server:animations/medabot/head
data merge entity @s {Fire:2s}