require_relative 'sudoku_boards'
require "tty-prompt"
$play_game = true

# Hash that is used to check user input against the Sudoku array index values

$reference_hash = {"a1" => 0, "a2" => 1, "a3" => 2, "a4" => 3, "a5" => 4, "a6" => 5, "a7" => 6, "a8" => 7, "a9" => 8,
                  "b1" => 9, "b2" => 10, "b3" => 11, "b4" => 12, "b5" => 13, "b6" => 14, "b7" => 15, "b8" => 16, "b9" => 17,
                  "c1" => 18, "c2" => 19, "c3" => 20, "c4" => 21, "c5" => 22, "c6" => 23, "c7" => 24, "c8" => 25, "c9" => 26,
                  "d1" => 27, "d2" => 28, "d3" => 29, "d4" => 30, "d5" => 31, "d6" => 32, "d7" => 33, "d8" => 34, "d9" => 35,
                  "e1" => 36, "e2" => 37, "e3" => 38, "e4" => 39, "e5" => 40, "e6" => 41, "e7" => 42, "e8" => 43, "e9" => 44,
                  "f1" => 45, "f2" => 46, "f3" => 47, "f4" => 48, "f5" => 49, "f6" => 50, "f7" => 51, "f8" => 52, "f9" => 53,
                  "g1" => 54, "g2" => 55, "g3" => 56, "g4" => 57, "g5" => 58, "g6" => 59, "g7" => 60, "g8" => 61, "g9" => 62,
                  "h1" => 63, "h2" => 64, "h3" => 65, "h4" => 66, "h5" => 67, "h6" => 68, "h7" => 69, "h8" => 70, "h9" => 71,
                  "i1" => 72, "i2" => 73, "i3" => 74, "i4" => 75, "i5" => 76, "i6" => 77, "i7" => 78, "i8" => 79, "i9" => 80 }
    
# Prints the formatted grid to the terminal 

def print_current_grid(grid)
puts  " 
    1 2 3   4 5 6   7 8 9
    ======+=======+======
 A  #{grid[0]} #{grid[1]} #{grid[2]} | #{grid[3]} #{grid[4]} #{grid[5]} | #{grid[6]} #{grid[7]} #{grid[8]}   
 B  #{grid[9]} #{grid[10]} #{grid[11]} | #{grid[12]} #{grid[13]} #{grid[14]} | #{grid[15]} #{grid[16]} #{grid[17]}
 C  #{grid[18]} #{grid[19]} #{grid[20]} | #{grid[21]} #{grid[22]} #{grid[23]} | #{grid[24]} #{grid[25]} #{grid[26]}
    ======+=======+======
 D  #{grid[27]} #{grid[28]} #{grid[29]} | #{grid[30]} #{grid[31]} #{grid[32]} | #{grid[33]} #{grid[34]} #{grid[35]}
 E  #{grid[36]} #{grid[37]} #{grid[38]} | #{grid[39]} #{grid[40]} #{grid[41]} | #{grid[42]} #{grid[43]} #{grid[44]}
 F  #{grid[45]} #{grid[46]} #{grid[47]} | #{grid[48]} #{grid[49]} #{grid[50]} | #{grid[51]} #{grid[52]} #{grid[53]}
    ======+=======+======
 G  #{grid[54]} #{grid[55]} #{grid[56]} | #{grid[57]} #{grid[58]} #{grid[59]} | #{grid[60]} #{grid[61]} #{grid[62]}
 H  #{grid[63]} #{grid[64]} #{grid[65]} | #{grid[66]} #{grid[67]} #{grid[68]} | #{grid[69]} #{grid[70]} #{grid[71]}
 I  #{grid[72]} #{grid[73]} #{grid[74]} | #{grid[75]} #{grid[76]} #{grid[77]} | #{grid[78]} #{grid[79]} #{grid[80]}"
end

# Asks user for input, runs input into hash to find grid index
# Grid index is changed to the requested number
# if "q" is input game is ended

def user_input(reference_hash, grid, answers)
   puts "Which area would you like to change? e.g. a1 , d4  - Press q to quit game, Press h for help"
   input = gets.chomp
   i = reference_hash[input]
   if input == "q"
      $play_game = false
   elsif input == "h"
      help_add_num(grid, reference_hash, answers)
   elsif reference_hash.has_key?(input)
      puts "Which number would you like to change it to? (1-9)"
      new_i = gets.chomp.to_i
      grid[i] = new_i
      return grid
   else
      while reference_hash.has_key?(input) == false && (input != "q") do
         puts "#{input} is not a valid input - Please try again"
         input = gets.chomp
      end
      return input
  end
end

# help methods

def help_add_num(grid, reference_hash, answers) 
   puts "Which area would you like help with? E.g. a1, d6"
   help = gets.chomp
   help_i = reference_hash[help]
   if reference_hash.has_key?(help)
      grid[help_i] = answers[help_i]
      return grid
   else
   end
end


#code starts game, prompts to enter a difficulty looping user input into the board until board completed.



def start_game()
   prompt = TTY::Prompt.new
   choice = prompt.select("Welcome to Ash's Sudoku generator! Please select a game difficulty", %w(Easy Medium Hard))
   if choice == "Easy" 
      grid = $easy
      answers = $easy_answers
   elsif choice == "Medium" 
      grid = $medium 
      answers = $medium_answers
   else choice == "Hard"
      grid = $hard
      answers = $hard_answers
   end 
   print_current_grid(grid)
   while $play_game == true
      user_input($reference_hash, grid, answers)
      puts print_current_grid(grid)
      if grid == $easy_answers || grid == $medium_answers || grid == $hard_answers
         puts "Board complete - You win!"
         $play_game = false
      else
      end
   end
end


 start_game()

 #make grids check

