class PaginationSerializer < ActiveModel::ArraySerializer
  def initialize(object, options={})
    meta_key = options[:meta_key] || :meta
    options[meta_key] ||= {}
    options[meta_key][:pagination] = {
      pages: object.pages
    }
    super(object, options)
  end
end