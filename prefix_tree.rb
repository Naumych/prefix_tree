class Node
  attr_accessor :node_value, :node_childs

  def initialize(node_value, node_childs = nil)
    @node_value = node_value
    @node_childs_array = node_childs
  end

  def node_childs_array=(node_child)
    node_childs_array.push(node_child)
  end
end

class Trie
  #attr_accessor :trie

  def initialize(node_first_childs_value)
    @node_first = Node.new(nil, node_first_childs_value)

  end

  def add(word)
    i=0
    trie = self.new(word[i])

    while i < word.length-2
      node=Node.new(word[i],word[i+1])


  end

  def includes?

  end

  def list

  end

end