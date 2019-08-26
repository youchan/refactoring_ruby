new_network = NetworkResult.new
new_network.old_networks << node.network
new_network.nodes << node
new_network.name = new_network.old_networks
                         .map(&:name)
                         .join(' - ')

class NetworkResult
end
