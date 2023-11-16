# https://dev.to/lofiandcode/ruby-puts-vs-print-vs-p-vs-pp-vs-awesome-5akl
# -------------------print---------------------
# print will print all stuff in single line and not add a new line at the end
def check_print
  print "121"
  print "abc"
end

# output
# 121abc
check_print

# -------------------puts---------------------
# puts will adds a new line to the end of each argument if there is not one already
def check_puts
  puts "121"
  puts "abc"
end

# output
# 121
# abc
check_puts

# -------------------p---------------------
# displays the raw value of an object, including any quotes or escape characters
def check_p
  p "121\nabc"
  puts "121\nabc"
end

# output
# 121\nabc
# 121
# abc
check_p

# -------------------pp---------------------
# PrettyPrint, or pp, is a special version of p that is essential exactly the same except for the fact that it attempts 
# to print large hashes and arrays to the command line in a more readable format
def check_pp
  pp [false, 42, %w{one two}, {:time => Time.now, :class => Time.now.class, :distance => 42e42}]
end

# output
# [false,
#  42,
#  ["one", "two"],
#  {:time=>"2023-11-16T19:29:34.149+05:30", :class=>Time, :distance=>4.2e+43}]
check_pp
