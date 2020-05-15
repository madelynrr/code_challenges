# Given an array of coins of different denominations, and an amount of money. Return the amount of change a customer should get.  The change given should be the highest denomination amount, for example.
# [10,5, 1], 16 => Should return one 10 coin, one 5 coin, and 1 one coin.
# The wrong answer here would be returning three 5 and one of 1 or sixteen 1s would also be wrong
#
# Input: An array of coins, and the amount of change due which is an integer.  Array of coins will never be empty, and the change due will never be more than the highest denomination amount for change.
# As an example if change due is 21, there will at least be a coin amount of 21 or lower in the array.
# Also the coins will always be sorted with the highest denomination first in the array.
# Output: Print to the screen how many coins of each value.  So if in the example [10,5,1], 16 We should print to the screen
# Here is your change, 1 10 coin, 1 5 coin, and 1 1 coin.


# divide the change by the first array value, I would want the number of times that coin value goes into the change value (so that's how many of that coin we need)
# would want to modulo the number, that would give me the new change amount to recursively give my method

# iterate through the array
# want to divide the change by each array value
# need to hold on to those numbers (attached to coin values)


coin_array = [10, 5, 1]
change_due = 25

def find_change(coins, change)
  new_hash = {}

  until coins.length == 0
    coin = coins.first
    number_of_coins = change/coin
    new_hash[coin] = number_of_coins

    coins.delete_at(0)
    change = change % coin
  end
  puts "Here is your change, #{new_hash[10]} 10 coins, #{new_hash[5]} 5 coins, #{new_hash[1]} 1 coins."
end

find_change(coin_array, change_due)
