data modify entity @s Tags append from storage medabots_server:data cannon.tags[]
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/cannon/body
execute if entity @s[tag=head,tag=!dying] run function medabots_server:animations/cannon/head
execute if entity @s[tag=body,tag=dying] run function medabots_server:animations/cannon/death/body
execute if entity @s[tag=head,tag=dying] run function medabots_server:animations/cannon/death/head
tag @s remove cannon
tag @s add found_owner
tag @s add found_owner_2