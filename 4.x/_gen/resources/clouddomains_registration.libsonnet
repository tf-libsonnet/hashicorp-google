local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='clouddomains_registration', url='', help='`clouddomains_registration` represents the `google_clouddomains_registration` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  contact_settings:: {
    admin_contact:: {
      '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.admin_contact.new` constructs a new object with attributes and blocks configured for the `admin_contact`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Required. Email address of the contact.\n  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.\n  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.\n  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.admin_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `admin_contact` sub block.\n', args=[]),
      new(
        email,
        phone_number,
        fax_number=null,
        postal_address=null
      ):: std.prune(a={
        email: email,
        fax_number: fax_number,
        phone_number: phone_number,
        postal_address: postal_address,
      }),
      postal_address:: {
        '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.admin_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.\nBecause values in addressLines do not have type information and may sometimes contain multiple values in a single\nfield (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be\n&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language\nis used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,\nthe most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.\n  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,\na province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community\n(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland\nthis should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.\n  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world\nwhere localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.\n  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.\n  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,\nthey may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.\n  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,\nit might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.\n  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to\nensure the value is correct. See https://cldr.unicode.org/ and\nhttps://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.\n\n**Returns**:\n  - An attribute object that represents the `postal_address` sub block.\n', args=[]),
        new(
          region_code,
          address_lines=null,
          administrative_area=null,
          locality=null,
          organization=null,
          postal_code=null,
          recipients=null
        ):: std.prune(a={
          address_lines: address_lines,
          administrative_area: administrative_area,
          locality: locality,
          organization: organization,
          postal_code: postal_code,
          recipients: recipients,
          region_code: region_code,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.new` constructs a new object with attributes and blocks configured for the `contact_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `privacy` (`string`): Required. Privacy setting for the contacts associated with the Registration.\nValues are PUBLIC_CONTACT_DATA, PRIVATE_CONTACT_DATA, and REDACTED_CONTACT_DATA\n  - `admin_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.\n\nWarning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to\navoid domain suspension. When `null`, the `admin_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.admin_contact.new](#fn-contact_settingsadmin_contactnew) constructor.\n  - `registrant_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.\n\nWarning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to\navoid domain suspension. When `null`, the `registrant_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.registrant_contact.new](#fn-contact_settingsregistrant_contactnew) constructor.\n  - `technical_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.\n\nWarning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to\navoid domain suspension. When `null`, the `technical_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.technical_contact.new](#fn-contact_settingstechnical_contactnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `contact_settings` sub block.\n', args=[]),
    new(
      privacy,
      admin_contact=null,
      registrant_contact=null,
      technical_contact=null
    ):: std.prune(a={
      admin_contact: admin_contact,
      privacy: privacy,
      registrant_contact: registrant_contact,
      technical_contact: technical_contact,
    }),
    registrant_contact:: {
      '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.registrant_contact.new` constructs a new object with attributes and blocks configured for the `registrant_contact`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Required. Email address of the contact.\n  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.\n  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.\n  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.registrant_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `registrant_contact` sub block.\n', args=[]),
      new(
        email,
        phone_number,
        fax_number=null,
        postal_address=null
      ):: std.prune(a={
        email: email,
        fax_number: fax_number,
        phone_number: phone_number,
        postal_address: postal_address,
      }),
      postal_address:: {
        '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.registrant_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.\nBecause values in addressLines do not have type information and may sometimes contain multiple values in a single\nfield (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be\n&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language\nis used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,\nthe most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.\n  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,\na province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community\n(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland\nthis should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.\n  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world\nwhere localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.\n  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.\n  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,\nthey may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.\n  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,\nit might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.\n  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to\nensure the value is correct. See https://cldr.unicode.org/ and\nhttps://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.\n\n**Returns**:\n  - An attribute object that represents the `postal_address` sub block.\n', args=[]),
        new(
          region_code,
          address_lines=null,
          administrative_area=null,
          locality=null,
          organization=null,
          postal_code=null,
          recipients=null
        ):: std.prune(a={
          address_lines: address_lines,
          administrative_area: administrative_area,
          locality: locality,
          organization: organization,
          postal_code: postal_code,
          recipients: recipients,
          region_code: region_code,
        }),
      },
    },
    technical_contact:: {
      '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.technical_contact.new` constructs a new object with attributes and blocks configured for the `technical_contact`\nTerraform sub block.\n\n\n\n**Args**:\n  - `email` (`string`): Required. Email address of the contact.\n  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.\n  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.\n  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.technical_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `technical_contact` sub block.\n', args=[]),
      new(
        email,
        phone_number,
        fax_number=null,
        postal_address=null
      ):: std.prune(a={
        email: email,
        fax_number: fax_number,
        phone_number: phone_number,
        postal_address: postal_address,
      }),
      postal_address:: {
        '#new':: d.fn(help='\n`google.clouddomains_registration.contact_settings.technical_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`\nTerraform sub block.\n\n\n\n**Args**:\n  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.\nBecause values in addressLines do not have type information and may sometimes contain multiple values in a single\nfield (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be\n&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language\nis used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,\nthe most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.\n  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,\na province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community\n(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland\nthis should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.\n  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world\nwhere localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.\n  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.\n  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,\nthey may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.\n  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,\nit might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.\n  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to\nensure the value is correct. See https://cldr.unicode.org/ and\nhttps://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.\n\n**Returns**:\n  - An attribute object that represents the `postal_address` sub block.\n', args=[]),
        new(
          region_code,
          address_lines=null,
          administrative_area=null,
          locality=null,
          organization=null,
          postal_code=null,
          recipients=null
        ):: std.prune(a={
          address_lines: address_lines,
          administrative_area: administrative_area,
          locality: locality,
          organization: organization,
          postal_code: postal_code,
          recipients: recipients,
          region_code: region_code,
        }),
      },
    },
  },
  dns_settings:: {
    custom_dns:: {
      ds_records:: {
        '#new':: d.fn(help='\n`google.clouddomains_registration.dns_settings.custom_dns.ds_records.new` constructs a new object with attributes and blocks configured for the `ds_records`\nTerraform sub block.\n\n\n\n**Args**:\n  - `algorithm` (`string`): The algorithm used to generate the referenced DNSKEY. When `null`, the `algorithm` field will be omitted from the resulting object.\n  - `digest` (`string`): The digest generated from the referenced DNSKEY. When `null`, the `digest` field will be omitted from the resulting object.\n  - `digest_type` (`string`): The hash function used to generate the digest of the referenced DNSKEY. When `null`, the `digest_type` field will be omitted from the resulting object.\n  - `key_tag` (`number`): The key tag of the record. Must be set in range 0 -- 65535. When `null`, the `key_tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ds_records` sub block.\n', args=[]),
        new(
          algorithm=null,
          digest=null,
          digest_type=null,
          key_tag=null
        ):: std.prune(a={
          algorithm: algorithm,
          digest: digest,
          digest_type: digest_type,
          key_tag: key_tag,
        }),
      },
      '#new':: d.fn(help='\n`google.clouddomains_registration.dns_settings.custom_dns.new` constructs a new object with attributes and blocks configured for the `custom_dns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name_servers` (`list`): Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain\nname, with Unicode domain names expressed in Punycode format.\n  - `ds_records` (`list[obj]`): The list of DS records for this domain, which are used to enable DNSSEC. The domain&#39;s DNS provider can provide\nthe values to set here. If this field is empty, DNSSEC is disabled. When `null`, the `ds_records` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.custom_dns.ds_records.new](#fn-dns_settingsdns_settingsds_recordsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_dns` sub block.\n', args=[]),
      new(
        name_servers,
        ds_records=null
      ):: std.prune(a={
        ds_records: ds_records,
        name_servers: name_servers,
      }),
    },
    glue_records:: {
      '#new':: d.fn(help='\n`google.clouddomains_registration.dns_settings.glue_records.new` constructs a new object with attributes and blocks configured for the `glue_records`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host_name` (`string`): Required. Domain name of the host in Punycode format.\n  - `ipv4_addresses` (`list`): List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).\nAt least one of ipv4_address and ipv6_address must be set. When `null`, the `ipv4_addresses` field will be omitted from the resulting object.\n  - `ipv6_addresses` (`list`): List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).\nAt least one of ipv4_address and ipv6_address must be set. When `null`, the `ipv6_addresses` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `glue_records` sub block.\n', args=[]),
      new(
        host_name,
        ipv4_addresses=null,
        ipv6_addresses=null
      ):: std.prune(a={
        host_name: host_name,
        ipv4_addresses: ipv4_addresses,
        ipv6_addresses: ipv6_addresses,
      }),
    },
    '#new':: d.fn(help='\n`google.clouddomains_registration.dns_settings.new` constructs a new object with attributes and blocks configured for the `dns_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `custom_dns` (`list[obj]`): Configuration for an arbitrary DNS provider. When `null`, the `custom_dns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.custom_dns.new](#fn-dns_settingscustom_dnsnew) constructor.\n  - `glue_records` (`list[obj]`): The list of glue records for this Registration. Commonly empty. When `null`, the `glue_records` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.glue_records.new](#fn-dns_settingsglue_recordsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dns_settings` sub block.\n', args=[]),
    new(
      custom_dns=null,
      glue_records=null
    ):: std.prune(a={
      custom_dns: custom_dns,
      glue_records: glue_records,
    }),
  },
  management_settings:: {
    '#new':: d.fn(help='\n`google.clouddomains_registration.management_settings.new` constructs a new object with attributes and blocks configured for the `management_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `preferred_renewal_method` (`string`): The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.\nIf unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual renewalMethod is treated as if it were set to AUTOMATIC_RENEWAL.\nYou cannot use RENEWAL_DISABLED during resource creation, and you can update the renewal status only when the Registration\nresource has state ACTIVE or SUSPENDED.\n\nWhen preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the actual renewalMethod can be set to RENEWAL_DISABLED in case of\nproblems with the billing account or reported domain abuse. In such cases, check the issues field on the Registration. After\nthe problem is resolved, the renewalMethod is automatically updated to preferredRenewalMethod in a few hours. When `null`, the `preferred_renewal_method` field will be omitted from the resulting object.\n  - `transfer_lock_state` (`string`): Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED. When `null`, the `transfer_lock_state` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `management_settings` sub block.\n', args=[]),
    new(
      preferred_renewal_method=null,
      transfer_lock_state=null
    ):: std.prune(a={
      preferred_renewal_method: preferred_renewal_method,
      transfer_lock_state: transfer_lock_state,
    }),
  },
  '#new':: d.fn(help="\n`google.clouddomains_registration.new` injects a new `google_clouddomains_registration` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.clouddomains_registration.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.clouddomains_registration` using the reference:\n\n    $._ref.google_clouddomains_registration.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_clouddomains_registration.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `contact_notices` (`list`): The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT When `null`, the `contact_notices` field will be omitted from the resulting object.\n  - `domain_name` (`string`): Required. The domain name. Unicode domain names must be expressed in Punycode format.\n  - `domain_notices` (`list`): The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED When `null`, the `domain_notices` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with the Registration.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `contact_settings` (`list[obj]`): Required. Settings for contact information linked to the Registration. When `null`, the `contact_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.new](#fn-contact_settingsnew) constructor.\n  - `dns_settings` (`list[obj]`): Settings controlling the DNS configuration of the Registration. When `null`, the `dns_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.new](#fn-dns_settingsnew) constructor.\n  - `management_settings` (`list[obj]`): Settings for management of the Registration, including renewal, billing, and transfer When `null`, the `management_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.management_settings.new](#fn-management_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.timeouts.new](#fn-timeoutsnew) constructor.\n  - `yearly_price` (`list[obj]`): Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from\nregistrations.retrieveRegisterParameters or registrations.searchDomains calls. When `null`, the `yearly_price` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.yearly_price.new](#fn-yearly_pricenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    domain_name,
    location,
    contact_notices=null,
    contact_settings=null,
    dns_settings=null,
    domain_notices=null,
    labels=null,
    management_settings=null,
    project=null,
    timeouts=null,
    yearly_price=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddomains_registration',
    label=resourceLabel,
    attrs=self.newAttrs(
      contact_notices=contact_notices,
      contact_settings=contact_settings,
      dns_settings=dns_settings,
      domain_name=domain_name,
      domain_notices=domain_notices,
      labels=labels,
      location=location,
      management_settings=management_settings,
      project=project,
      timeouts=timeouts,
      yearly_price=yearly_price
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.clouddomains_registration.newAttrs` constructs a new object with attributes and blocks configured for the `clouddomains_registration`\nTerraform resource.\n\nUnlike [google.clouddomains_registration.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `contact_notices` (`list`): The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT When `null`, the `contact_notices` field will be omitted from the resulting object.\n  - `domain_name` (`string`): Required. The domain name. Unicode domain names must be expressed in Punycode format.\n  - `domain_notices` (`list`): The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED When `null`, the `domain_notices` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of labels associated with the Registration.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `contact_settings` (`list[obj]`): Required. Settings for contact information linked to the Registration. When `null`, the `contact_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.new](#fn-contact_settingsnew) constructor.\n  - `dns_settings` (`list[obj]`): Settings controlling the DNS configuration of the Registration. When `null`, the `dns_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.new](#fn-dns_settingsnew) constructor.\n  - `management_settings` (`list[obj]`): Settings for management of the Registration, including renewal, billing, and transfer When `null`, the `management_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.management_settings.new](#fn-management_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.timeouts.new](#fn-timeoutsnew) constructor.\n  - `yearly_price` (`list[obj]`): Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from\nregistrations.retrieveRegisterParameters or registrations.searchDomains calls. When `null`, the `yearly_price` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.yearly_price.new](#fn-yearly_pricenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddomains_registration` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    domain_name,
    location,
    contact_notices=null,
    contact_settings=null,
    dns_settings=null,
    domain_notices=null,
    labels=null,
    management_settings=null,
    project=null,
    timeouts=null,
    yearly_price=null
  ):: std.prune(a={
    contact_notices: contact_notices,
    contact_settings: contact_settings,
    dns_settings: dns_settings,
    domain_name: domain_name,
    domain_notices: domain_notices,
    labels: labels,
    location: location,
    management_settings: management_settings,
    project: project,
    timeouts: timeouts,
    yearly_price: yearly_price,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.clouddomains_registration.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withContactNotices':: d.fn(help='`google.list.withContactNotices` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the contact_notices field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `contact_notices` field.\n', args=[]),
  withContactNotices(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          contact_notices: value,
        },
      },
    },
  },
  '#withContactSettings':: d.fn(help='`google.list[obj].withContactSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the contact_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withContactSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `contact_settings` field.\n', args=[]),
  withContactSettings(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          contact_settings: value,
        },
      },
    },
  },
  '#withContactSettingsMixin':: d.fn(help='`google.list[obj].withContactSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the contact_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withContactSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `contact_settings` field.\n', args=[]),
  withContactSettingsMixin(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          contact_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDnsSettings':: d.fn(help='`google.list[obj].withDnsSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dns_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDnsSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dns_settings` field.\n', args=[]),
  withDnsSettings(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          dns_settings: value,
        },
      },
    },
  },
  '#withDnsSettingsMixin':: d.fn(help='`google.list[obj].withDnsSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dns_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDnsSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dns_settings` field.\n', args=[]),
  withDnsSettingsMixin(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          dns_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDomainName':: d.fn(help='`google.string.withDomainName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain_name` field.\n', args=[]),
  withDomainName(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          domain_name: value,
        },
      },
    },
  },
  '#withDomainNotices':: d.fn(help='`google.list.withDomainNotices` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the domain_notices field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `domain_notices` field.\n', args=[]),
  withDomainNotices(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          domain_notices: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withManagementSettings':: d.fn(help='`google.list[obj].withManagementSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withManagementSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management_settings` field.\n', args=[]),
  withManagementSettings(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          management_settings: value,
        },
      },
    },
  },
  '#withManagementSettingsMixin':: d.fn(help='`google.list[obj].withManagementSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the management_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withManagementSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `management_settings` field.\n', args=[]),
  withManagementSettingsMixin(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          management_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withYearlyPrice':: d.fn(help='`google.list[obj].withYearlyPrice` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the yearly_price field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withYearlyPriceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `yearly_price` field.\n', args=[]),
  withYearlyPrice(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          yearly_price: value,
        },
      },
    },
  },
  '#withYearlyPriceMixin':: d.fn(help='`google.list[obj].withYearlyPriceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the yearly_price field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withYearlyPrice](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `yearly_price` field.\n', args=[]),
  withYearlyPriceMixin(resourceLabel, value): {
    resource+: {
      google_clouddomains_registration+: {
        [resourceLabel]+: {
          yearly_price+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  yearly_price:: {
    '#new':: d.fn(help='\n`google.clouddomains_registration.yearly_price.new` constructs a new object with attributes and blocks configured for the `yearly_price`\nTerraform sub block.\n\n\n\n**Args**:\n  - `currency_code` (`string`): The three-letter currency code defined in ISO 4217. When `null`, the `currency_code` field will be omitted from the resulting object.\n  - `units` (`string`): The whole units of the amount. For example if currencyCode is &#34;USD&#34;, then 1 unit is one US dollar. When `null`, the `units` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `yearly_price` sub block.\n', args=[]),
    new(
      currency_code=null,
      units=null
    ):: std.prune(a={
      currency_code: currency_code,
      units: units,
    }),
  },
}
