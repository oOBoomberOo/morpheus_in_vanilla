function boomber:morpheus/time

execute if score #time.global bb.mp.var matches 0..900 run time add 100t
execute if score #time.global bb.mp.var matches 901..990 run time add 10t
execute if score #time.global bb.mp.var matches 991..999 run time add 1t
execute if score #time.global bb.mp.var matches 1001..10000 run time add 1000t
execute if score #time.global bb.mp.var matches 10001..14000 run time add 10000t
execute if score #time.global bb.mp.var matches 14001..24000 run time add 1000t

execute unless score #time.global bb.mp.var matches 1000 run function boomber:morpheus/morpheus/fast_forward