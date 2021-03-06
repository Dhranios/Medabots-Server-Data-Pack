scoreboard players set @s Stage 47
scoreboard players set @s Gamemode 0

execute if entity @s[advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_koji=true,vs_koji_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={desperate_for_love=true,desperate_for_love_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[scores={KillStreak=1..3}] run function medabots_server:stage/try/woods_battle/story_battle

execute unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/woods_battle/random

execute if entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/woods_battle/random_success
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Stage
execute unless entity @s[scores={Gamemode=0,State=1..3}] run scoreboard players reset @s Gamemode