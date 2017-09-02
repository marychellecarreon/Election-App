


def banner
  system 'cls'
  puts puts %q{
                      88888888888  88                                   88
                      88
                      88           88                            88
                      88aaaaa      88   ,adPPYba,   ,adPPYba,  MM88MMM  88   ,adPPYba,   8b,dPPYba,
                      88"""""      88  a8P_____88  a8"     ""    88     88  a8"     "8a  88P'   `"8a
                      88           88  8PP"""""""  8b            88     88  8b       d8  88       88
                      88           88  "8b,   ,aa  "8a,   ,aa    88,    88  "8a,   ,a8"  88       88
                      88888888888  88   `"Ybbd8"'   `"Ybbd8"'    "Y888  88   `"YbbdP"'   88       88


}
end

@totalvotes = 1

@candidates = [
  { name: 'Mika', num: 1, votes: 0},
  { name: 'Reggie', num:2, votes: 0},
  { name: 'Kenneth', num: 3, votes: 0},
  { name: 'Trevor', num: 4, votes: 0}
]

def showcandidates
  puts "List of candidates".upcase.center(130, '-')
  puts "Total Votes:#{@totalvotes}".upcase.center(130, '-')
    @candidates.each do |list|
    puts "#{list[:num]} #{list[:name]}".center(130)
  end
    puts "\n"*5
    gets
    puts "Please enter your name".center(130, '-')
   @name = gets.chomp
      puts "#{@name.upcase}!".center(130, '-')
      puts "You may now cast your vote. Please enter the number of your candidate".center(130, '-')
  @ent = gets.chomp.to_i
  @candidates.each do |list|
  if @ent.to_i == list[:num]
      puts "You have selected #{list[:name]}. Your vote is counted".center(130)
            list[:votes] += 1
            @totalvotes += 1
    end
  end
end

def voteprocess
  puts "Next voter, y or n".center(130)
    @ans = gets.chomp
    while @ans == "y"
      @ans = gets.chomp
       puts " " * 50
         showcandidates
         voteprocess
       end

    if @ans == "n"
      @ans = gets.chomp
    end
    votesum
  end

def votesum
  puts "Tally of votes".upcase.center(130, '-')
  @candidates.each do |list|
    puts "#{list[:name]} is #{list[:votes]}".center(130)
  end
end

def progstart
banner
showcandidates
voteprocess
end

progstart
