# No vanilla combat
effect give @s minecraft:weakness 1000000 127 true

# Set the damage taken
execute if entity @s[type=minecraft:player] store result score @s Damage run data get entity @s Health -1
execute if entity @s[type=!minecraft:player] store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players operation @s Damage += #100 Constants

# Prevent normal damage
effect give @s[tag=!undead,scores={Damage=1..}] minecraft:instant_health 1 0 true
effect give @s[tag=undead,scores={Damage=1..}] minecraft:instant_damage 1 0 true
data merge entity @s[type=!minecraft:player] {AbsorptionAmount:100.0f}

# In combat
execute if entity @s[tag=hostile] run function medabots_server:any_hostile_medabot

# Combat
execute if entity @s[scores={AntiFly=1..}] run function medabots_server:medaparts/anti_fly
execute if entity @s[scores={AntiTank=1..}] run function medabots_server:medaparts/anti_tank
execute if entity @s[scores={AuxiliaryCharge=1..}] run function medabots_server:medaparts/auxiliary_charge
execute if entity @s[scores={Break=1..}] run function medabots_server:medaparts/break
execute if entity @s[scores={Bug=1..}] run function medabots_server:medaparts/bug
execute if entity @s[scores={Confuse=1..}] run function medabots_server:medaparts/confuse
execute if entity @s[scores={Defense=1..}] run function medabots_server:medaparts/defense
execute if entity @s[scores={Destroy=1..}] run function medabots_server:medaparts/destroy
execute if entity @s[scores={Falling=1..}] run function medabots_server:medaparts/falling
execute if entity @s[scores={Freeze=1..}] run function medabots_server:medaparts/freeze
execute if entity @s[scores={Gatling=1..}] run function medabots_server:medaparts/gatling
execute if entity @s[scores={GuardGravity=1..}] run function medabots_server:medaparts/guard_gravity
execute if entity @s[scores={GuardGunpowder=1..}] run function medabots_server:medaparts/guard_gunpowder
execute if entity @s[scores={GuardOptical=1..}] run function medabots_server:medaparts/guard_optical
execute if entity @s[scores={Hammer=1..}] run function medabots_server:medaparts/hammer
execute if entity @s[scores={Heal=1..}] run function medabots_server:medaparts/heal
execute if entity @s[scores={Hide=1..}] run function medabots_server:medaparts/hide
execute if entity @s[scores={Hold=1..}] run function medabots_server:medaparts/hold
execute if entity @s[scores={Ineffective=1..}] run function medabots_server:medaparts/ineffective
execute if entity @s[scores={Infect=1..}] run function medabots_server:medaparts/infect
execute if entity @s[scores={Laser=1..}] run function medabots_server:medaparts/laser
execute if entity @s[scores={Medaforce=..-1}] run function medabots_server:medaparts/medaforce
execute if entity @s[scores={MedaforceControl=1..}] run function medabots_server:medaparts/medaforce_control
execute if entity @s[scores={MeleeTrap=1..}] run function medabots_server:medaparts/melee_trap
execute if entity @s[scores={Melt=1..}] run function medabots_server:medaparts/melt
execute if entity @s[scores={Missile=1..}] run function medabots_server:medaparts/missile
execute if entity @s[scores={Napalm=1..}] run function medabots_server:medaparts/napalm
execute if entity @s[scores={NoDefend=1..}] run function medabots_server:medaparts/no_defend
execute if entity @s[scores={Paralyze=1..}] run function medabots_server:medaparts/paralyze
execute if entity @s[scores={PerfectGuard=1..}] run function medabots_server:medaparts/perfect_guard
execute if entity @s[scores={Press=1..}] run function medabots_server:medaparts/press
execute if entity @s[scores={Repair=1..}] run function medabots_server:medaparts/repair
execute if entity @s[scores={Rifle=1..}] run function medabots_server:medaparts/rifle
execute if entity @s[scores={Sacrifice=1..}] run function medabots_server:medaparts/sacrifice
execute if entity @s[scores={Scout=1..}] run function medabots_server:medaparts/scout
execute if entity @s[scores={SelfDestruct=1..}] run function medabots_server:medaparts/self_destruct
execute if entity @s[scores={ShootingTrap=1..}] run function medabots_server:medaparts/shooting_trap
execute if entity @s[scores={StatusClear=1..}] run function medabots_server:medaparts/status_clear
execute if entity @s[scores={Sword=1..}] run function medabots_server:medaparts/sword
execute if entity @s[scores={Wave=1..}] run function medabots_server:medaparts/wave