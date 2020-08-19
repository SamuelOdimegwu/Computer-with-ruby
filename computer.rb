class Computer

    def Computer.get_users
       return @@users
    end

    @@users = {}

    def initialize(username, password)
       @username = username
       @password = password
       @files ={}
       @@users[username] = password
    end
    
    def create(filename)
       time = Time.now
       @files[filename] = time
       puts "#{filename} was created by #{@username} at #{time}"
    end
end

#creating a new instance class  
my_computer = Computer.new("Samuel", "91939")