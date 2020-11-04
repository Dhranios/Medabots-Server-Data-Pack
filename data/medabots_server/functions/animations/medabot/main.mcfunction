data modify entity @s Tags append from storage medabots_server:medabot Tags[]
tag @s[tag=not_yet] remove drowned
tag @s[tag=not_yet] remove crushed
tag @s[tag=not_yet] remove dying
tag @s[tag=!not_yet,tag=dying,tag=!drowned,tag=!crushed] add normal_death
tag @s[tag=walking,tag=sneak_pos] add sneaking
tag @s[tag=walking,tag=sneak_pos] remove walking
execute unless entity @s[tag=fly_legs,tag=!static_fly] run tag @s[tag=!has_medabot_form,tag=cpu,tag=legs_selected] add guarding
tag @s[tag=cannot_defend] remove guarding
execute if entity @e[tag=this_medabot,tag=leg,limit=1] run tag @s add has_legs
execute if entity @s[tag=legs] run function medabots_server:animations/medabot/split_legs
execute if entity @s[tag=source,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/source
execute if entity @s[tag=hips,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/hips
execute if entity @s[tag=leg,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/leg
execute if entity @s[tag=tail,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/tail
execute if entity @s[tag=wormtail,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/wormtail
execute if entity @s[tag=left_arm,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/left_arm
execute if entity @s[tag=right_arm,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/right_arm
execute if entity @s[tag=chest,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/chest
execute if entity @s[tag=head,tag=!dying,tag=!tinpet_editing] run function medabots_server:animations/medabot/head
execute if entity @s[tag=source,tag=dying] run function medabots_server:animations/medabot/death/hips
execute if entity @s[tag=hips,tag=dying] run function medabots_server:animations/medabot/death/hips
execute if entity @s[tag=leg,tag=dying] run function medabots_server:animations/medabot/death/legs
execute if entity @s[tag=tail,tag=dying] run function medabots_server:animations/medabot/death/hips
execute if entity @s[tag=wormtail,tag=dying] run function medabots_server:animations/medabot/death/legs
execute if entity @s[tag=left_arm,tag=dying] run function medabots_server:animations/medabot/death/left_arm
execute if entity @s[tag=right_arm,tag=dying] run function medabots_server:animations/medabot/death/right_arm
execute if entity @s[tag=chest,tag=dying] run function medabots_server:animations/medabot/death/chest
execute if entity @s[tag=head,tag=dying] run function medabots_server:animations/medabot/death/head
execute if entity @s[tag=source,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/source
execute if entity @s[tag=hips,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/hips
execute if entity @s[tag=leg,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/leg
execute if entity @s[tag=tail,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/tail
execute if entity @s[tag=wormtail,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/wormtail
execute if entity @s[tag=left_arm,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/left_arm
execute if entity @s[tag=right_arm,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/right_arm
execute if entity @s[tag=chest,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/chest
execute if entity @s[tag=head,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/head
execute if entity @s[tag=medal,tag=tinpet_editing] run function medabots_server:animations/medabot/tinpet_editing/medal
scoreboard players set @s[tag=!dancing] AnimationProg 0
tag @s[tag=sneaking] add was_sneaking
tag @s[tag=!sneaking] remove was_sneaking
tag @s[tag=sneak_pos] add was_sneak_posing
tag @s[tag=!sneak_pos] remove was_sneak_posing
tag @s[tag=was_selected] remove was_selected
tag @s[tag=selected] add was_selected
tag @s[tag=selected] remove selected
tag @s[tag=was_guarding] remove was_guarding
tag @s[tag=guarding] add was_guarding
tag @s[tag=guarding] remove guarding
tag @s[tag=was_edge_grabbing] remove was_edge_grabbing
tag @s[tag=edge_grabbing] add was_edge_grabbing
tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=dancing] remove dancing
tag @s[tag=carried] remove carried
tag @s[tag=walking] remove walking
tag @s[tag=running] remove running
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=sneaking] remove sneaking
tag @s remove medabot
tag @s add found_owner
tag @s add found_owner_2