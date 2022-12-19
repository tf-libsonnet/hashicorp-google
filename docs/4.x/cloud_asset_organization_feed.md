---
permalink: /cloud_asset_organization_feed/
---

# cloud_asset_organization_feed

`cloud_asset_organization_feed` represents the `google_cloud_asset_organization_feed` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAssetNames()`](#fn-withassetnames)
* [`fn withAssetTypes()`](#fn-withassettypes)
* [`fn withBillingProject()`](#fn-withbillingproject)
* [`fn withCondition()`](#fn-withcondition)
* [`fn withConditionMixin()`](#fn-withconditionmixin)
* [`fn withContentType()`](#fn-withcontenttype)
* [`fn withFeedId()`](#fn-withfeedid)
* [`fn withFeedOutputConfig()`](#fn-withfeedoutputconfig)
* [`fn withFeedOutputConfigMixin()`](#fn-withfeedoutputconfigmixin)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj condition`](#obj-condition)
  * [`fn new()`](#fn-conditionnew)
* [`obj feed_output_config`](#obj-feed_output_config)
  * [`fn new()`](#fn-feed_output_confignew)
  * [`obj feed_output_config.pubsub_destination`](#obj-feed_output_configpubsub_destination)
    * [`fn new()`](#fn-feed_output_configpubsub_destinationnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_asset_organization_feed.new` injects a new `google_cloud_asset_organization_feed` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_asset_organization_feed.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_asset_organization_feed` using the reference:

    $._ref.google_cloud_asset_organization_feed.some_id.get('id')

This is the same as directly entering `"${ google_cloud_asset_organization_feed.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `asset_names` (`list`): A list of the full names of the assets to receive updates. You must specify either or both of 
assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info. When `null`, the `asset_names` field will be omitted from the resulting object.
  - `asset_types` (`list`): A list of types of the assets to receive updates. You must specify either or both of assetNames
and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
the feed. For example: &#34;compute.googleapis.com/Disk&#34;
See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
supported asset types. When `null`, the `asset_types` field will be omitted from the resulting object.
  - `billing_project` (`string`): The project whose identity will be used when sending messages to the
destination pubsub topic. It also specifies the project for API 
enablement check, quota, and billing.
  - `content_type` (`string`): Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [&#34;CONTENT_TYPE_UNSPECIFIED&#34;, &#34;RESOURCE&#34;, &#34;IAM_POLICY&#34;, &#34;ORG_POLICY&#34;, &#34;ACCESS_POLICY&#34;] When `null`, the `content_type` field will be omitted from the resulting object.
  - `feed_id` (`string`): This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  - `org_id` (`string`): The organization this feed should be created in.
  - `condition` (`list[obj]`): A condition which determines whether an asset update should be published. If specified, an asset
will be returned only when the expression evaluates to true. When set, expression field
must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
expression &#34;temporal_asset.deleted == true&#34; will only publish Asset deletions. Other fields of
condition are optional. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.condition.new](#fn-cloudassetorganizationfeedconditionnew) constructor.
  - `feed_output_config` (`list[obj]`): Output configuration for asset feed destination. When `null`, the `feed_output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.feed_output_config.new](#fn-cloudassetorganizationfeedfeedoutputconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.timeouts.new](#fn-cloudassetorganizationfeedtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_asset_organization_feed.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_asset_organization_feed`
Terraform resource.

Unlike [google.cloud_asset_organization_feed.new](#fn-cloudassetorganizationfeednew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `asset_names` (`list`): A list of the full names of the assets to receive updates. You must specify either or both of 
assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info. When `null`, the `asset_names` field will be omitted from the resulting object.
  - `asset_types` (`list`): A list of types of the assets to receive updates. You must specify either or both of assetNames
and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
the feed. For example: &#34;compute.googleapis.com/Disk&#34;
See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
supported asset types. When `null`, the `asset_types` field will be omitted from the resulting object.
  - `billing_project` (`string`): The project whose identity will be used when sending messages to the
destination pubsub topic. It also specifies the project for API 
enablement check, quota, and billing.
  - `content_type` (`string`): Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [&#34;CONTENT_TYPE_UNSPECIFIED&#34;, &#34;RESOURCE&#34;, &#34;IAM_POLICY&#34;, &#34;ORG_POLICY&#34;, &#34;ACCESS_POLICY&#34;] When `null`, the `content_type` field will be omitted from the resulting object.
  - `feed_id` (`string`): This is the client-assigned asset feed identifier and it needs to be unique under a specific parent.
  - `org_id` (`string`): The organization this feed should be created in.
  - `condition` (`list[obj]`): A condition which determines whether an asset update should be published. If specified, an asset
will be returned only when the expression evaluates to true. When set, expression field
must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
expression &#34;temporal_asset.deleted == true&#34; will only publish Asset deletions. Other fields of
condition are optional. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.condition.new](#fn-cloudassetorganizationfeedconditionnew) constructor.
  - `feed_output_config` (`list[obj]`): Output configuration for asset feed destination. When `null`, the `feed_output_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.feed_output_config.new](#fn-cloudassetorganizationfeedfeedoutputconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.timeouts.new](#fn-cloudassetorganizationfeedtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_asset_organization_feed` resource into the root Terraform configuration.


### fn withAssetNames

```ts
withAssetNames()
```

`google.list.withAssetNames` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the asset_names field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `asset_names` field.


### fn withAssetTypes

```ts
withAssetTypes()
```

`google.list.withAssetTypes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the asset_types field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `asset_types` field.


### fn withBillingProject

```ts
withBillingProject()
```

`google.string.withBillingProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the billing_project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_project` field.


### fn withCondition

```ts
withCondition()
```

`google.list[obj].withCondition` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the condition field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConditionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `condition` field.


### fn withConditionMixin

```ts
withConditionMixin()
```

`google.list[obj].withConditionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the condition field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCondition](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `condition` field.


### fn withContentType

```ts
withContentType()
```

`google.string.withContentType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the content_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `content_type` field.


### fn withFeedId

```ts
withFeedId()
```

`google.string.withFeedId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the feed_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `feed_id` field.


### fn withFeedOutputConfig

```ts
withFeedOutputConfig()
```

`google.list[obj].withFeedOutputConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the feed_output_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFeedOutputConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `feed_output_config` field.


### fn withFeedOutputConfigMixin

```ts
withFeedOutputConfigMixin()
```

`google.list[obj].withFeedOutputConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the feed_output_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFeedOutputConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `feed_output_config` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


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


## obj condition



### fn condition.new

```ts
new()
```


`google.cloud_asset_organization_feed.condition.new` constructs a new object with attributes and blocks configured for the `condition`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression. This is a longer text which describes the expression,
e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file 
name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose.
This can be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `condition` sub block.


## obj feed_output_config



### fn feed_output_config.new

```ts
new()
```


`google.cloud_asset_organization_feed.feed_output_config.new` constructs a new object with attributes and blocks configured for the `feed_output_config`
Terraform sub block.



**Args**:
  - `pubsub_destination` (`list[obj]`): Destination on Cloud Pubsub. When `null`, the `pubsub_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_asset_organization_feed.feed_output_config.pubsub_destination.new](#fn-feedoutputconfigpubsubdestinationnew) constructor.

**Returns**:
  - An attribute object that represents the `feed_output_config` sub block.


## obj feed_output_config.pubsub_destination



### fn feed_output_config.pubsub_destination.new

```ts
new()
```


`google.cloud_asset_organization_feed.feed_output_config.pubsub_destination.new` constructs a new object with attributes and blocks configured for the `pubsub_destination`
Terraform sub block.



**Args**:
  - `topic` (`string`): Destination on Cloud Pubsub topic.

**Returns**:
  - An attribute object that represents the `pubsub_destination` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloud_asset_organization_feed.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
