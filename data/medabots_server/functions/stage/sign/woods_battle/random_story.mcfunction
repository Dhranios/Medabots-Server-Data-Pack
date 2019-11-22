data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/woods_battle/enter"}}'}
setblock -1950 53 -642 minecraft:red_wool

execute if entity @s[advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_koji=true,vs_koji_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={desperate_for_love=true,desperate_for_love_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[scores={KillStreak=1}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[scores={KillStreak=2}] run function medabots_server:stage/try/woods_battle/story_battle
execute if entity @s[scores={KillStreak=3}] run function medabots_server:stage/try/woods_battle/story_battle

execute unless entity @s[advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_koji=true,vs_koji_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={desperate_for_love=true,desperate_for_love_battle=false}}] unless entity @s[scores={KillStreak=1..3}] run function medabots_server:stage/sign/woods_battle/random