class Kamal::Commands::Builder::Depot < Kamal::Commands::Builder::Base
  def push(export_action = "registry", tag_as_dirty: false, no_cache: false)
    depot :build,
      "--push",
      "--output=type=#{export_action}",
      *platform_options(arches),
      *build_tag_options(tag_as_dirty: tag_as_dirty),
      *build_options,
      *([ "--no-cache" ] if no_cache),
      build_context,
      "2>&1"
  end

  def inspect_builder
    # No-op
  end

  private
    def depot(*args)
      args.compact.unshift :depot
    end
end
