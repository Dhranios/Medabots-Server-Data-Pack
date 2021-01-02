scoreboard players set @s Stage 48
scoreboard players set @s Gamemode 0

execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[scores={KillStreak=1}] run function medabots_server:stage/try/icefield_battle/story_battle
execute if entity @s[scores={KillStreak=2}] run function medabots_server:stage/try/icefield_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}}] unless entity @s[scores={KillStreak=1..2}] run function medabots_server:stage/sign/icefield_battle/random

execute if entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/icefield_battle/random_success
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Stage
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Gamemode