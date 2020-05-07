function boomber:morpheus/morpheus/get/total_player
function boomber:morpheus/morpheus/get/sleeping_player

#define score_holder #player.ratio
scoreboard players operation #player.ratio bb.mp.var = #player.sleeping bb.mp.var
scoreboard players operation #player.ratio bb.mp.var *= #100 bb.mp.const
scoreboard players operation #player.ratio bb.mp.var /= #player.total bb.mp.var