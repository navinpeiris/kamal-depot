require "active_support/core_ext/string/filters"

class Kamal::Commands::Builder < Kamal::Commands::Base
  delegate \
    :create, :remove, :dev, :push, :clean, :pull, :info, :inspect_builder,
    :validate_image, :first_mirror, :login_to_registry_locally?, :push_env,
    to: :target

  delegate \
    :local?, :remote?, :pack?, :cloud?, :depot?,
    to: "config.builder"

  include Clone

  def name
    target.class.to_s.remove("Kamal::Commands::Builder::").underscore.inquiry
  end

  def target
    if depot?
      depot
    elsif remote?
      if local?
        hybrid
      else
        remote
      end
    elsif pack?
      pack
    elsif cloud?
      cloud
    else
      local
    end
  end

  def depot
    @depot ||= Kamal::Commands::Builder::Depot.new(config)
  end

  def remote
    @remote ||= Kamal::Commands::Builder::Remote.new(config)
  end

  def local
    @local ||= Kamal::Commands::Builder::Local.new(config)
  end

  def hybrid
    @hybrid ||= Kamal::Commands::Builder::Hybrid.new(config)
  end

  def pack
    @pack ||= Kamal::Commands::Builder::Pack.new(config)
  end

  def cloud
    @cloud ||= Kamal::Commands::Builder::Cloud.new(config)
  end
end
