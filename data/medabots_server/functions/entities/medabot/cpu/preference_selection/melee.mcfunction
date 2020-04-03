execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"perfect_guard"}}}]}] unless entity @s[scores={PerfectGuardTime=1..}] run tag @s add preference_perfect_guard
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"auxiliary_charge"}}}]}] unless entity @s[scores={AuxiliaryTime=1..}] run tag @s add preference_auxiliary_charge
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"scout"}}}]}] unless entity @s[scores={ScoutTime=1..}] run tag @s add preference_scout
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"no_defend"}}}]}] if entity @e[tag=target,scores={DefenseTime=1..},limit=1] unless entity @e[tag=target,scores={NoDefendTime=1..},limit=1] run tag @s add preference_no_defend
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"ineffective"}}}]}] unless entity @e[tag=target,scores={IneffectiveTime=1..},limit=1] run tag @s add preference_ineffective
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"medaforce_control"}}}]}] unless entity @e[tag=target,tag=medaforce_blocked,limit=1] run tag @s add preference_medaforce_control
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"paralyze"}}}]}] if entity @e[tag=target,distance=..3,limit=1] run tag @s add preference_parlyze
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"freeze"}}}]}] if entity @e[tag=target,distance=..3,limit=1] run tag @s add preference_freeze
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hold"}}}]}] unless entity @e[tag=target,scores={HoldTime=1..},limit=1] run tag @s add preference_hold
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"destroy"}}}]}] if entity @e[tag=target,distance=..2,limit=1] run tag @s add preference_destroy
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"infect"}}}]}] unless entity @e[tag=target,scores={InfectTime=1..},limit=1] run tag @s add preference_infect
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"wave"}}}]}] run tag @s add preference_wave
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"hammer"}}}]}] if entity @e[tag=target,distance=..3,limit=1] run tag @s add preference_hammer
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"sword"}}}]}] if entity @e[tag=target,distance=..3,limit=1] run tag @s add preference_sword
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"melt"}}}]}] if entity @e[tag=target,distance=..3,limit=1] run tag @s add preference_melt
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"falling"}}}]}] run tag @s add preference_falling
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"bug"}}}]}] unless entity @e[tag=target,scores={BugTime=1..},limit=1] run tag @s add preference_bug
execute if entity @e[tag=this_medabot,limit=1,nbt={ArmorItems:[{tag:{medabots_server:{move:"confuse"}}}]}] unless entity @e[tag=target,scores={ConfuseTime=1..},limit=1] run tag @s add preference_confuse

execute if entity @s[tag=preference_perfect_guard] run function medabots_server:entities/medabot/cpu/preference_selection/perfect_guard
execute if entity @s[tag=preference_auxiliary_charge] run function medabots_server:entities/medabot/cpu/preference_selection/auxiliary_charge
execute if entity @s[tag=preference_scout] run function medabots_server:entities/medabot/cpu/preference_selection/scout
execute if entity @s[tag=preference_no_defend] run function medabots_server:entities/medabot/cpu/preference_selection/melee/no_defend
execute if entity @s[tag=preference_ineffective] run function medabots_server:entities/medabot/cpu/preference_selection/melee/ineffective
execute if entity @s[tag=preference_medaforce_control] run function medabots_server:entities/medabot/cpu/preference_selection/melee/medaforce_control
execute if entity @s[tag=preference_paralyze] run function medabots_server:entities/medabot/cpu/preference_selection/melee/paralyze
execute if entity @s[tag=preference_freeze] run function medabots_server:entities/medabot/cpu/preference_selection/melee/freeze
execute if entity @s[tag=preference_hold] run function medabots_server:entities/medabot/cpu/preference_selection/melee/hold
execute if entity @s[tag=preference_destroy] run function medabots_server:entities/medabot/cpu/preference_selection/melee/destroy
execute if entity @s[tag=preference_infect] run function medabots_server:entities/medabot/cpu/preference_selection/melee/infect
execute if entity @s[tag=preference_wave] run function medabots_server:entities/medabot/cpu/preference_selection/melee/wave
execute if entity @s[tag=preference_hammer] run function medabots_server:entities/medabot/cpu/preference_selection/melee/hammer
execute if entity @s[tag=preference_sword] run function medabots_server:entities/medabot/cpu/preference_selection/melee/sword
execute if entity @s[tag=preference_melt] run function medabots_server:entities/medabot/cpu/preference_selection/melee/melt
execute if entity @s[tag=preference_falling] run function medabots_server:entities/medabot/cpu/preference_selection/melee/falling
execute if entity @s[tag=preference_bug] run function medabots_server:entities/medabot/cpu/preference_selection/melee/bug
execute if entity @s[tag=preference_confuse] run function medabots_server:entities/medabot/cpu/preference_selection/melee/confuse

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=ghost_medal] run tag @s add medaforce_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=question_medal] run tag @s add medaforce_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=devil_medal] run tag @s add medaforce_selected

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={RightArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=right_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add right_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={LeftArmArmor=1..}] if entity @e[tag=this_medabot,limit=1,tag=left_arm,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add left_arm_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={HeadUses=1..}] if entity @e[tag=this_medabot,limit=1,tag=chest,nbt={ArmorItems:[{tag:{medabots_server:{move:"transform"}}}]}] run tag @s add head_selected
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/no_defend
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/ineffective
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/medaforce_control
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/paralyze
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/freeze
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/hold
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/destroy
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/infect
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/wave
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/hammer
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/sword
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/melt
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/falling
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/bug
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preference_selection/melee/confuse

execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected,scores={Charge=50..},tag=alien_medal] run tag @s add medaforce_selected

execute unless entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run function medabots_server:entities/medabot/cpu/preferences/clear
execute if entity @s[tag=!right_arm_selected,tag=!left_arm_selected,tag=!head_selected,tag=!medaforce_selected] run tag @s add preference_ranged