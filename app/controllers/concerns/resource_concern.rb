module ResourceConcern
  extend ActiveSupport::Concern

  def attributes
    resource_class.attribute_names
  end

  def show_attributes
    resource_class.attribute_names - %w[deleted_at]
  end

  def resource
    resource_class.send(:find, params[:id]) if resource_class.respond_to? :find
  end

  def resource_class
    @resource_class ||= begin
      namespaced_class = self.class.to_s.sub(/Controller$/, '').singularize
      namespaced_class.constantize
    rescue NameError
      nil
    end

    @resource_class ||= begin
      namespaced_classes = self.class.to_s.sub(/Controller$/, '').split('::')
      namespaced_class = [namespaced_classes.first, namespaced_classes.last].join('::').singularize
      namespaced_class.constantize
    rescue NameError
      nil
    end

    @resource_class ||= begin
      camelcased_class = self.class.to_s.sub(/Controller$/, '').gsub('::', '').singularize
      camelcased_class.constantize
    rescue NameError
      nil
    end

    @resource_class ||= begin
      class_name = controller_name.classify
      class_name.constantize
    rescue NameError => e
      raise unless e.message.include?(class_name)
      nil
    end
  end
end
