require_relative 'seeds_authors_books'

DomainMapping.destroy_all

DomainMapping.create(subdomain: "fullsnackdevelopersthink", cohort_name: "Full-snack Developers")
DomainMapping.create(subdomain: "directoryschildthinks", cohort_name: "Directory’s Child")
DomainMapping.create(subdomain: "localhost", cohort_name: "Local Test")




