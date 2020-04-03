execute if entity @s[scores={RightArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=right_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"defense"}}}]}] run tag @s add right_arm_selected
execute if entity @s[tag=!right_arm_selected,scores={LeftArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=left_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"defense"}}}]}] run tag @s add left_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,scores={HeadUses=1..}] if entity @e[tag=this_medabot,limit=1,tag=chest,nbt={ArmorItems:[{tag:{medabots_server:{move:"defense"}}}]}] run tag @s add head_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,scores={Charge=50..},tag=knight_medal] run tag @s add medaforce_selected

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,tag=!fly_legs,scores={LegsArmor=1..}] run tag @s add legs_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,tag=!fly_legs,scores={LegsArmor=1..}] run replaceitem entity @s weapon.mainhand minecraft:air
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,tag=!fly_legs,scores={LegsArmor=1..}] run scoreboard players set @s Dialog -40

execute unless entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,tag=!fly_legs] run function medabots_server:entities/medabot/cpu/preferences/clear