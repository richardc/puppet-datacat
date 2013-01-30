[:windows, :posix].each do |provider_subclass|
    parent_provider = Puppet::Type.type(:file).provide(provider_subclass)
    Puppet::Type.type(:datacat).provide(provider_subclass, :parent => parent_provider) do
        mk_resource_methods

        def flush
            debug "flushing"

            data = Puppet::Type::Datacat::Common.get_data(@resource[:path])
            if data
                debug "Collected #{data.inspect}"
            else
                debug "no data exported"
            end
        end
    end
end
