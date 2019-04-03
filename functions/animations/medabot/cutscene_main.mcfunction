execute if entity @s[tag=legs] run function medabots_server:animations/medabot/cutscene_legs
execute if entity @s[tag=left_arm] run function medabots_server:animations/medabot/cutscene_left_arm
execute if entity @s[tag=right_arm] run function medabots_server:animations/medabot/cutscene_right_arm
execute if entity @s[tag=head] run function medabots_server:animations/medabot/cutscene_head
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2