#this scripts counts all objective-c "classes" (files with a ".m" extensionsion) in the directory given as input and all its subdirectories.
#It puts the count of classes in stdout


def recursive_class_count(directory)
    paths_to_ignore = [".", "..", ".DS_Store"]
    Dir.chdir(directory)
    Dir.entries(Dir.pwd).each do |filename|
        if File.directory? filename and not paths_to_ignore.include? filename
            recursive_class_count(filename)
        end
   end

   puts "#{directory} - #{Dir.pwd}\n\n"
   entries = Dir.entries(Dir.pwd)
   classes = Dir.glob("*.m")
   puts classes
   puts "#{classes.count} classes in dir #{directory}"
   return classes.count
end

#check correct usage of the script
unless ARGV.length == 1
    puts "Usage: ruby objCClassCounter.rb directory_path"
    exit
end

directory_path = ARGV[0]
recursive_class_count(directory_path)





