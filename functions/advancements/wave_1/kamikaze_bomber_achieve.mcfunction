tag @s[scores={Killer=1..,Death=1..,LegsArmor=..0},nbt={Inventory:[{Slot:0b,tag:{medabots_server:{move:"fly"}}}]}] add success
advancement grant @s[tag=success] only medabots_server:wave_1/kamikaze_bomber
advancement revoke @s[tag=!success] only medabots_server:wave_1/kamikaze_bomber_achieve tick
tag @s[tag=success] remove success