---
permalink: /data/compute_addresses/
---

# data.compute_addresses

`compute_addresses` represents the `google_compute_addresses` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withFilter()`](#fn-withfilter)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)

## Fields

### fn new

```ts
new()
```


`google.data.compute_addresses.new` injects a new `data_google_compute_addresses` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.compute_addresses.new('some_id')

You can get the reference to the `id` field of the created `google.data.compute_addresses` using the reference:

    $._ref.data_google_compute_addresses.some_id.get('id')

This is the same as directly entering `"${ data_google_compute_addresses.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `filter` (`string`): Filter sets the optional parameter &#34;filter&#34;: A filter expression that
filters resources listed in the response. The expression must specify
the field name, an operator, and the value that you want to use for
filtering. The value must be a string, a number, or a boolean. The
operator must be either &#34;=&#34;, &#34;!=&#34;, &#34;&gt;&#34;, &#34;&lt;&#34;, &#34;&lt;=&#34;, &#34;&gt;=&#34; or &#34;:&#34;. For
example, if you are filtering Compute Engine instances, you can
exclude instances named &#34;example-instance&#34; by specifying &#34;name !=
example-instance&#34;. The &#34;:&#34; operator can be used with string fields to
match substrings. For non-string fields it is equivalent to the &#34;=&#34;
operator. The &#34;:*&#34; comparison can be used to test whether a key has
been defined. For example, to find all objects with &#34;owner&#34; label
use: &#34;&#34;&#34; labels.owner:* &#34;&#34;&#34; You can also filter nested fields. For
example, you could specify &#34;scheduling.automaticRestart = false&#34; to
include instances only if they are not scheduled for automatic
restarts. You can use filtering on nested fields to filter based on
resource labels. To filter on multiple expressions, provide each
separate expression within parentheses. For example: &#34;&#34;&#34;
(scheduling.automaticRestart = true) (cpuPlatform = &#34;Intel Skylake&#34;)
&#34;&#34;&#34; By default, each expression is an &#34;AND&#34; expression. However, you
can include &#34;AND&#34; and &#34;OR&#34; expressions explicitly. For example: &#34;&#34;&#34;
(cpuPlatform = &#34;Intel Skylake&#34;) OR (cpuPlatform = &#34;Intel Broadwell&#34;)
AND (scheduling.automaticRestart = true) &#34;&#34;&#34; When `null`, the `filter` field will be omitted from the resulting object.
  - `project` (`string`): The google project in which addresses are listed. Defaults to provider&#39;s configuration if missing. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region that should be considered to search addresses. All regions are considered if missing. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.compute_addresses.newAttrs` constructs a new object with attributes and blocks configured for the `compute_addresses`
Terraform data source.

Unlike [google.data.compute_addresses.new](#fn-computeaddressesnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `filter` (`string`): Filter sets the optional parameter &#34;filter&#34;: A filter expression that
filters resources listed in the response. The expression must specify
the field name, an operator, and the value that you want to use for
filtering. The value must be a string, a number, or a boolean. The
operator must be either &#34;=&#34;, &#34;!=&#34;, &#34;&gt;&#34;, &#34;&lt;&#34;, &#34;&lt;=&#34;, &#34;&gt;=&#34; or &#34;:&#34;. For
example, if you are filtering Compute Engine instances, you can
exclude instances named &#34;example-instance&#34; by specifying &#34;name !=
example-instance&#34;. The &#34;:&#34; operator can be used with string fields to
match substrings. For non-string fields it is equivalent to the &#34;=&#34;
operator. The &#34;:*&#34; comparison can be used to test whether a key has
been defined. For example, to find all objects with &#34;owner&#34; label
use: &#34;&#34;&#34; labels.owner:* &#34;&#34;&#34; You can also filter nested fields. For
example, you could specify &#34;scheduling.automaticRestart = false&#34; to
include instances only if they are not scheduled for automatic
restarts. You can use filtering on nested fields to filter based on
resource labels. To filter on multiple expressions, provide each
separate expression within parentheses. For example: &#34;&#34;&#34;
(scheduling.automaticRestart = true) (cpuPlatform = &#34;Intel Skylake&#34;)
&#34;&#34;&#34; By default, each expression is an &#34;AND&#34; expression. However, you
can include &#34;AND&#34; and &#34;OR&#34; expressions explicitly. For example: &#34;&#34;&#34;
(cpuPlatform = &#34;Intel Skylake&#34;) OR (cpuPlatform = &#34;Intel Broadwell&#34;)
AND (scheduling.automaticRestart = true) &#34;&#34;&#34; When `null`, the `filter` field will be omitted from the resulting object.
  - `project` (`string`): The google project in which addresses are listed. Defaults to provider&#39;s configuration if missing. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region that should be considered to search addresses. All regions are considered if missing. When `null`, the `region` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `compute_addresses` data source into the root Terraform configuration.


### fn withFilter

```ts
withFilter()
```

`google.string.withFilter` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the filter field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `filter` field.


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
