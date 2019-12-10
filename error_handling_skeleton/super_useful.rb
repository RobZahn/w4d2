# PHASE 2
def convert_to_int(str)
  begin
  Integer(str)

  rescue ArgumentError
    puts "Wrong argument!"
    return nil
  end
  
end


# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  begin
    if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    # elsif maybe_fruit == "coffee"
    #   retry 
    else
      raise StandardError 
      # puts "Next time, try giving me coffee"
    end 
  end
end

def feed_me_a_fruit
  begin
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  retry
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


# def remote_request
#   begin
#     response = RestClient.get my_request_url
#   rescue RestClient::ResourceNotFound => error
#     @retries ||= 0
#     if @retries < @max_retries
#       @retries += 1
#       retry
#     else
#       raise error
#     end
#   end
#   response
# end