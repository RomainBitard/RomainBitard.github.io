module AppAds
  class FileStore
    def initialize(root)
      @root = root
    end

    def read(relative_path)
      return "" if relative_path.nil?

      path = absolute(relative_path)
      File.exist?(path) ? File.read(path, mode: "r:bom|utf-8") : ""
    end

    def write(relative_path, text)
      path = absolute(relative_path)
      return false if File.exist?(path) && File.binread(path) == text.b

      File.binwrite(path, text)
      true
    end

    def absolute(relative_path)
      File.expand_path(relative_path, @root)
    end
  end
end
