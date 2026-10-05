module AppAds
  class UnityProjectScanner
    ADAPTER = /com\.google\.ads\.mediation:([a-z]+)/

    def initialize(root)
      @root = root
    end

    def adapters
      return nil unless Dir.exist?(@root)

      dependency_files.each_with_object({}) do |path, usage|
        project = project_name(path)
        File.read(path).scan(ADAPTER).flatten.uniq.each do |adapter|
          (usage[adapter] ||= []) << project unless usage[adapter]&.include?(project)
        end
      end
    end

    private

    def dependency_files
      Dir.glob(File.join(@root.tr("\\", "/"), "*", "Assets", "**", "*Dependencies.xml"))
    end

    def project_name(path)
      path.delete_prefix(@root.tr("\\", "/")).split("/").reject(&:empty?).first
    end
  end
end
