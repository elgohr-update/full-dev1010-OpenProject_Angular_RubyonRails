FactoryBot.define do
  factory :ldap_synchronized_filter, class: '::LdapGroups::SynchronizedFilter' do
    name { 'foo and bar' }
    filter_string { '(|(cn=foo)(cn=bar))' }
    group_name_attribute { 'cn' }
    base_dn { 'dc=example,dc=com' }
    auth_source factory: :ldap_auth_source
  end
end