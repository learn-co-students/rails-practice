class DomainMapping < ApplicationRecord

  def self.find_by_host(host)
    subdomainest = host.split(".").first
    self.find_by(subdomain: subdomainest)
  end
end
