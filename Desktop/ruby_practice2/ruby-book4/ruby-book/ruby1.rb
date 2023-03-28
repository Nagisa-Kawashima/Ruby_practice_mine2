# puts 1 / 1 rescue 1
puts 1 / 0 rescue 0

require 'date'

def to_date(string)
    begin
        Date.parse(string)
    rescue ArgumentError => e
        puts "#{e.class}/ #{e.message}"
    end
end

to_date('2021-01-01')
to_date('abcdef')


def to_date(string)
    Date.parse(string) rescue puts nil

end

to_date('2021-01-01')
to_date('abcdef')

    
begin
    1/0
rescue => e
    puts  "#{e.class}/ #{e.message}"
    puts e.backtrace
    

    
end

begin 
    1/0
rescue => e
    puts  "#{$!.class}/ #{$!.message}"
    puts $@
end

def fizz_buzz(n)
    # begin
        if n % 15 == 0
            'Fizz buzz'
        elsif n % 3 == 0
            'Fizz'
            
        elsif n % 5 == 0
            'Buzz'
        else 
            n.to_s
        end
    rescue => e  
        puts "#{$!.class}/ #{$!.message}"
    # end

end
fizz_buzz(nil)

users.each do |user|
    # begin
        send_email_to(user)
    rescue => e
        puts e.full_message
 
    # end
end 

users.each do { |user|
    begin
        send_email_to(user)
    rescue => e
        puts e.full_message
    # else
        
    end
}