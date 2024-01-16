---
permalink: /clouddomains_registration/
---

# clouddomains_registration

`clouddomains_registration` represents the `google_clouddomains_registration` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withContactNotices()`](#fn-withcontactnotices)
* [`fn withContactSettings()`](#fn-withcontactsettings)
* [`fn withContactSettingsMixin()`](#fn-withcontactsettingsmixin)
* [`fn withDnsSettings()`](#fn-withdnssettings)
* [`fn withDnsSettingsMixin()`](#fn-withdnssettingsmixin)
* [`fn withDomainName()`](#fn-withdomainname)
* [`fn withDomainNotices()`](#fn-withdomainnotices)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManagementSettings()`](#fn-withmanagementsettings)
* [`fn withManagementSettingsMixin()`](#fn-withmanagementsettingsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withYearlyPrice()`](#fn-withyearlyprice)
* [`fn withYearlyPriceMixin()`](#fn-withyearlypricemixin)
* [`obj contact_settings`](#obj-contact_settings)
  * [`fn new()`](#fn-contact_settingsnew)
  * [`obj contact_settings.admin_contact`](#obj-contact_settingsadmin_contact)
    * [`fn new()`](#fn-contact_settingsadmin_contactnew)
    * [`obj contact_settings.admin_contact.postal_address`](#obj-contact_settingsadmin_contactpostal_address)
      * [`fn new()`](#fn-contact_settingsadmin_contactpostal_addressnew)
  * [`obj contact_settings.registrant_contact`](#obj-contact_settingsregistrant_contact)
    * [`fn new()`](#fn-contact_settingsregistrant_contactnew)
    * [`obj contact_settings.registrant_contact.postal_address`](#obj-contact_settingsregistrant_contactpostal_address)
      * [`fn new()`](#fn-contact_settingsregistrant_contactpostal_addressnew)
  * [`obj contact_settings.technical_contact`](#obj-contact_settingstechnical_contact)
    * [`fn new()`](#fn-contact_settingstechnical_contactnew)
    * [`obj contact_settings.technical_contact.postal_address`](#obj-contact_settingstechnical_contactpostal_address)
      * [`fn new()`](#fn-contact_settingstechnical_contactpostal_addressnew)
* [`obj dns_settings`](#obj-dns_settings)
  * [`fn new()`](#fn-dns_settingsnew)
  * [`obj dns_settings.custom_dns`](#obj-dns_settingscustom_dns)
    * [`fn new()`](#fn-dns_settingscustom_dnsnew)
    * [`obj dns_settings.custom_dns.ds_records`](#obj-dns_settingscustom_dnsds_records)
      * [`fn new()`](#fn-dns_settingscustom_dnsds_recordsnew)
  * [`obj dns_settings.glue_records`](#obj-dns_settingsglue_records)
    * [`fn new()`](#fn-dns_settingsglue_recordsnew)
* [`obj management_settings`](#obj-management_settings)
  * [`fn new()`](#fn-management_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj yearly_price`](#obj-yearly_price)
  * [`fn new()`](#fn-yearly_pricenew)

## Fields

### fn new

```ts
new()
```


`google.clouddomains_registration.new` injects a new `google_clouddomains_registration` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.clouddomains_registration.new('some_id')

You can get the reference to the `id` field of the created `google.clouddomains_registration` using the reference:

    $._ref.google_clouddomains_registration.some_id.get('id')

This is the same as directly entering `"${ google_clouddomains_registration.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `contact_notices` (`list`): The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT When `null`, the `contact_notices` field will be omitted from the resulting object.
  - `domain_name` (`string`): Required. The domain name. Unicode domain names must be expressed in Punycode format.
  - `domain_notices` (`list`): The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED When `null`, the `domain_notices` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of labels associated with the Registration.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `contact_settings` (`list[obj]`): Required. Settings for contact information linked to the Registration. When `null`, the `contact_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.new](#fn-contact_settingsnew) constructor.
  - `dns_settings` (`list[obj]`): Settings controlling the DNS configuration of the Registration. When `null`, the `dns_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.new](#fn-dns_settingsnew) constructor.
  - `management_settings` (`list[obj]`): Settings for management of the Registration, including renewal, billing, and transfer When `null`, the `management_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.management_settings.new](#fn-management_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.timeouts.new](#fn-timeoutsnew) constructor.
  - `yearly_price` (`list[obj]`): Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
registrations.retrieveRegisterParameters or registrations.searchDomains calls. When `null`, the `yearly_price` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.yearly_price.new](#fn-yearly_pricenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.clouddomains_registration.newAttrs` constructs a new object with attributes and blocks configured for the `clouddomains_registration`
Terraform resource.

Unlike [google.clouddomains_registration.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `contact_notices` (`list`): The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT When `null`, the `contact_notices` field will be omitted from the resulting object.
  - `domain_name` (`string`): Required. The domain name. Unicode domain names must be expressed in Punycode format.
  - `domain_notices` (`list`): The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED When `null`, the `domain_notices` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of labels associated with the Registration.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `contact_settings` (`list[obj]`): Required. Settings for contact information linked to the Registration. When `null`, the `contact_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.new](#fn-contact_settingsnew) constructor.
  - `dns_settings` (`list[obj]`): Settings controlling the DNS configuration of the Registration. When `null`, the `dns_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.new](#fn-dns_settingsnew) constructor.
  - `management_settings` (`list[obj]`): Settings for management of the Registration, including renewal, billing, and transfer When `null`, the `management_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.management_settings.new](#fn-management_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.timeouts.new](#fn-timeoutsnew) constructor.
  - `yearly_price` (`list[obj]`): Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
registrations.retrieveRegisterParameters or registrations.searchDomains calls. When `null`, the `yearly_price` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.yearly_price.new](#fn-yearly_pricenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddomains_registration` resource into the root Terraform configuration.


### fn withContactNotices

```ts
withContactNotices()
```

`google.list.withContactNotices` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the contact_notices field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `contact_notices` field.


### fn withContactSettings

```ts
withContactSettings()
```

`google.list[obj].withContactSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the contact_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withContactSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `contact_settings` field.


### fn withContactSettingsMixin

```ts
withContactSettingsMixin()
```

`google.list[obj].withContactSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the contact_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withContactSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `contact_settings` field.


### fn withDnsSettings

```ts
withDnsSettings()
```

`google.list[obj].withDnsSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dns_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDnsSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dns_settings` field.


### fn withDnsSettingsMixin

```ts
withDnsSettingsMixin()
```

`google.list[obj].withDnsSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dns_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDnsSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dns_settings` field.


### fn withDomainName

```ts
withDomainName()
```

`google.string.withDomainName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain_name` field.


### fn withDomainNotices

```ts
withDomainNotices()
```

`google.list.withDomainNotices` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the domain_notices field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `domain_notices` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withManagementSettings

```ts
withManagementSettings()
```

`google.list[obj].withManagementSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagementSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management_settings` field.


### fn withManagementSettingsMixin

```ts
withManagementSettingsMixin()
```

`google.list[obj].withManagementSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagementSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management_settings` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withYearlyPrice

```ts
withYearlyPrice()
```

`google.list[obj].withYearlyPrice` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the yearly_price field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withYearlyPriceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `yearly_price` field.


### fn withYearlyPriceMixin

```ts
withYearlyPriceMixin()
```

`google.list[obj].withYearlyPriceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the yearly_price field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withYearlyPrice](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `yearly_price` field.


## obj contact_settings



### fn contact_settings.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.new` constructs a new object with attributes and blocks configured for the `contact_settings`
Terraform sub block.



**Args**:
  - `privacy` (`string`): Required. Privacy setting for the contacts associated with the Registration.
Values are PUBLIC_CONTACT_DATA, PRIVATE_CONTACT_DATA, and REDACTED_CONTACT_DATA
  - `admin_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. When `null`, the `admin_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.admin_contact.new](#fn-contact_settingsadmin_contactnew) constructor.
  - `registrant_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. When `null`, the `registrant_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.registrant_contact.new](#fn-contact_settingsregistrant_contactnew) constructor.
  - `technical_contact` (`list[obj]`): Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. When `null`, the `technical_contact` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.technical_contact.new](#fn-contact_settingstechnical_contactnew) constructor.

**Returns**:
  - An attribute object that represents the `contact_settings` sub block.


## obj contact_settings.admin_contact



### fn contact_settings.admin_contact.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.admin_contact.new` constructs a new object with attributes and blocks configured for the `admin_contact`
Terraform sub block.



**Args**:
  - `email` (`string`): Required. Email address of the contact.
  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.
  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.
  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.admin_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.

**Returns**:
  - An attribute object that represents the `admin_contact` sub block.


## obj contact_settings.admin_contact.postal_address



### fn contact_settings.admin_contact.postal_address.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.admin_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`
Terraform sub block.



**Args**:
  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be
&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,
the most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.
  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.
  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.
  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.
  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.
  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.
  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.

**Returns**:
  - An attribute object that represents the `postal_address` sub block.


## obj contact_settings.registrant_contact



### fn contact_settings.registrant_contact.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.registrant_contact.new` constructs a new object with attributes and blocks configured for the `registrant_contact`
Terraform sub block.



**Args**:
  - `email` (`string`): Required. Email address of the contact.
  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.
  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.
  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.registrant_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.

**Returns**:
  - An attribute object that represents the `registrant_contact` sub block.


## obj contact_settings.registrant_contact.postal_address



### fn contact_settings.registrant_contact.postal_address.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.registrant_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`
Terraform sub block.



**Args**:
  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be
&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,
the most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.
  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.
  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.
  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.
  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.
  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.
  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.

**Returns**:
  - An attribute object that represents the `postal_address` sub block.


## obj contact_settings.technical_contact



### fn contact_settings.technical_contact.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.technical_contact.new` constructs a new object with attributes and blocks configured for the `technical_contact`
Terraform sub block.



**Args**:
  - `email` (`string`): Required. Email address of the contact.
  - `fax_number` (`string`): Fax number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;. When `null`, the `fax_number` field will be omitted from the resulting object.
  - `phone_number` (`string`): Required. Phone number of the contact in international format. For example, &#34;&#43;1-800-555-0123&#34;.
  - `postal_address` (`list[obj]`): Required. Postal address of the contact. When `null`, the `postal_address` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.contact_settings.technical_contact.postal_address.new](#fn-contact_settingscontact_settingspostal_addressnew) constructor.

**Returns**:
  - An attribute object that represents the `technical_contact` sub block.


## obj contact_settings.technical_contact.postal_address



### fn contact_settings.technical_contact.postal_address.new

```ts
new()
```


`google.clouddomains_registration.contact_settings.technical_contact.postal_address.new` constructs a new object with attributes and blocks configured for the `postal_address`
Terraform sub block.



**Args**:
  - `address_lines` (`list`): Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. &#34;Austin, TX&#34;), it is important that the line order is clear. The order of address lines should be
&#34;envelope order&#34; for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. &#34;ja&#34; for large-to-small ordering and &#34;ja-Latn&#34; or &#34;en&#34; for small-to-large). This way,
the most specific line of an address can be selected based on the language. When `null`, the `address_lines` field will be omitted from the resulting object.
  - `administrative_area` (`string`): Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. &#34;Barcelona&#34; and not &#34;Catalonia&#34;). Many countries don&#39;t use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. When `null`, the `administrative_area` field will be omitted from the resulting object.
  - `locality` (`string`): Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. When `null`, the `locality` field will be omitted from the resulting object.
  - `organization` (`string`): The name of the organization at the address. When `null`, the `organization` field will be omitted from the resulting object.
  - `postal_code` (`string`): Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). When `null`, the `postal_code` field will be omitted from the resulting object.
  - `recipients` (`list`): The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain &#34;care of&#34; information. When `null`, the `recipients` field will be omitted from the resulting object.
  - `region_code` (`string`): Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: &#34;CH&#34; for Switzerland.

**Returns**:
  - An attribute object that represents the `postal_address` sub block.


## obj dns_settings



### fn dns_settings.new

```ts
new()
```


`google.clouddomains_registration.dns_settings.new` constructs a new object with attributes and blocks configured for the `dns_settings`
Terraform sub block.



**Args**:
  - `custom_dns` (`list[obj]`): Configuration for an arbitrary DNS provider. When `null`, the `custom_dns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.custom_dns.new](#fn-dns_settingscustom_dnsnew) constructor.
  - `glue_records` (`list[obj]`): The list of glue records for this Registration. Commonly empty. When `null`, the `glue_records` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.glue_records.new](#fn-dns_settingsglue_recordsnew) constructor.

**Returns**:
  - An attribute object that represents the `dns_settings` sub block.


## obj dns_settings.custom_dns



### fn dns_settings.custom_dns.new

```ts
new()
```


`google.clouddomains_registration.dns_settings.custom_dns.new` constructs a new object with attributes and blocks configured for the `custom_dns`
Terraform sub block.



**Args**:
  - `name_servers` (`list`): Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain
name, with Unicode domain names expressed in Punycode format.
  - `ds_records` (`list[obj]`): The list of DS records for this domain, which are used to enable DNSSEC. The domain&#39;s DNS provider can provide
the values to set here. If this field is empty, DNSSEC is disabled. When `null`, the `ds_records` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddomains_registration.dns_settings.custom_dns.ds_records.new](#fn-dns_settingsdns_settingsds_recordsnew) constructor.

**Returns**:
  - An attribute object that represents the `custom_dns` sub block.


## obj dns_settings.custom_dns.ds_records



### fn dns_settings.custom_dns.ds_records.new

```ts
new()
```


`google.clouddomains_registration.dns_settings.custom_dns.ds_records.new` constructs a new object with attributes and blocks configured for the `ds_records`
Terraform sub block.



**Args**:
  - `algorithm` (`string`): The algorithm used to generate the referenced DNSKEY. When `null`, the `algorithm` field will be omitted from the resulting object.
  - `digest` (`string`): The digest generated from the referenced DNSKEY. When `null`, the `digest` field will be omitted from the resulting object.
  - `digest_type` (`string`): The hash function used to generate the digest of the referenced DNSKEY. When `null`, the `digest_type` field will be omitted from the resulting object.
  - `key_tag` (`number`): The key tag of the record. Must be set in range 0 -- 65535. When `null`, the `key_tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ds_records` sub block.


## obj dns_settings.glue_records



### fn dns_settings.glue_records.new

```ts
new()
```


`google.clouddomains_registration.dns_settings.glue_records.new` constructs a new object with attributes and blocks configured for the `glue_records`
Terraform sub block.



**Args**:
  - `host_name` (`string`): Required. Domain name of the host in Punycode format.
  - `ipv4_addresses` (`list`): List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
At least one of ipv4_address and ipv6_address must be set. When `null`, the `ipv4_addresses` field will be omitted from the resulting object.
  - `ipv6_addresses` (`list`): List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
At least one of ipv4_address and ipv6_address must be set. When `null`, the `ipv6_addresses` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `glue_records` sub block.


## obj management_settings



### fn management_settings.new

```ts
new()
```


`google.clouddomains_registration.management_settings.new` constructs a new object with attributes and blocks configured for the `management_settings`
Terraform sub block.



**Args**:
  - `preferred_renewal_method` (`string`): The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.
If unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual renewalMethod is treated as if it were set to AUTOMATIC_RENEWAL.
You cannot use RENEWAL_DISABLED during resource creation, and you can update the renewal status only when the Registration
resource has state ACTIVE or SUSPENDED.

When preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the actual renewalMethod can be set to RENEWAL_DISABLED in case of
problems with the billing account or reported domain abuse. In such cases, check the issues field on the Registration. After
the problem is resolved, the renewalMethod is automatically updated to preferredRenewalMethod in a few hours. When `null`, the `preferred_renewal_method` field will be omitted from the resulting object.
  - `transfer_lock_state` (`string`): Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED. When `null`, the `transfer_lock_state` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.clouddomains_registration.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj yearly_price



### fn yearly_price.new

```ts
new()
```


`google.clouddomains_registration.yearly_price.new` constructs a new object with attributes and blocks configured for the `yearly_price`
Terraform sub block.



**Args**:
  - `currency_code` (`string`): The three-letter currency code defined in ISO 4217. When `null`, the `currency_code` field will be omitted from the resulting object.
  - `units` (`string`): The whole units of the amount. For example if currencyCode is &#34;USD&#34;, then 1 unit is one US dollar. When `null`, the `units` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `yearly_price` sub block.
