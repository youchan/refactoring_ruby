new_network = NetworkResult.new
new_network.old_networks << node.network
new_network.nodes << node
new_network.name = new_network.old_networks
                         .map(&:name)
                         .join(' - ')

class NetworkResult
  attr_reader :old_networks, :nodes
  attr_accessor :name

  def initialize
    @old_networks, @nodes = [], []
  end
end
