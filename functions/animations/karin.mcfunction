execute if entity @s[tag=bowing] run function medabots_server:animations/karin/bowing
execute if entity @s[tag=thinking] run function medabots_server:animations/karin/thinking
execute if entity @s[tag=wait_up] run function medabots_server:animations/karin/wait_up
execute if entity @s[tag=dancing] run function medabots_server:animations/karin/dancing
data merge entity @s[tag=!dancing,scores={AnimationProg=1..}] {Pose:{RightArm:[-15.0f,0.0f,0.001f],LeftArm:[-15.0f,0.0f,0.001f],RightLeg:[0.0f,0.0f,0.001f],LeftLeg:[0.0f,0.0f,0.001f]}}
scoreboard players set @s[tag=!dancing] AnimationProg 0
