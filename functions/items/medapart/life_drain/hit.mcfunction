execute unless entity @s[scores={Medabot=0..}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 1 true
execute unless entity @s[scores={Medabot=0..}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 1 true
execute unless entity @s[scores={Medabot=0..}] run scoreboard players add #temp HeadArmor 6

execute if entity @s[scores={Medabot=0..}] if score @s HeadArmor matches ..9 run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Medabot=0..}] if score @s HeadArmor matches 10.. run scoreboard players remove @s HeadArmor 10
execute if entity @s[scores={Medabot=0..}] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 0.5
execute if entity @s[scores={Medabot=0..}] run scoreboard players add #temp HeadArmor 10