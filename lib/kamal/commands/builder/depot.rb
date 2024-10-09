class Kamal::Commands::Builder::Depot < Kamal::Commands::Builder::Base
  def push
    depot :build,
      "--push",
      *platform_options(arches),
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
