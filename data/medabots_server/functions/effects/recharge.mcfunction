# Recharge if not in battle
effect give @s[tag=!hostile,scores={Hunger=..19}] minecraft:saturation 1 0 true
effect give @s[scores={Hunger=..19,Gamamode=0,State=3}] minecraft:saturation 1 0 true

# Stand still to recharge your power supply
effect give @s[scores={AFKTime=200..,Hunger=..19}] minecraft:saturation 1 0 true