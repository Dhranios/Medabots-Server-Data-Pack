execute if entity @e[tag=this_medabot,tag=drowned,limit=1] run tag @s[tag=!not_yet] add drowned
execute if entity @e[tag=this_medabot,tag=crushed,limit=1] run tag @s[tag=!not_yet] add crushed
execute if entity @e[tag=this_medabot,tag=!drowned,tag=!crushed,limit=1] run tag @s[tag=!not_yet] add normal_death
execute if entity @e[tag=this_medabot,tag=dying,limit=1] run tag @s[tag=!not_yet] add dying
execute if entity @e[tag=dancing,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add dancing
execute if entity @e[tag=carried,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add carried
execute if entity @e[tag=walking,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add walking
execute if entity @e[tag=running,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add running
execute if entity @e[tag=sneakng,tag=this_medabot,tag=!medabot_model,limit=1] run tag @s add sneakng
execute if entity @s[tag=legs,tag=!dying] run function medabots_server:animations/medabot/split_legs
execute if entity @s[tag=hips,tag=!dying] run function medabots_server:animations/medabot/hips
execute if entity @s[tag=leg,tag=!dying] run function medabots_server:animations/medabot/leg
execute if entity @s[tag=tail,tag=!dying] run function medabots_server:animations/medabot/tail
execute if entity @s[tag=wormtail,tag=!dying] run function medabots_server:animations/medabot/wormtail
execute if entity @s[tag=left_arm,tag=!dying] run function medabots_server:animations/medabot/left_arm
execute if entity @s[tag=right_arm,tag=!dying] run function medabots_server:animations/medabot/right_arm
execute if entity @s[tag=chest,tag=!dying] run function medabots_server:animations/medabot/chest
execute if entity @s[tag=head,tag=!dying] run function medabots_server:animations/medabot/head
execute if entity @s[tag=hips,tag=dying] run function medabots_server:animations/medabot/death/hips
execute if entity @s[tag=leg,tag=dying] run function medabots_server:animations/medabot/death/legs
execute if entity @s[tag=tail,tag=dying] run function medabots_server:animations/medabot/death/hips
execute if entity @s[tag=wormtail,tag=dying] run function medabots_server:animations/medabot/death/legs
execute if entity @s[tag=left_arm,tag=dying] run function medabots_server:animations/medabot/death/left_arm
execute if entity @s[tag=right_arm,tag=dying] run function medabots_server:animations/medabot/death/right_arm
execute if entity @s[tag=chest,tag=dying] run function medabots_server:animations/medabot/death/chest
execute if entity @s[tag=head,tag=dying] run function medabots_server:animations/medabot/death/head
scoreboard players set @s[tag=!dancing] AnimationProg 0
tag @s[tag=dancing] remove dancing
tag @s[tag=carried] remove carried
tag @s[tag=walking] remove walking
tag @s[tag=running] remove running
tag @s[tag=sneakng] remove sneakng
data merge entity @s {Fire:2s}
tag @s add found_owner
tag @s add found_owner_2