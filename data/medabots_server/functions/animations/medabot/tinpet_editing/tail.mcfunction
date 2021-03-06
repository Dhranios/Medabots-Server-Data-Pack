# Move with
execute at @e[tag=this_medabot,tag=source,limit=1] rotated ~ 0 run teleport @s ^ ^ ^ ~ ~
execute unless entity @s[scores={LeftAmount=0}] run function medabots_server:animations/medabot/offset/left
execute unless entity @s[scores={UpAmount=0}] run function medabots_server:animations/medabot/offset/up
execute unless entity @s[scores={ForwardAmount=0}] run function medabots_server:animations/medabot/offset/forward

execute unless entity @s[nbt={Pose:{Head:[0.001f]}}] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result score #temp Time run data get entity @s Pose.Head[1] 2
execute if entity @s[tag=!move_right] store result entity @s Pose.Head[1] float 0.5 run scoreboard players operation #temp Time += #5 Constants
execute if entity @s[tag=move_right] store result entity @s Pose.Head[1] float 0.5 run scoreboard players operation #temp Time -= #5 Constants
execute if score #temp Time matches 60.. run tag @s add move_right
execute if score #temp Time matches ..-60 run tag @s remove move_right
execute store result score #temp Time run data get entity @s Pose.Head[0] 2
execute if entity @s[tag=!move_down] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time += #2 Constants
execute if entity @s[tag=move_down] store result entity @s Pose.Head[0] float 0.5 run scoreboard players operation #temp Time -= #2 Constants
execute if score #temp Time matches 21.. run tag @s add move_down
execute if score #temp Time matches ..-21 run tag @s remove move_down
scoreboard players reset #temp Time