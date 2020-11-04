execute unless entity @s[scores={OverheatingMedal=15..}] run tag @s add medaforce_activated
tag @s[scores={OverheatingMedal=15..}] remove medaforce_activated

execute if entity @s[tag=medaforce_activated] run function medabots_server:entities/medabot/cpu/preferences/clear