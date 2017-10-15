# Mary-Margaret-Memories-Ruby
Mary Margaret

In this exercise, you're going to use object serialization to allow two distinct Ruby modules pass a hash back and forth, while they are running independently of each other.

You will execute each module seperately, and each one will augment a hash, and then serialize it to a file.

Setup

mkdir -p ~/workspace/ruby/exercises/memories && cd $_
touch mary.rb
touch margaret.rb
Requirements

Create a mary.rb module that contains a Mary class.
Create a margaret.rb module that contains a Margaret class.
Each module must accept one command line argument that is a message to add to a list (see example below).
Each module must be able to serialize a hash to a file named messages.
Each module must be able to deserialize the hash stored in messages.
Each module, after the object is deserialized from the file, must add the message to the appropriate list in the hash.
Each module must handle exceptions properly. You may encounter the following while testing your logic.
FileNotFoundError
EOFError
KeyError
Tip: For serialization, use YAML.load() and YAML.dump() so that file is a yaml file.
Hash structure

{
    "Mary" => ["Hi, I'm Mary", "I like jet planes"],
    "Margaret" => ["Hi, I'm Margaret", "I like cookies"]
}
Command line syntax

ruby mary.rb "Hi, I'm Mary"