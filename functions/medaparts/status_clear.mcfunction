# Increase time by 1
scoreboard players add @s Time 1

# Jump the time value up for right and left arm
scoreboard players set @s[scores={Time=3,StatusClear=1}] Time 19
scoreboard players set @s[scores={Time=3,StatusClear=3}] Time 27

# Show particles
execute if entity @s[scores={Time=32}] run particle minecraft:totem_of_undying ~ ~1 ~ 1 0 1 1 10

# Remove all status effects
scoreboard players set @s[scores={Time=32,AuxiliaryTime=1..}] AuxiliaryTime 1
scoreboard players set @s[scores={Time=32,BugTime=1..}] BugTime 1
scoreboard players set @s[scores={Time=32,ConfuseTime=1..}] ConfuseTime 1
scoreboard players set @s[scores={Time=32,DefenseTime=1..}] DefenseTime 1
scoreboard players set @s[scores={Time=32,FreezeTime=1..}] FreezeTime 1
scoreboard players set @s[scores={Time=32,HideTime=1..}] HideTime 1
scoreboard players set @s[scores={Time=32,HoldTime=1..}] HoldTime 1
scoreboard players set @s[scores={Time=32,IneffectiveTime=1..}] IneffectiveTime 1
scoreboard players set @s[scores={Time=32,InfectTime=1..}] InfectTime 1
scoreboard players set @s[scores={Time=32,NoDefendTime=1..}] NoDefendTime 1
scoreboard players set @s[scores={Time=32,OverHeatingFly=1..}] OverHeatingFly 1
scoreboard players set @s[scores={Time=32,OverheatingMedal=1..}] OverheatingMedal 1
scoreboard players set @s[scores={Time=32,ParalyzeTime=1..}] ParalyzeTime 1
scoreboard players set @s[scores={Time=32,PerfectGuardTime=1..}] PerfectGuardTime 1
scoreboard players set @s[scores={Time=32,ScoutTime=1..}] ScoutTime 1
tag @s[scores={Time=32},tag=static_fly] remove static_fly
tag @s[scores={Time=32},tag=blocked_medaforce] remove blocked_medaforce

# Remove from head uses if this was the head part
scoreboard players remove @s[scores={StatusClear=2,Time=32}] HeadUses 1

# Finish the move
scoreboard players reset @s[scores={Time=34..}] StatusClear
scoreboard players set @s[scores={Time=34..}] Time 1