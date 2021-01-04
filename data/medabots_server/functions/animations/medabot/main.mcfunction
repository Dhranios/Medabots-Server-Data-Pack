execute if entity @s[scores={AnimationProg=1..}] unless data storage medabots_server:data medabot{tags:["dancing"]} run scoreboard players set @s[tag=dancing] AnimationProg 0
data merge entity @s[scores={AnimationProg=0},tag=dancing] {Pose:{Head:[0.001f,0.001f,0.001f]}}
tag @s[scores={AnimationProg=0}] remove dancing
execute if entity @s[scores={AnimationProg=1..}] unless data storage medabots_server:data medabot{tags:["sneaking"]} run scoreboard players set @s[tag=was_sneaking,tag=!was_swimming] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] unless data storage medabots_server:data medabot{tags:["walking"]} run scoreboard players set @s[tag=was_walking,tag=!was_swimming] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] unless data storage medabots_server:data medabot{tags:["running"]} run scoreboard players set @s[tag=was_running,tag=!was_swimming] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data medabot{tags:["dancing"]} run scoreboard players set @s[tag=!dancing] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data medabot{tags:["swimming"]} run scoreboard players set @s[tag=!was_swimming] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:data medabot.tags[]
tag @s[tag=not_yet] remove drowned
tag @s[tag=not_yet] remove crushed
tag @s[tag=not_yet] remove dying
tag @s[tag=!not_yet,tag=dying,tag=!drowned,tag=!crushed] add normal_death
tag @s[tag=walking,tag=sneak_pos] add sneaking
tag @s[tag=walking,tag=sneak_pos] remove walking
execute if data storage medabots_server:data medabot{gliding:1b} run tag @s[tag=walking] remove walking
execute unless entity @s[tag=fly_legs,tag=!static_fly] run tag @s[tag=legs_selected] add guarding
tag @s[tag=cannot_defend] remove guarding
execute if entity @s[tag=legs] run function medabots_server:animations/medabot/split_legs
execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head,tag=!selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time -= @s IncreaseAmount
execute unless data storage medabots_server:data medabot{gliding:0b,swimming:0b} store result score @s IncreaseAmount run data get entity @e[tag=this_medabot,tag=!medabot_model,limit=1] Rotation[1]
execute unless data storage medabots_server:data medabot{gliding:0b,swimming:0b} run scoreboard players add @s IncreaseAmount 90
execute if data storage medabots_server:data medabot{gliding:0b,swimming:0b} run scoreboard players set @s IncreaseAmount 0
scoreboard players reset #temp Time
execute if data storage medabots_server:data medabot{gliding:0b,swimming:0b} run function medabots_server:animations/medabot/call_part_function
execute unless data storage medabots_server:data medabot{gliding:0b,swimming:0b} rotated ~ ~90 run function medabots_server:animations/medabot/call_part_function
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[tag=!head,tag=!selected] store result entity @s Pose.Head[0] float 1 run scoreboard players operation #temp Time += @s IncreaseAmount
scoreboard players reset #temp Time
tag @s[tag=sneaking] add was_sneaking
tag @s[tag=!sneaking] remove was_sneaking
tag @s[tag=sneaking] remove sneaking
tag @s[tag=walking] add was_walking
tag @s[tag=!walking] remove was_walking
tag @s[tag=walking] remove walking
tag @s[tag=running] add was_running
tag @s[tag=!running] remove was_running
tag @s[tag=running] remove running
tag @s[tag=swimming] add was_swimming
tag @s[tag=!swimming] remove was_swimming
tag @s[tag=swimming] remove swimming
tag @s[tag=sneak_pos] add was_sneak_posing
tag @s[tag=!sneak_pos] remove was_sneak_posing
tag @s[tag=sneak_pos] remove sneak_pos
tag @s[tag=selected] add was_selected
tag @s[tag=!selected] remove was_selected
tag @s[tag=selected] remove selected
tag @s[tag=guarding] add was_guarding
tag @s[tag=!guarding] remove was_guarding
tag @s[tag=guarding] remove guarding
tag @s[tag=edge_grabbing] add was_edge_grabbing
tag @s[tag=!edge_grabbing] remove was_edge_grabbing
tag @s[tag=edge_grabbing] remove edge_grabbing
tag @s[tag=carried] remove carried
tag @s remove medabot
tag @s remove head_selected
tag @s remove right_arm_selected
tag @s remove left_arm_selected
tag @s remove legs_selected
tag @s add found_owner
tag @s add found_owner_2