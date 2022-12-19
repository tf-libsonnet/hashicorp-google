---
permalink: /bigquery_analytics_hub_listing/
---

# bigquery_analytics_hub_listing

`bigquery_analytics_hub_listing` represents the `google_bigquery_analytics_hub_listing` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBigqueryDataset()`](#fn-withbigquerydataset)
* [`fn withBigqueryDatasetMixin()`](#fn-withbigquerydatasetmixin)
* [`fn withCategories()`](#fn-withcategories)
* [`fn withDataExchangeId()`](#fn-withdataexchangeid)
* [`fn withDataProvider()`](#fn-withdataprovider)
* [`fn withDataProviderMixin()`](#fn-withdataprovidermixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withDocumentation()`](#fn-withdocumentation)
* [`fn withIcon()`](#fn-withicon)
* [`fn withListingId()`](#fn-withlistingid)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPrimaryContact()`](#fn-withprimarycontact)
* [`fn withProject()`](#fn-withproject)
* [`fn withPublisher()`](#fn-withpublisher)
* [`fn withPublisherMixin()`](#fn-withpublishermixin)
* [`fn withRequestAccess()`](#fn-withrequestaccess)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj bigquery_dataset`](#obj-bigquery_dataset)
  * [`fn new()`](#fn-bigquery_datasetnew)
* [`obj data_provider`](#obj-data_provider)
  * [`fn new()`](#fn-data_providernew)
* [`obj publisher`](#obj-publisher)
  * [`fn new()`](#fn-publishernew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_analytics_hub_listing.new` injects a new `google_bigquery_analytics_hub_listing` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_analytics_hub_listing.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_analytics_hub_listing` using the reference:

    $._ref.google_bigquery_analytics_hub_listing.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_analytics_hub_listing.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `categories` (`list`): Categories of the listing. Up to two categories are allowed. When `null`, the `categories` field will be omitted from the resulting object.
  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `description` (`string`): Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&amp;) and can&#39;t start or end with spaces.
  - `documentation` (`string`): Documentation describing the listing. When `null`, the `documentation` field will be omitted from the resulting object.
  - `icon` (`string`): Base64 encoded image representing the listing. When `null`, the `icon` field will be omitted from the resulting object.
  - `listing_id` (`string`): The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `location` (`string`): The name of the location this data exchange listing.
  - `primary_contact` (`string`): Email or URL of the primary point of contact of the listing. When `null`, the `primary_contact` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `request_access` (`string`): Email or URL of the request access of the listing. Subscribers can use this reference to request access. When `null`, the `request_access` field will be omitted from the resulting object.
  - `bigquery_dataset` (`list[obj]`): Shared dataset i.e. BigQuery dataset source. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.bigquery_dataset.new](#fn-bigqueryanalyticshublistingbigquerydatasetnew) constructor.
  - `data_provider` (`list[obj]`): Details of the data provider who owns the source data. When `null`, the `data_provider` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.data_provider.new](#fn-bigqueryanalyticshublistingdataprovidernew) constructor.
  - `publisher` (`list[obj]`): Details of the publisher who owns the listing and who can share the source data. When `null`, the `publisher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.publisher.new](#fn-bigqueryanalyticshublistingpublishernew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.timeouts.new](#fn-bigqueryanalyticshublistingtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_analytics_hub_listing.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_analytics_hub_listing`
Terraform resource.

Unlike [google.bigquery_analytics_hub_listing.new](#fn-bigqueryanalyticshublistingnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `categories` (`list`): Categories of the listing. Up to two categories are allowed. When `null`, the `categories` field will be omitted from the resulting object.
  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `description` (`string`): Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&amp;) and can&#39;t start or end with spaces.
  - `documentation` (`string`): Documentation describing the listing. When `null`, the `documentation` field will be omitted from the resulting object.
  - `icon` (`string`): Base64 encoded image representing the listing. When `null`, the `icon` field will be omitted from the resulting object.
  - `listing_id` (`string`): The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `location` (`string`): The name of the location this data exchange listing.
  - `primary_contact` (`string`): Email or URL of the primary point of contact of the listing. When `null`, the `primary_contact` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `request_access` (`string`): Email or URL of the request access of the listing. Subscribers can use this reference to request access. When `null`, the `request_access` field will be omitted from the resulting object.
  - `bigquery_dataset` (`list[obj]`): Shared dataset i.e. BigQuery dataset source. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.bigquery_dataset.new](#fn-bigqueryanalyticshublistingbigquerydatasetnew) constructor.
  - `data_provider` (`list[obj]`): Details of the data provider who owns the source data. When `null`, the `data_provider` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.data_provider.new](#fn-bigqueryanalyticshublistingdataprovidernew) constructor.
  - `publisher` (`list[obj]`): Details of the publisher who owns the listing and who can share the source data. When `null`, the `publisher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.publisher.new](#fn-bigqueryanalyticshublistingpublishernew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.timeouts.new](#fn-bigqueryanalyticshublistingtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_analytics_hub_listing` resource into the root Terraform configuration.


### fn withBigqueryDataset

```ts
withBigqueryDataset()
```

`google.bigquery_analytics_hub_listing.withBigqueryDataset` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the bigquery_dataset field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bigquery_dataset` field.


### fn withBigqueryDatasetMixin

```ts
withBigqueryDatasetMixin()
```

`google.bigquery_analytics_hub_listing.withBigqueryDatasetMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the bigquery_dataset field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withBigqueryDataset](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `bigquery_dataset` field.


### fn withCategories

```ts
withCategories()
```

`google.bigquery_analytics_hub_listing.withCategories` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the categories field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `categories` field.


### fn withDataExchangeId

```ts
withDataExchangeId()
```

`google.bigquery_analytics_hub_listing.withDataExchangeId` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the data_exchange_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `data_exchange_id` field.


### fn withDataProvider

```ts
withDataProvider()
```

`google.bigquery_analytics_hub_listing.withDataProvider` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the data_provider field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `data_provider` field.


### fn withDataProviderMixin

```ts
withDataProviderMixin()
```

`google.bigquery_analytics_hub_listing.withDataProviderMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the data_provider field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withDataProvider](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `data_provider` field.


### fn withDescription

```ts
withDescription()
```

`google.bigquery_analytics_hub_listing.withDescription` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.bigquery_analytics_hub_listing.withDisplayName` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withDocumentation

```ts
withDocumentation()
```

`google.bigquery_analytics_hub_listing.withDocumentation` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the documentation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `documentation` field.


### fn withIcon

```ts
withIcon()
```

`google.bigquery_analytics_hub_listing.withIcon` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the icon field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `icon` field.


### fn withListingId

```ts
withListingId()
```

`google.bigquery_analytics_hub_listing.withListingId` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the listing_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `listing_id` field.


### fn withLocation

```ts
withLocation()
```

`google.bigquery_analytics_hub_listing.withLocation` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withPrimaryContact

```ts
withPrimaryContact()
```

`google.bigquery_analytics_hub_listing.withPrimaryContact` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the primary_contact field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `primary_contact` field.


### fn withProject

```ts
withProject()
```

`google.bigquery_analytics_hub_listing.withProject` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withPublisher

```ts
withPublisher()
```

`google.bigquery_analytics_hub_listing.withPublisher` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the publisher field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `publisher` field.


### fn withPublisherMixin

```ts
withPublisherMixin()
```

`google.bigquery_analytics_hub_listing.withPublisherMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the publisher field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withPublisher](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `publisher` field.


### fn withRequestAccess

```ts
withRequestAccess()
```

`google.bigquery_analytics_hub_listing.withRequestAccess` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the request_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `request_access` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.bigquery_analytics_hub_listing.withTimeouts` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.bigquery_analytics_hub_listing.withTimeoutsMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj bigquery_dataset



### fn bigquery_dataset.new

```ts
new()
```


`google.bigquery_analytics_hub_listing.bigquery_dataset.new` constructs a new object with attributes and blocks configured for the `bigquery_dataset`
Terraform sub block.



**Args**:
  - `dataset` (`string`): Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123

**Returns**:
  - An attribute object that represents the `bigquery_dataset` sub block.


## obj data_provider



### fn data_provider.new

```ts
new()
```


`google.bigquery_analytics_hub_listing.data_provider.new` constructs a new object with attributes and blocks configured for the `data_provider`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the data provider.
  - `primary_contact` (`string`): Email or URL of the data provider. When `null`, the `primary_contact` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `data_provider` sub block.


## obj publisher



### fn publisher.new

```ts
new()
```


`google.bigquery_analytics_hub_listing.publisher.new` constructs a new object with attributes and blocks configured for the `publisher`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the listing publisher.
  - `primary_contact` (`string`): Email or URL of the listing publisher. When `null`, the `primary_contact` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `publisher` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_analytics_hub_listing.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
