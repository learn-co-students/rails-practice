class ApplicationController < ActionController::Base

  before_action :fetch_domain_mapping


  def fetch_domain_mapping
    @mapping = DomainMapping.find_by_host(request.host)
  end
end
