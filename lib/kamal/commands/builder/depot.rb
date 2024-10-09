class Kamal::Commands::Builder::Depot < Kamal::Commands::Builder::Base
  def push(export_action = "registry", tag_as_dirty: false)
    depot :build,
      "--push",
      "--output=type=#{export_action}",
      *platform_options(arches),
      *build_tag_options(tag_as_dirty: tag_as_dirty),
      *build_options,
      build_context
  end

  def inspect_builder
    # No-op
  end

  private
    def depot(*args)
      args.compact.unshift :depot
    end
end
