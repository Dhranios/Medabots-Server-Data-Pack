# Specific animations
execute if entity @s[tag=spyke] run function medabots_server:animations/spyke
execute if entity @s[tag=sloan] run function medabots_server:animations/sloan
execute if entity @s[tag=samantha] run function medabots_server:animations/samantha
execute if entity @s[tag=karin] run function medabots_server:animations/karin
execute if entity @s[tag=erika] run function medabots_server:animations/erika
execute if entity @s[tag=koji] run function medabots_server:animations/koji
execute if entity @s[tag=director_tune] run function medabots_server:animations/director_tune
execute if entity @s[tag=doctor_haru] run function medabots_server:animations/doctor_haru
execute if entity @s[tag=select_corps] run function medabots_server:animations/select_corps
execute if entity @s[tag=squidguts] run function medabots_server:animations/squidguts
execute if entity @s[tag=gillgirl] run function medabots_server:animations/gillgirl
execute if entity @s[tag=shrimplips] run function medabots_server:animations/shrimplips
execute if entity @s[tag=seaslug] run function medabots_server:animations/seaslug

# Generic animations
execute unless entity @s[tag=!walking,tag=!running,tag=!rubberobo] run function medabots_server:animations/generic/walking
execute if entity @s[tag=!walking,tag=!running,tag=was_walking,tag=!rubberobo] run data merge entity @s {Pose:{RightArm:[15.0f,15.0f,0.0f],eftArm:[15.0f,15.0f,0.0f],RightLeg:[15.0f,15.0f,0.0f],LeftLeg:[15.0f,15.0f,0.0f]}}
execute if entity @s[tag=!walking,tag=!running,tag=!rubberobo] run tag @s remove was_walking

execute unless entity @s[tag=hand_over] run function medabots_server:animations/generic/hand_over
execute unless entity @s[tag=transport_medabot] run function medabots_server:animations/generic/transport_medabot