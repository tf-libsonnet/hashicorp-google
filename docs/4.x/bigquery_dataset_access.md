---
permalink: /bigquery_dataset_access/
---

# bigquery_dataset_access

`bigquery_dataset_access` represents the `google_bigquery_dataset_access` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataset()`](#fn-withdataset)
* [`fn withDatasetId()`](#fn-withdatasetid)
* [`fn withDatasetMixin()`](#fn-withdatasetmixin)
* [`fn withDomain()`](#fn-withdomain)
* [`fn withGroupByEmail()`](#fn-withgroupbyemail)
* [`fn withIamMember()`](#fn-withiammember)
* [`fn withProject()`](#fn-withproject)
* [`fn withRole()`](#fn-withrole)
* [`fn withRoutine()`](#fn-withroutine)
* [`fn withRoutineMixin()`](#fn-withroutinemixin)
* [`fn withSpecialGroup()`](#fn-withspecialgroup)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserByEmail()`](#fn-withuserbyemail)
* [`fn withView()`](#fn-withview)
* [`fn withViewMixin()`](#fn-withviewmixin)
* [`obj dataset`](#obj-dataset)
  * [`fn new()`](#fn-datasetnew)
  * [`obj dataset.dataset`](#obj-datasetdataset)
    * [`fn new()`](#fn-datasetdatasetnew)
* [`obj routine`](#obj-routine)
  * [`fn new()`](#fn-routinenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj view`](#obj-view)
  * [`fn new()`](#fn-viewnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_dataset_access.new` injects a new `google_bigquery_dataset_access` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_dataset_access.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_dataset_access` using the reference:

    $._ref.google_bigquery_dataset_access.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_dataset_access.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters.
  - `domain` (`string`): A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.
  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.
  - `iam_member` (`string`): Some other type of member that appears in the IAM Policy but isn&#39;t a user,
group, domain, or special group. For example: &#39;allUsers&#39; When `null`, the `iam_member` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `role` (`string`): Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles are
supported. Predefined roles that have equivalent basic roles are
swapped by the API to their basic counterparts, and will show a diff
post-create. See
[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.
  - `special_group` (`string`): A special group to grant access to. Possible values include:


* &#39;projectOwners&#39;: Owners of the enclosing project.


* &#39;projectReaders&#39;: Readers of the enclosing project.


* &#39;projectWriters&#39;: Writers of the enclosing project.


* &#39;allAuthenticatedUsers&#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.
  - `user_by_email` (`string`): An email address of a user to grant access to. For example:
fred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.
  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.new](#fn-datasetnew) constructor.
  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries
executed against that routine will have read access to tables in
this dataset. The role field is not required when this field is
set. If that routine is updated by any user, access to the routine
needs to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.routine.new](#fn-routinenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.timeouts.new](#fn-timeoutsnew) constructor.
  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries
executed against that view will have read access to tables in
this dataset. The role field is not required when this field is
set. If that view is updated by any user, access to the view
needs to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.view.new](#fn-viewnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_dataset_access.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_dataset_access`
Terraform resource.

Unlike [google.bigquery_dataset_access.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID
must contain only letters (a-z, A-Z), numbers (0-9), or
underscores (_). The maximum length is 1,024 characters.
  - `domain` (`string`): A domain to grant access to. Any users signed in with the
domain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.
  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.
  - `iam_member` (`string`): Some other type of member that appears in the IAM Policy but isn&#39;t a user,
group, domain, or special group. For example: &#39;allUsers&#39; When `null`, the `iam_member` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `role` (`string`): Describes the rights granted to the user specified by the other
member of the access object. Basic, predefined, and custom roles are
supported. Predefined roles that have equivalent basic roles are
swapped by the API to their basic counterparts, and will show a diff
post-create. See
[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.
  - `special_group` (`string`): A special group to grant access to. Possible values include:


* &#39;projectOwners&#39;: Owners of the enclosing project.


* &#39;projectReaders&#39;: Readers of the enclosing project.


* &#39;projectWriters&#39;: Writers of the enclosing project.


* &#39;allAuthenticatedUsers&#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.
  - `user_by_email` (`string`): An email address of a user to grant access to. For example:
fred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.
  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.new](#fn-datasetnew) constructor.
  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries
executed against that routine will have read access to tables in
this dataset. The role field is not required when this field is
set. If that routine is updated by any user, access to the routine
needs to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.routine.new](#fn-routinenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.timeouts.new](#fn-timeoutsnew) constructor.
  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries
executed against that view will have read access to tables in
this dataset. The role field is not required when this field is
set. If that view is updated by any user, access to the view
needs to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.view.new](#fn-viewnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_dataset_access` resource into the root Terraform configuration.


### fn withDataset

```ts
withDataset()
```

`google.list[obj].withDataset` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dataset field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDatasetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dataset` field.


### fn withDatasetId

```ts
withDatasetId()
```

`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the dataset_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `dataset_id` field.


### fn withDatasetMixin

```ts
withDatasetMixin()
```

`google.list[obj].withDatasetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the dataset field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDataset](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `dataset` field.


### fn withDomain

```ts
withDomain()
```

`google.string.withDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain` field.


### fn withGroupByEmail

```ts
withGroupByEmail()
```

`google.string.withGroupByEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the group_by_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `group_by_email` field.


### fn withIamMember

```ts
withIamMember()
```

`google.string.withIamMember` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the iam_member field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `iam_member` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRole

```ts
withRole()
```

`google.string.withRole` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role` field.


### fn withRoutine

```ts
withRoutine()
```

`google.list[obj].withRoutine` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routine field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRoutineMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routine` field.


### fn withRoutineMixin

```ts
withRoutineMixin()
```

`google.list[obj].withRoutineMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the routine field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRoutine](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `routine` field.


### fn withSpecialGroup

```ts
withSpecialGroup()
```

`google.string.withSpecialGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the special_group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `special_group` field.


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


### fn withUserByEmail

```ts
withUserByEmail()
```

`google.string.withUserByEmail` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user_by_email field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user_by_email` field.


### fn withView

```ts
withView()
```

`google.list[obj].withView` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the view field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withViewMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `view` field.


### fn withViewMixin

```ts
withViewMixin()
```

`google.list[obj].withViewMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the view field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withView](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `view` field.


## obj dataset



### fn dataset.new

```ts
new()
```


`google.bigquery_dataset_access.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`
Terraform sub block.



**Args**:
  - `target_types` (`list`): Which resources in the dataset this entry applies to. Currently, only views are supported,
but additional target types may be added in the future. Possible values: VIEWS
  - `dataset` (`list[obj]`): The dataset this entry applies to When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset_access.dataset.dataset.new](#fn-bigquery_dataset_accessdatasetnew) constructor.

**Returns**:
  - An attribute object that represents the `dataset` sub block.


## obj dataset.dataset



### fn dataset.dataset.new

```ts
new()
```


`google.bigquery_dataset_access.dataset.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.

**Returns**:
  - An attribute object that represents the `dataset` sub block.


## obj routine



### fn routine.new

```ts
new()
```


`google.bigquery_dataset_access.routine.new` constructs a new object with attributes and blocks configured for the `routine`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.
  - `routine_id` (`string`): The ID of the routine. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 256 characters.

**Returns**:
  - An attribute object that represents the `routine` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_dataset_access.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj view



### fn view.new

```ts
new()
```


`google.bigquery_dataset_access.view.new` constructs a new object with attributes and blocks configured for the `view`
Terraform sub block.



**Args**:
  - `dataset_id` (`string`): The ID of the dataset containing this table.
  - `project_id` (`string`): The ID of the project containing this table.
  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,
A-Z), numbers (0-9), or underscores (_). The maximum length
is 1,024 characters.

**Returns**:
  - An attribute object that represents the `view` sub block.
