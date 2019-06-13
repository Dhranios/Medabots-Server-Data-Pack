execute unless entity @s[scores={Medabot=0..}] run effect give @s[type=!#medabots_server:undead] minecraft:instant_damage 1 2 true
execute unless entity @s[scores={Medabot=0..}] run effect give @s[type=#medabots_server:undead] minecraft:instant_health 1 2 true
execute unless entity @s[scores={Medabot=0..}] run scoreboard players add #temp HeadArmor 9

execute if entity @s[scores={Medabot=0..}] if score @s HeadArmor matches ..14 run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Medabot=0..}] if score @s HeadArmor matches 15.. run scoreboard players remove @s HeadArmor 15
execute if entity @s[scores={Medabot=0..}] run playsound medabots_server:entity.medabot.damage player @a ~ ~ ~ 1
execute if entity @s[scores={Medabot=0..}] run scoreboard players add #temp HeadArmor 15