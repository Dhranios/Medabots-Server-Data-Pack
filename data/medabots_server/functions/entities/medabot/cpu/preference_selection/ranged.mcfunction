execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hide"}}}]}] unless entity @s[scores={HideTime=1..}] run tag @s add preference_hide
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"scout"}}}]}] unless entity @s[scores={ScoutTime=1..}] run tag @s add preference_scout
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"anti_fly"}}}]}] if entity @e[tag=target,tag=fly_legs,limit=1] run tag @s add preference_anti_fly
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"rifle"}}}]}] if entity @e[tag=target,distance=..8,limit=1] run tag @s add preference_rifle
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"laser"}}}]}] if entity @e[tag=target,distance=15..,limit=1] run tag @s add preference_laser
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"missile"}}}]}] if entity @e[tag=target,distance=12..,limit=1] run tag @s add preference_missile
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"napalm"}}}]}] if entity @e[tag=target,distance=10..,limit=1] run tag @s add preference_napalm
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"break"}}}]}] run tag @s add preference_break
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"gatling"}}}]}] run tag @s add preference_gatling
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"press"}}}]}] run tag @s add preference_press
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"sacrifice"}}}]}] run tag @s add preference_sacrifice

execute if entity @s[tag=preference_hide] run function medabots_server:entities/medabot/cpu/preference_selection/hide
execute if entity @s[tag=preference_scout] run function medabots_server:entities/medabot/cpu/preference_selection/scout
execute if entity @s[tag=preference_anti_fly] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/anti_fly
execute if entity @s[tag=preference_rifle] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/rifle
execute if entity @s[tag=preference_laser] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/laser
execute if entity @s[tag=preference_missile] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/missile
execute if entity @s[tag=preference_napalm] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/napalm
execute if entity @s[tag=preference_break] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/break
execute if entity @s[tag=preference_gatling] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/gatling
execute if entity @s[tag=preference_press] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/press
execute if entity @s[tag=preference_sacrifice] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/sacrifice

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=kuwagata_medal] run tag @s add medaforce_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=kabuto_medal] run tag @s add medaforce_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=cameleon_medal] run tag @s add medaforce_selected

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={RightArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=right_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add right_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={LeftArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=left_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add left_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={HeadUses=1..}] if entity @e[tag=this_medabot,limit=1,tag=chest,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add head_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/anti_fly
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/rifle
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/laser
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/missile
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/napalm
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/break
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/gatling
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/press
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/ranged/sacrifice

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=alien_medal] run tag @s add medaforce_selected

execute unless entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preferences/clear
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run tag @s add preference_charge_medaforce