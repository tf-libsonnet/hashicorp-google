---
permalink: /data/dataproc_cluster_iam_policy/
---

# data.dataproc_cluster_iam_policy

`dataproc_cluster_iam_policy` represents the `google_dataproc_cluster_iam_policy` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)

## Fields

### fn new

```ts
new()
```


`google.data.dataproc_cluster_iam_policy.new` injects a new `data_google_dataproc_cluster_iam_policy` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.dataproc_cluster_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google.data.dataproc_cluster_iam_policy` using the reference:

    $._ref.data_google_dataproc_cluster_iam_policy.some_id.get('id')

This is the same as directly entering `"${ data_google_dataproc_cluster_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `cluster` (`string`): Set the `cluster` field on the resulting data source block.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Set the `region` field on the resulting data source block. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.dataproc_cluster_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_cluster_iam_policy`
Terraform data source.

Unlike [google.data.dataproc_cluster_iam_policy.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): Set the `cluster` field on the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Set the `region` field on the resulting object. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dataproc_cluster_iam_policy` data source into the root Terraform configuration.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the cluster field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the region field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.
