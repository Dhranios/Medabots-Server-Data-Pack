playsound medabots_server:music.battle.rubberobo_leader_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_1/rubberobo_leader=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_1/rubberobo_leader=true}] Music 90

scoreboard players operation @s[scores={Music=0}] PrevJukebox = @s Jukebox