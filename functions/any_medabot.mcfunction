# No vanilla combat
effect give @s minecraft:weakness 1000000 127 true

# Set the damage taken
execute if entity @s[type=minecraft:player] store result score @s Damage run data get entity @s Health -1
execute if entity @s[type=!minecraft:player] store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players operation @s Damage += #100 Constants

# Waiting for start of robattle
effect give @s[scores={Battle=2}] minecraft:slowness 1 10 true
scoreboard players set @s[scores={Battle=2}] Damage 0
scoreboard players set @s[scores={Battle=2}] UsePart 0

# Prevent normal damage
effect give @s[tag=!undead] minecraft:instant_health 10 0 true
effect give @s[tag=undead] minecraft:instant_damage 10 0 true
data merge entity @s[type=!minecraft:player] {AbsorptionAmount:100.0f}

# Make Leg parts do something
execute if entity @s[tag=hostile] run function medabots_server:medaparts/float
execute if entity @s[tag=hostile] run function medabots_server:medaparts/fly
execute if entity @s[tag=hostile] run function medabots_server:medaparts/multi_legged
execute if entity @s[tag=hostile] run function medabots_server:medaparts/swim
execute if entity @s[tag=hostile] run function medabots_server:medaparts/tank
execute if entity @s[tag=hostile] run function medabots_server:medaparts/two_legged
execute if entity @s[tag=hostile] run function medabots_server:medaparts/wheel

# Get a boost by jumping on another player
execute if entity @s[tag=hostile] run function medabots_server:medaparts/footstool

# Grab ledges and pull yourself up
execute if entity @s[tag=hostile] run function medabots_server:medaparts/ledge_grab

# Charge up the medaforce
execute if entity @s[tag=hostile,scores={MedaforceTimer=3}] run function medabots_server:medaparts/charge_medaforce

# Combat
execute if entity @s[scores={AntiFly=1..}] run function medabots_server:medaparts/anti_fly
execute if entity @s[scores={AntiTank=1..}] run function medabots_server:medaparts/anti_tank
execute if entity @s[scores={AuxiliaryCharge=1..}] run function medabots_server:medaparts/auxiliary_charge
execute if entity @s[scores={AuxiliaryTime=1..}] run function medabots_server:medaparts/auxiliary_charge_effect
execute if entity @s[scores={Break=1..}] run function medabots_server:medaparts/break
execute if entity @s[scores={Bug=1..}] run function medabots_server:medaparts/bug
execute if entity @s[scores={BugTime=1..}] run function medabots_server:medaparts/bug_effect
execute if entity @s[scores={Confuse=1..}] run function medabots_server:medaparts/confuse
execute if entity @s[scores={ConfuseTime=1..}] run function medabots_server:medaparts/confuse_effect
execute if entity @s[scores={Defense=1..}] run function medabots_server:medaparts/defense
execute if entity @s[scores={DefenseTime=1..}] run function medabots_server:medaparts/defense_shield
execute if entity @s[scores={Destroy=1..}] run function medabots_server:medaparts/destroy
execute if entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling
execute if entity @s[scores={Freeze=1..}] run function medabots_server:medaparts/freeze
execute if entity @s[scores={FreezeTime=1..}] run function medabots_server:medaparts/freeze_effect
execute if entity @s[scores={Gatling=1..}] run function medabots_server:medaparts/gatling
execute if entity @s[scores={GuardGravity=1..}] run function medabots_server:medaparts/guard_gravity
execute if entity @s[scores={GuardGunpowder=1..}] run function medabots_server:medaparts/guard_gunpowder
execute if entity @s[scores={GuardOptical=1..}] run function medabots_server:medaparts/guard_optical
execute if entity @s[scores={Hammer=1..}] run function medabots_server:medaparts/hammer
execute if entity @s[scores={Heal=1..}] run function medabots_server:medaparts/heal
execute if entity @s[scores={Hide=1..}] run function medabots_server:medaparts/hide
execute if entity @s[scores={HideTime=1..}] run function medabots_server:medaparts/hide_effect
execute if entity @s[scores={Hold=1..}] run function medabots_server:medaparts/hold
execute if entity @s[scores={HoldTime=1..}] run function medabots_server:medaparts/hold_effect
execute if entity @s[scores={Ineffective=1..}] run function medabots_server:medaparts/ineffective
execute if entity @s[scores={IneffectiveTime=1..}] run function medabots_server:medaparts/ineffective_effect
execute if entity @s[scores={Infect=1..}] run function medabots_server:medaparts/infect
execute if entity @s[scores={InfectTime=1..}] run function medabots_server:medaparts/infect_effect
execute if entity @s[scores={Laser=1..}] run function medabots_server:medaparts/laser
execute if entity @s[scores={Medaforce=..-1}] run function medabots_server:medaparts/medaforce
execute if entity @s[scores={MedaforceControl=1..}] run function medabots_server:medaparts/medaforce_control
execute if entity @s[scores={MeleeTrap=1..}] run function medabots_server:medaparts/melee_trap
execute if entity @s[scores={Melt=1..}] run function medabots_server:medaparts/melt
execute if entity @s[scores={Missile=1..}] run function medabots_server:medaparts/missile
execute if entity @s[scores={Napalm=1..}] run function medabots_server:medaparts/napalm
execute if entity @s[scores={NoDefend=1..}] run function medabots_server:medaparts/no_defend
execute if entity @s[scores={Paralyze=1..}] run function medabots_server:medaparts/paralyze
execute if entity @s[scores={ParalyzeTime=1..}] run function medabots_server:medaparts/paralyze_effect
execute if entity @s[scores={PerfectGuard=1..}] run function medabots_server:medaparts/perfect_guard
execute if entity @s[scores={PerfectGuardTime=1..}] run function medabots_server:medaparts/perfect_guard_effect
execute if entity @s[scores={Press=1..}] run function medabots_server:medaparts/press
execute if entity @s[scores={Repair=1..}] run function medabots_server:medaparts/repair
execute if entity @s[scores={Rifle=1..}] run function medabots_server:medaparts/rifle
execute if entity @s[scores={Sacrifice=1..}] run function medabots_server:medaparts/sacrifice
execute if entity @s[scores={Scout=1..}] run function medabots_server:medaparts/scout
execute if entity @s[scores={ScoutTime=1..}] run function medabots_server:medaparts/scout_effect
execute if entity @s[scores={SelfDestruct=1..}] run function medabots_server:medaparts/self_destruct
execute if entity @s[scores={ShootingTrap=1..}] run function medabots_server:medaparts/shooting_trap
execute if entity @s[scores={StatusClear=1..}] run function medabots_server:medaparts/status_clear
execute if entity @s[scores={Sword=1..}] run function medabots_server:medaparts/sword
execute if entity @s[scores={Wave=1..}] run function medabots_server:medaparts/wave

# Forget the part
scoreboard players set @s[scores={Time=900..950}] Time 1

# Prevent invalid Time values
scoreboard players set @s[scores={Time=..0}] Time 1
execute unless entity @s[scores={Time=-100..}] run scoreboard players set @s Time 1

# Part breaks
execute if entity @s[scores={LegsArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={LeftArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={RightArmArmor=0}] run function medabots_server:medaparts/break_part
execute if entity @s[scores={HeadArmor=0}] run function medabots_server:medaparts/break_part

# Global timer for the medaforce
scoreboard players add @s MedaforceTimer 1
scoreboard players set @s[scores={MedaforceTimer=6..}] MedaforceTimer 0