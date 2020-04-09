# Move with
execute at @e[tag=this_medabot,tag=hips,limit=1] rotated ~ 0 run teleport @s ^ ^ ^
execute store result entity @s Rotation[0] float 0.01 run data get entity @e[tag=this_medabot,tag=hips,limit=1] Rotation[0] 100
execute unless entity @s[scores={LeftAmount=0}] run function medabots_server:animations/medabot/offset/left
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up
execute unless entity @s[scores={ForwardAmount=0}] run function medabots_server:animations/medabot/offset/forward