require 'json'

class FileStorage
  def self.save_data(class_name, object)
    File.write("#{class_name}.json", JSON.generate(object))
  end
  def self.load_data(class_name)
    if File.exist?("#{class_name}.json")
      file_data = File.read("#{class_name}.json")
      JSON.parse(file_data, create_additions: true)
    else
      return []
    end
  end
end