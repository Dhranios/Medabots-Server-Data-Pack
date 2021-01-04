# Move with
teleport @s ^ ^ ^ ~ ~
execute unless entity @s[scores={LeftAmount=0}] run function medabots_server:animations/medabot/offset/left
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up
execute unless entity @s[scores={ForwardAmount=0}] run function medabots_server:animations/medabot/offset/forward

# Move animations
data merge entity @s[tag=was_swimming,tag=!swimming] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute unless entity @s[tag=swimming,tag=!dancing] run function medabots_server:animations/medabot/idle/tail
execute if entity @s[tag=swimming,tag=!dancing] run function medabots_server:animations/medabot/swimming/tail