execute unless data entity @s Pose.Head[0] run data merge entity @s {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute if entity @s[scores={AnimationProg=1..}] unless data storage medabots_server:data guard{tags:["walking"]} run scoreboard players set @s[tag=walking] AnimationProg 0
tag @s[scores={AnimationProg=0}] remove walking
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data guard{tags:["walking"]} run scoreboard players set @s[tag=!walking] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data guard{tags:["attack"]} run scoreboard players set @s[tag=!attack] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data guard{tags:["hurt"]} run scoreboard players set @s[tag=!hurt] AnimationProg 0
execute if entity @s[scores={AnimationProg=1..}] if data storage medabots_server:data guard{tags:["attack"]} run scoreboard players set @s[tag=!attack] AnimationProg 0
data modify entity @s Tags append from storage medabots_server:data guard.tags[]
execute if entity @s[tag=body,tag=!dying] run function medabots_server:animations/guard/body
execute if entity @s[tag=hammer,tag=!dying] run function medabots_server:animations/guard/hammer
execute if entity @s[tag=front_legs,tag=!dying] run function medabots_server:animations/guard/front_legs
execute if entity @s[tag=back_legs,tag=!dying] run function medabots_server:animations/guard/back_legs
execute if entity @s[tag=body,tag=dying] run function medabots_server:animations/guard/death/body
execute if entity @s[tag=hammer,tag=dying] run function medabots_server:animations/guard/death/hammer
execute if entity @s[tag=front_legs,tag=dying] run function medabots_server:animations/guard/death/front_legs
execute if entity @s[tag=back_legs,tag=dying] run function medabots_server:animations/guard/death/back_legs
tag @s remove guard
tag @s add found_owner
tag @s add found_owner_2