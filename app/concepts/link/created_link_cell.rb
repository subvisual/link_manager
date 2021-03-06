class Link::CreatedLinkCell < Cell::Concept
  def show
    render base: ['app/concepts/'],
      prefixes: ['link/views'],
      template_engine: 'slim',
      view: 'created_link'
  end

  def url
    link_to actual_url, actual_url
  end

  private

  def actual_url
    "#{root_url}#{@model.unique_key}"
  end
end
