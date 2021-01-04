# Move with
teleport @s ^ ^ ^ ~ ~
execute unless entity @s[scores={LeftAmount=0}] run function medabots_server:animations/medabot/offset/left
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up
execute unless entity @s[scores={ForwardAmount=0}] run function medabots_server:animations/medabot/offset/forward

# Move animations
data modify entity @s[tag=was_sneak_posing,tag=!sneak_pos] Pose.Head[0] set value 0.001f
data modify entity @s[tag=!was_sneak_posing,tag=sneak_pos] Pose.Head[0] set value -10.0f
data modify entity @s[tag=was_sneaking,tag=!sneaking,tag=!sneak_pos,tag=!walking,tag=!running,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_walking,tag=!walking,tag=!sneaking,tag=!running,tag=!swimming] Pose.Head[0] set value 0.001f
data modify entity @s[tag=was_running,tag=!running,tag=!sneaking,tag=!walking,tag=!swimming] Pose.Head[0] set value 0.001f
data merge entity @s[tag=was_swimming,tag=!swimming] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[tag=sneaking,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/sneaking/wormtail
execute if entity @s[tag=walking,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/walking/wormtail
execute if entity @s[tag=running,tag=!dancing,tag=!carried] run function medabots_server:animations/medabot/running/wormtail
execute if entity @s[tag=swimming,tag=!dancing] run function medabots_server:animations/medabot/swimming/wormtail