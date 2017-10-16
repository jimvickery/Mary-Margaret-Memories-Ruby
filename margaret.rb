require "yaml"

class Margaret

    def self.message
        begin
            margaret_arg = ARGV
            if margaret_arg.empty?
                raise ArgumentError, "You must enter a value"
            end

            margaret_arg = margaret_arg.join(" ")
            message_file = File.open("messages.yaml", 'r+')
            new_hash = YAML::load(message_file)

            message_file_array = new_hash.fetch('Margaret')
            message_file_array.push(margaret_arg)
            message_file.rewind
            message_file.puts YAML::dump(new_hash)
            message_file.close

        rescue ArgumentError => exception
            puts "#{exception.message}"

         rescue KeyError => exception
            puts "#{exception.message}"
        
        rescue EOFError => exception
            puts "#{exception.message}"
            
        end
    end
    self.message
	
end