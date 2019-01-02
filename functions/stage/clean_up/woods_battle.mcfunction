setblock -1948 51 -641 minecraft:stone_pressure_plate
setblock -1950 51 -641 minecraft:stone_pressure_plate
setblock -1948 53 -642 minecraft:redstone_block
setblock -1950 53 -642 minecraft:redstone_block
fill -1972 45 -640 -1925 45 -593 minecraft:air replace minecraft:stone_slab
fill -1972 45 -640 -1925 45 -593 minecraft:air replace minecraft:comparator
tag @e[scores={Stage=98},type=!minecraft:player] add dead
stopsound @s music
scoreboard players set @s Battle 0
scoreboard players reset @a[scores={Stage=98}] Stage
scoreboard players set @s[tag=!story_battle] MusicType 1
scoreboard players set @s[tag=!story_battle] Music 299
playsound medabots_server:music.stage.stage_end music @s[tag=!story_battle] -1949 51 -617 3
scoreboard players set @s[tag=story_battle] MusicType 0
scoreboard players set @s[tag=story_battle] Dialog 0
tag @s[tag=story_battle,advancements={medabots_server:wave_1/story_progression={opening=true,opening_battle=false}}] add dialog_infinity_opening_battle
tag @s remove story_battle
teleport @s -1949 51 -617 -180 0