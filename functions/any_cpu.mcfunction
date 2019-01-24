# Run generic medabot functions
function medabots_server:any_medabot

# Select random part
scoreboard players set @s[scores={Dialog=60}] Dialog 0
execute unless entity @s[scores={Dialog=0..}] run scoreboard players add @s Dialog 0
execute if entity @s[scores={Time=1,Dialog=0}] run tag @s remove legs_selected
execute if entity @s[scores={Time=1,Dialog=0}] run tag @s remove left_arm_selected
execute if entity @s[scores={Time=1,Dialog=0}] run tag @s remove right_arm_selected
execute if entity @s[scores={Time=1,Dialog=0}] run tag @s remove head_selected
execute if entity @s[scores={Time=1,Dialog=0}] run tag @s remove medaforce_selected
execute unless entity @s[scores={Medaforce=1..}] if entity @a[distance=..16] run scoreboard players add @s[scores={Time=1,Dialog=0}] Dialog 1
execute unless entity @s[scores={Medaforce=1..}] run scoreboard players add @s[scores={Dialog=1..59}] Dialog 1
execute if entity @s[scores={Dialog=60,LegsArmor=1..},tag=fly_legs] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Select\"}",Tags:["random_select","legs"],Duration:1}
execute if entity @s[scores={Dialog=60,LeftArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Select\"}",Tags:["random_select","left"],Duration:1}
execute if entity @s[scores={Dialog=60,RightArmArmor=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Select\"}",Tags:["random_select","right"],Duration:1}
execute if entity @s[scores={Dialog=60,HeadUses=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Select\"}",Tags:["random_select","head"],Duration:1}
execute if entity @s[scores={Dialog=60}] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"Random Select\"}",Tags:["random_select","medaforce"],Duration:1}
execute if entity @s[scores={Dialog=60}] run tag @e[sort=random,limit=1,type=minecraft:area_effect_cloud,tag=random_select] add success
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run tag @s add legs_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=legs] run scoreboard players set @s Time 200
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=left] run tag @s add left_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=right] run tag @s add right_arm_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=head] run tag @s add head_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=medaforce] run tag @s add medaforce_selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=medaforce] unless entity @s[scores={Medaforce=2..}] run scoreboard players set @s Medaforce 1
execute if entity @e[type=minecraft:area_effect_cloud,tag=random_select,tag=success,tag=medaforce] run scoreboard players set @s[scores={Medaforce=2..}] Medaforce -1
kill @e[type=minecraft:area_effect_cloud,tag=random_select]

# Damage the selected part, change up the medaforce if it's the medal
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] if score @s LegsArmor < @s Damage run scoreboard players set @s LegsArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=1..},tag=legs_selected] if score @s LegsArmor >= @s Damage run scoreboard players operation @s LegsArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LegsArmor=..-1},tag=legs_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] if score @s LeftArmArmor < @s Damage run scoreboard players set @s LeftArmArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=1..},tag=left_arm_selected] if score @s LeftArmArmor >= @s Damage run scoreboard players operation @s LeftArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,LeftArmArmor=..-1},tag=left_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] if score @s RightArmArmor < @s Damage run scoreboard players set @s RightArmArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=1..},tag=right_arm_selected] if score @s RightArmArmor >= @s Damage run scoreboard players operation @s RightArmArmor -= @s Damage
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..,RightArmArmor=..-1},tag=right_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] if score @s HeadArmor < @s Damage run scoreboard players set @s HeadArmor 0
execute if entity @s[scores={Damage=1..},tag=!legs_selected,tag=!left_arm_selected,tag=!right_arm_selected] if score @s HeadArmor >= @s Damage run scoreboard players operation @s HeadArmor -= @s Damage
tag @s[scores={Damage=1..},tag=medaforce_selected] add medal_damage
scoreboard players add @s[tag=medal_damage] Charge 1
clear @s[tag=medal_damage] minecraft:nether_star 1
tag @s[tag=medal_damage] remove medal_damage

# Activate appropriate right arm
scoreboard players set @s[tag=anti_fly_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] AntiFly 1
scoreboard players set @s[tag=anti_tank_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] AntiTank 1
scoreboard players set @s[tag=auxilary_charge_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] AuxiliaryCharge 1
scoreboard players set @s[tag=break_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Break 1
scoreboard players set @s[tag=bug_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Bug 1
scoreboard players set @s[tag=confuse_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Confuse 1
scoreboard players set @s[tag=defense_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Defense 1
scoreboard players set @s[tag=destroy_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Destroy 1
scoreboard players set @s[tag=falling_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Falling 1
scoreboard players set @s[tag=freeze_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Freeze 1
scoreboard players set @s[tag=gatling_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Gatling 1
scoreboard players set @s[tag=guard_gravity_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] GuardGravity 1
scoreboard players set @s[tag=guard_gunpowder_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] GuardGunpowder 1
scoreboard players set @s[tag=guard_optical_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] GuardOptical 1
scoreboard players set @s[tag=hammer_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Hammer 1
scoreboard players set @s[tag=heal_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Heal 1
scoreboard players set @s[tag=hide_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Hide 1
scoreboard players set @s[tag=hold_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Hold 1
scoreboard players set @s[tag=ineffective_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Ineffective 1
scoreboard players set @s[tag=infect_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Infect 1
scoreboard players set @s[tag=laser_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Laser 1
scoreboard players set @s[tag=medaforce_control_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] MedaforceControl 1
scoreboard players set @s[tag=melee_trap_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] MeleeTrap 1
scoreboard players set @s[tag=melt_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Melt 1
scoreboard players set @s[tag=missile_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Missile 1
scoreboard players set @s[tag=napalm_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Napalm 1
scoreboard players set @s[tag=no_defend_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] NoDefend 1
scoreboard players set @s[tag=paralyze_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Paralyze 1
scoreboard players set @s[tag=perfect_guard_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] PerfectGuard 1
scoreboard players set @s[tag=press_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Press 1
scoreboard players set @s[tag=repair_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Repair 1
scoreboard players set @s[tag=rifle_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Rifle 1
scoreboard players set @s[tag=sacrifice_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Sacrifice 1
scoreboard players set @s[tag=scout_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Scout 1
scoreboard players set @s[tag=shooting_trap_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] ShootingTrap 1
scoreboard players set @s[tag=status_clear_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] StatusClear 1
scoreboard players set @s[tag=sword_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Sword 1
scoreboard players set @s[tag=wave_right_arm,tag=right_arm_selected,scores={Time=1,Dialog=60}] Wave 1

# Activate appropriate head
scoreboard players set @s[tag=anti_fly_head,tag=head_selected,scores={Time=1,Dialog=60}] AntiFly 2
scoreboard players set @s[tag=anti_tank_head,tag=head_selected,scores={Time=1,Dialog=60}] AntiTank 2
scoreboard players set @s[tag=auxilary_charge_head,tag=head_selected,scores={Time=1,Dialog=60}] AuxiliaryCharge 2
scoreboard players set @s[tag=break_head,tag=head_selected,scores={Time=1,Dialog=60}] Break 2
scoreboard players set @s[tag=bug_head,tag=head_selected,scores={Time=1,Dialog=60}] Bug 2
scoreboard players set @s[tag=confuse_head,tag=head_selected,scores={Time=1,Dialog=60}] Confuse 2
scoreboard players set @s[tag=defense_head,tag=head_selected,scores={Time=1,Dialog=60}] Defense 2
scoreboard players set @s[tag=destroy_head,tag=head_selected,scores={Time=1,Dialog=60}] Destroy 2
scoreboard players set @s[tag=falling_head,tag=head_selected,scores={Time=1,Dialog=60}] Falling 2
scoreboard players set @s[tag=feeze_head,tag=head_selected,scores={Time=1,Dialog=60}] Freeze 2
scoreboard players set @s[tag=gatling_head,tag=head_selected,scores={Time=1,Dialog=60}] Gatling 2
scoreboard players set @s[tag=guard_gravity_head,tag=head_selected,scores={Time=1,Dialog=60}] GuardGravity 2
scoreboard players set @s[tag=guard_gunpowder_head,tag=head_selected,scores={Time=1,Dialog=60}] GuardGunpowder 2
scoreboard players set @s[tag=guard_optical_head,tag=head_selected,scores={Time=1,Dialog=60}] GuardOptical 2
scoreboard players set @s[tag=hammer_head,tag=head_selected,scores={Time=1,Dialog=60}] Hammer 2
scoreboard players set @s[tag=heal_head,tag=head_selected,scores={Time=1,Dialog=60}] Heal 2
scoreboard players set @s[tag=hide_head,tag=head_selected,scores={Time=1,Dialog=60}] Hide 2
scoreboard players set @s[tag=hold_head,tag=head_selected,scores={Time=1,Dialog=60}] Hold 2
scoreboard players set @s[tag=ineffective_head,tag=head_selected,scores={Time=1,Dialog=60}] Ineffective 2
scoreboard players set @s[tag=infect_head,tag=head_selected,scores={Time=1,Dialog=60}] Infect 2
scoreboard players set @s[tag=laser_head,tag=head_selected,scores={Time=1,Dialog=60}] Laser 2
scoreboard players set @s[tag=medaforce_control_head,tag=head_selected,scores={Time=1,Dialog=60}] MedaforceControl 2
scoreboard players set @s[tag=melee_trap_head,tag=head_selected,scores={Time=1,Dialog=60}] MeleeTrap 2
scoreboard players set @s[tag=melt_head,tag=head_selected,scores={Time=1,Dialog=60}] Melt 2
scoreboard players set @s[tag=missile_head,tag=head_selected,scores={Time=1,Dialog=60}] Missile 2
scoreboard players set @s[tag=napalm_head,tag=head_selected,scores={Time=1,Dialog=60}] Napalm 2
scoreboard players set @s[tag=no_defend_head,tag=head_selected,scores={Time=1,Dialog=60}] NoDefend 2
scoreboard players set @s[tag=paralize_head,tag=head_selected,scores={Time=1,Dialog=60}] Paralyze 2
scoreboard players set @s[tag=perfect_guard_head,tag=head_selected,scores={Time=1,Dialog=60}] PerfectGuard 2
scoreboard players set @s[tag=press_head,tag=head_selected,scores={Time=1,Dialog=60}] Press 2
scoreboard players set @s[tag=repair_head,tag=head_selected,scores={Time=1,Dialog=60}] Repair 2
scoreboard players set @s[tag=rifle_head,tag=head_selected,scores={Time=1,Dialog=60}] Rifle 2
scoreboard players set @s[tag=scout_head,tag=head_selected,scores={Time=1,Dialog=60}] Scout 2
scoreboard players set @s[tag=shooting_trap_head,tag=head_selected,scores={Time=1,Dialog=60}] ShootingTrap 2
scoreboard players set @s[tag=status_clear_head,tag=head_selected,scores={Time=1,Dialog=60}] StatusClear 2
scoreboard players set @s[tag=sword_head,tag=head_selected,scores={Time=1,Dialog=60}] Sword 2
scoreboard players set @s[tag=wave_head,tag=head_selected,scores={Time=1,Dialog=60}] Wave 2

# Activate appropriate left arm
scoreboard players set @s[tag=anti_fly_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] AntiFly 3
scoreboard players set @s[tag=anti_tank_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] AntiTank 3
scoreboard players set @s[tag=auxilary_charge_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] AuxiliaryCharge 3
scoreboard players set @s[tag=break_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Break 3
scoreboard players set @s[tag=bug_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Bug 3
scoreboard players set @s[tag=confuse_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Confuse 3
scoreboard players set @s[tag=defense_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Defense 3
scoreboard players set @s[tag=destroy_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Destroy 3
scoreboard players set @s[tag=falling_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Falling 3
scoreboard players set @s[tag=freeze_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Freeze 3
scoreboard players set @s[tag=gatling_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Gatling 3
scoreboard players set @s[tag=guard_gravity_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] GuardGravity 3
scoreboard players set @s[tag=guard_gunpowder_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] GuardGunpowder 3
scoreboard players set @s[tag=guard_optical_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] GuardOptical 3
scoreboard players set @s[tag=hammer_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Hammer 3
scoreboard players set @s[tag=heal_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Heal 3
scoreboard players set @s[tag=hide_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Hide 3
scoreboard players set @s[tag=hold_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Hold 3
scoreboard players set @s[tag=ineffective_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Ineffective 3
scoreboard players set @s[tag=infect_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Infect 3
scoreboard players set @s[tag=laser_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Laser 3
scoreboard players set @s[tag=medaforce_control_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] MedaforceControl 3
scoreboard players set @s[tag=melee_trap_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] MeleeTrap 3
scoreboard players set @s[tag=melt_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Melt 3
scoreboard players set @s[tag=missile_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Missile 3
scoreboard players set @s[tag=napalm_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Napalm 3
scoreboard players set @s[tag=no_defend_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] NoDefend 3
scoreboard players set @s[tag=paralyze_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Paralyze 3
scoreboard players set @s[tag=perfect_guard_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] PerfectGuard 3
scoreboard players set @s[tag=press_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Press 3
scoreboard players set @s[tag=repair_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Repair 3
scoreboard players set @s[tag=rifle_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Rifle 3
scoreboard players set @s[tag=sacrifice_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Sacrifice 3
scoreboard players set @s[tag=scout_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Scout 3
scoreboard players set @s[tag=shooting_trap_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] ShootingTrap 3
scoreboard players set @s[tag=status_clear_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] StatusClear 3
scoreboard players set @s[tag=sword_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Sword 3
scoreboard players set @s[tag=wave_left_arm,tag=left_arm_selected,scores={Time=1,Dialog=60}] Wave 3

# Play walking sound and animation
tag @s remove walking
execute unless entity @e[distance=..0.001,type=minecraft:area_effect_cloud,tag=cpu_walk_detection] run tag @s add walking
kill @e[distance=..1,type=minecraft:area_effect_cloud,tag=cpu_walk_detection]
execute if entity @s[scores={Sound=0},tag=walking] run playsound medabots_server:entity.medabot.walk hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=walking,tag=!dead] Sound 8
execute if entity @s[tag=!dead] run summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"CPU Walk Detection\"}",Tags:["cpu_walk_detection"],Duration:2}

# CPU only things
execute if entity @s[tag=dead] as @e[scores={MedabotNr=1..}] if score @s MedabotNr > @e[distance=..0.1,tag=hostile,limit=1] MedabotNr run scoreboard players remove @s MedabotNr 1
execute if entity @s[tag=dead] run playsound medabots_server:entity.medabot.death player @a ~ ~ ~ 0.7
teleport @s[tag=dead] ~ -1000 ~
execute unless entity @s[scores={Wave=1..}] if entity @s[nbt=!{ArmorItems:[{id:"minecraft:structure_void"}]},nbt=!{ArmorItems:[{id:"minecraft:stone_button"}]}] run replaceitem entity @s armor.head minecraft:structure_void