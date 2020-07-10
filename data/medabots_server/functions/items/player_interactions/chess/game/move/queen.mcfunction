execute if score #temp PosX matches 0 if score #temp PosZ matches 0 run tellraw @a[tag=this_chess_game,distance=..0.5] {"translate":"medabots_server:message.player_interactions.chess.queen","color":"green"}

function medabots_server:items/player_interactions/chess/game/move/bishop
function medabots_server:items/player_interactions/chess/game/move/rook