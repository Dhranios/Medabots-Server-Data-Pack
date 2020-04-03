execute unless entity @s[scores={OverheatingMedal=15..}] run tag @s add medaforce_selected
tag @s[scores={OverheatingMedal=15..}] remove medaforce_selected

execute if entity @s[tag=medaforce_selected] run function medabots_server:entities/medabot/cpu/preferences/clear