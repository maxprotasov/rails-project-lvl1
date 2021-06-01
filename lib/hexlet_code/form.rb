module Form
  def form_for(user)
    yield if block_given?
    ::Tag.build('form', action: '#', method: 'post') { '' }
  end
end
