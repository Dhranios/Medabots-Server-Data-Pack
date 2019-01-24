execute at @a[scores={DialogNr=1..}] if score @s DialogNr = @a[distance=..0.1,limit=1,scores={DialogNr=1..}] DialogNr run tag @s add player_is_here
execute if entity @s[scores={MedabotNr=1..},tag=!medabot_model,tag=!player_is_here] as @s[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
teleport @s[tag=!player_is_here] ~ -1000 ~
kill @s[tag=!player_is_here]
tag @s[tag=player_is_here] remove player_is_here

tag @s[tag=refresh] add refreshed
tag @s[tag=!refresh] add refresh
tag @s[tag=refreshed] remove refresh
tag @s[tag=refreshed] remove refreshed
execute at @s[tag=!refresh] run teleport @s ~ ~ ~ ~-0.1 ~
execute at @s[tag=refresh] run teleport @s ~ ~ ~ ~0.1 ~
data merge entity @s[tag=!refresh] {Air:0}
data merge entity @s[tag=refresh] {Air:1}