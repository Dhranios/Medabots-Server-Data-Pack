execute if entity @s[scores={LegCount=2}] run function medabots_server:animations/medabot/swimming/right_arm/two_legged
execute unless entity @s[scores={LegCount=2}] if entity @s[scores={LegCount=1..}] run function medabots_server:animations/medabot/swimming/right_arm/multi_legged
execute unless entity @s[scores={LegCount=1..}] if entity @s[tag=!swim_legs] run function medabots_server:animations/medabot/swimming/right_arm/not_legged
execute unless entity @s[scores={LegCount=1..}] if entity @s[tag=swim_legs] run function medabots_server:animations/medabot/swimming/right_arm/swim_legs