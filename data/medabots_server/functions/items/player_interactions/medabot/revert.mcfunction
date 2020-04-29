scoreboard players operation #temp MedabotNr = @s MedabotNr
execute as @e[tag=medabot_model] if score @s MedabotNr = #temp MedabotNr run kill @s
execute as @e[scores={MedabotNr=1..}] if score @s MedabotNr > #temp MedabotNr run scoreboard players remove @s MedabotNr 1
scoreboard players reset @s MedabotNr
scoreboard players reset #temp MedabotNr
effect clear @s minecraft:invisibility
tag @s remove has_medabot_form
tag @s remove medabot