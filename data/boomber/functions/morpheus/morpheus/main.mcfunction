function boomber:morpheus/morpheus/get/player_ratio

execute unless score #player.ratio bb.mp.var >= #minimum_percentage bb.mp.gamerule run function boomber:morpheus/morpheus/log_time
execute if score #player.ratio bb.mp.var >= #minimum_percentage bb.mp.gamerule run function boomber:morpheus/morpheus/activate