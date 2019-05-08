execute if entity @e[tag=this_medabot,tag=drowned] run tag @s add drowned
execute if entity @e[tag=this_medabot,tag=crushed] run tag @s add crushed
execute if entity @e[tag=this_medabot,tag=!drowned,tag=!crushed] run tag @s add normal_death
execute if entity @e[tag=this_medabot,tag=dying] run tag @s add dying
execute if entity @s[tag=legs,tag=!dying] run function medabots_server:animations/medabot/legs
execute if entity @s[tag=left_arm,tag=!dying] run function medabots_server:animations/medabot/left_arm
execute if entity @s[tag=right_arm,tag=!dying] run function medabots_server:animations/medabot/right_arm
execute if entity @s[tag=head,tag=!dying] run function medabots_server:animations/medabot/head
execute if entity @s[tag=legs,tag=dying] run function medabots_server:animations/medabot/death/legs
execute if entity @s[tag=left_arm,tag=dying] run function medabots_server:animations/medabot/death/left_arm
execute if entity @s[tag=right_arm,tag=dying] run function medabots_server:animations/medabot/death/right_arm
execute if entity @s[tag=head,tag=dying] run function medabots_server:animations/medabot/death/head
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2