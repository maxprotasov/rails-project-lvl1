class Tag
  def self.build(tag_name, *attrs)
    pair_tag = yield if block_given?

    tag_attributes = attrs
      .each_with_object({}) {|element, hash| hash.merge!(element)}
      .map { |key,value| " #{key}='#{value}'" }.join
    tag_ending = pair_tag ? "#{pair_tag}</#{tag_name}>" : ''

    "<#{tag_name}#{tag_attributes}>" + tag_ending
  end
end
