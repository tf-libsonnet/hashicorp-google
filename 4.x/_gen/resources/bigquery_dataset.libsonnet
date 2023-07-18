local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_dataset', url='', help='`bigquery_dataset` represents the `google_bigquery_dataset` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  access:: {
    dataset:: {
      dataset:: {
        '#new':: d.fn(help='\n`google.bigquery_dataset.access.dataset.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n\n**Returns**:\n  - An attribute object that represents the `dataset` sub block.\n', args=[]),
        new(
          dataset_id,
          project_id
        ):: std.prune(a={
          dataset_id: dataset_id,
          project_id: project_id,
        }),
      },
      '#new':: d.fn(help='\n`google.bigquery_dataset.access.dataset.new` constructs a new object with attributes and blocks configured for the `dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target_types` (`list`): Which resources in the dataset this entry applies to. Currently, only views are supported,\nbut additional target types may be added in the future. Possible values: VIEWS\n  - `dataset` (`list[obj]`): The dataset this entry applies to When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.dataset.dataset.new](#fn-accessaccessdatasetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dataset` sub block.\n', args=[]),
      new(
        target_types,
        dataset=null
      ):: std.prune(a={
        dataset: dataset,
        target_types: target_types,
      }),
    },
    '#new':: d.fn(help='\n`google.bigquery_dataset.access.new` constructs a new object with attributes and blocks configured for the `access`\nTerraform sub block.\n\n\n\n**Args**:\n  - `domain` (`string`): A domain to grant access to. Any users signed in with the\ndomain specified will be granted the specified access When `null`, the `domain` field will be omitted from the resulting object.\n  - `group_by_email` (`string`): An email address of a Google Group to grant access to. When `null`, the `group_by_email` field will be omitted from the resulting object.\n  - `role` (`string`): Describes the rights granted to the user specified by the other\nmember of the access object. Basic, predefined, and custom roles\nare supported. Predefined roles that have equivalent basic roles\nare swapped by the API to their basic counterparts. See\n[official docs](https://cloud.google.com/bigquery/docs/access-control). When `null`, the `role` field will be omitted from the resulting object.\n  - `special_group` (`string`): A special group to grant access to. Possible values include:\n\n\n* &#39;projectOwners&#39;: Owners of the enclosing project.\n\n\n* &#39;projectReaders&#39;: Readers of the enclosing project.\n\n\n* &#39;projectWriters&#39;: Writers of the enclosing project.\n\n\n* &#39;allAuthenticatedUsers&#39;: All authenticated BigQuery users. When `null`, the `special_group` field will be omitted from the resulting object.\n  - `user_by_email` (`string`): An email address of a user to grant access to. For example:\nfred@example.com When `null`, the `user_by_email` field will be omitted from the resulting object.\n  - `dataset` (`list[obj]`): Grants all resources of particular types in a particular dataset read access to the current dataset. When `null`, the `dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.dataset.new](#fn-accessdatasetnew) constructor.\n  - `routine` (`list[obj]`): A routine from a different dataset to grant access to. Queries\nexecuted against that routine will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that routine is updated by any user, access to the routine\nneeds to be granted again via an update operation. When `null`, the `routine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.routine.new](#fn-accessroutinenew) constructor.\n  - `view` (`list[obj]`): A view from a different dataset to grant access to. Queries\nexecuted against that view will have read access to tables in\nthis dataset. The role field is not required when this field is\nset. If that view is updated by any user, access to the view\nneeds to be granted again via an update operation. When `null`, the `view` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.view.new](#fn-accessviewnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `access` sub block.\n', args=[]),
    new(
      dataset=null,
      domain=null,
      group_by_email=null,
      role=null,
      routine=null,
      special_group=null,
      user_by_email=null,
      view=null
    ):: std.prune(a={
      dataset: dataset,
      domain: domain,
      group_by_email: group_by_email,
      role: role,
      routine: routine,
      special_group: special_group,
      user_by_email: user_by_email,
      view: view,
    }),
    routine:: {
      '#new':: d.fn(help='\n`google.bigquery_dataset.access.routine.new` constructs a new object with attributes and blocks configured for the `routine`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `routine_id` (`string`): The ID of the routine. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 256 characters.\n\n**Returns**:\n  - An attribute object that represents the `routine` sub block.\n', args=[]),
      new(
        dataset_id,
        project_id,
        routine_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        routine_id: routine_id,
      }),
    },
    view:: {
      '#new':: d.fn(help='\n`google.bigquery_dataset.access.view.new` constructs a new object with attributes and blocks configured for the `view`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this table.\n  - `project_id` (`string`): The ID of the project containing this table.\n  - `table_id` (`string`): The ID of the table. The ID must contain only letters (a-z,\nA-Z), numbers (0-9), or underscores (_). The maximum length\nis 1,024 characters.\n\n**Returns**:\n  - An attribute object that represents the `view` sub block.\n', args=[]),
      new(
        dataset_id,
        project_id,
        table_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
        table_id: table_id,
      }),
    },
  },
  default_encryption_configuration:: {
    '#new':: d.fn(help='\n`google.bigquery_dataset.default_encryption_configuration.new` constructs a new object with attributes and blocks configured for the `default_encryption_configuration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect destination\nBigQuery table. The BigQuery Service Account associated with your project requires\naccess to this encryption key.\n\n**Returns**:\n  - An attribute object that represents the `default_encryption_configuration` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_dataset.new` injects a new `google_bigquery_dataset` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_dataset.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_dataset` using the reference:\n\n    $._ref.google_bigquery_dataset.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_dataset.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `default_collation` (`string`): Defines the default collation specification of future tables created\nin the dataset. If a table is created in this dataset without table-level\ndefault collation, then the table inherits the dataset default collation,\nwhich is applied to the string fields that do not have explicit collation\nspecified. A change to this field affects only tables created afterwards,\nand does not alter the existing tables.\n\nThe following values are supported:\n- \u0026#39;und:ci\u0026#39;: undetermined locale, case insensitive.\n- \u0026#39;\u0026#39;: empty string. Default to case-sensitive behavior. When `null`, the `default_collation` field will be omitted from the resulting object.\n  - `default_partition_expiration_ms` (`number`): The default partition expiration for all partitioned tables in\nthe dataset, in milliseconds.\n\n\nOnce this property is set, all newly-created partitioned tables in\nthe dataset will have an \u0026#39;expirationMs\u0026#39; property in the \u0026#39;timePartitioning\u0026#39;\nsettings set to this value, and changing the value will only\naffect new tables, not existing ones. The storage in a partition will\nhave an expiration time of its partition time plus this value.\nSetting this property overrides the use of \u0026#39;defaultTableExpirationMs\u0026#39;\nfor partitioned tables: only one of \u0026#39;defaultTableExpirationMs\u0026#39; and\n\u0026#39;defaultPartitionExpirationMs\u0026#39; will be used for any new partitioned\ntable. If you provide an explicit \u0026#39;timePartitioning.expirationMs\u0026#39; when\ncreating or updating a partitioned table, that value takes precedence\nover the default partition expiration time indicated by this property. When `null`, the `default_partition_expiration_ms` field will be omitted from the resulting object.\n  - `default_table_expiration_ms` (`number`): The default lifetime of all tables in the dataset, in milliseconds.\nThe minimum value is 3600000 milliseconds (one hour).\n\n\nOnce this property is set, all newly-created tables in the dataset\nwill have an \u0026#39;expirationTime\u0026#39; property set to the creation time plus\nthe value in this property, and changing the value will only affect\nnew tables, not existing ones. When the \u0026#39;expirationTime\u0026#39; for a given\ntable is reached, that table will be deleted automatically.\nIf a table\u0026#39;s \u0026#39;expirationTime\u0026#39; is modified or removed before the\ntable expires, or if you provide an explicit \u0026#39;expirationTime\u0026#39; when\ncreating a table, that value takes precedence over the default\nexpiration time indicated by this property. When `null`, the `default_table_expiration_ms` field will be omitted from the resulting object.\n  - `delete_contents_on_destroy` (`bool`): If set to \u0026#39;true\u0026#39;, delete all the tables in the\ndataset when destroying the resource; otherwise,\ndestroying the resource will fail if tables are present. When `null`, the `delete_contents_on_destroy` field will be omitted from the resulting object.\n  - `description` (`string`): A user-friendly description of the dataset When `null`, the `description` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the dataset When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `is_case_insensitive` (`bool`): TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.\nBy default, this is FALSE, which means the dataset and its table names are\ncase-sensitive. This field does not affect routine references. When `null`, the `is_case_insensitive` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this dataset. You can use these to\norganize and group your datasets When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the dataset should reside.\nSee [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).\n\n\nThere are two types of locations, regional or multi-regional. A regional\nlocation is a specific geographic place, such as Tokyo, and a multi-regional\nlocation is a large geographic area, such as the United States, that\ncontains at least two geographic places.\n\n\nThe default value is multi-regional location \u0026#39;US\u0026#39;.\nChanging this forces a new resource to be created. When `null`, the `location` field will be omitted from the resulting object.\n  - `max_time_travel_hours` (`string`): Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). When `null`, the `max_time_travel_hours` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `storage_billing_model` (`string`): Specifies the storage billing model for the dataset.\nSet this flag value to LOGICAL to use logical bytes for storage billing,\nor to PHYSICAL to use physical bytes instead.\n\nLOGICAL is the default if this flag isn\u0026#39;t specified. When `null`, the `storage_billing_model` field will be omitted from the resulting object.\n  - `access` (`list[obj]`): An array of objects that define dataset access for one or more entities. When `null`, the `access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.new](#fn-accessnew) constructor.\n  - `default_encryption_configuration` (`list[obj]`): The default encryption key for all tables in the dataset. Once this property is set,\nall newly-created partitioned tables in the dataset will have encryption key set to\nthis value, unless table creation request (or query) overrides the key. When `null`, the `default_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.default_encryption_configuration.new](#fn-default_encryption_configurationnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset_id,
    access=null,
    default_collation=null,
    default_encryption_configuration=null,
    default_partition_expiration_ms=null,
    default_table_expiration_ms=null,
    delete_contents_on_destroy=null,
    description=null,
    friendly_name=null,
    is_case_insensitive=null,
    labels=null,
    location=null,
    max_time_travel_hours=null,
    project=null,
    storage_billing_model=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      access=access,
      dataset_id=dataset_id,
      default_collation=default_collation,
      default_encryption_configuration=default_encryption_configuration,
      default_partition_expiration_ms=default_partition_expiration_ms,
      default_table_expiration_ms=default_table_expiration_ms,
      delete_contents_on_destroy=delete_contents_on_destroy,
      description=description,
      friendly_name=friendly_name,
      is_case_insensitive=is_case_insensitive,
      labels=labels,
      location=location,
      max_time_travel_hours=max_time_travel_hours,
      project=project,
      storage_billing_model=storage_billing_model,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_dataset`\nTerraform resource.\n\nUnlike [google.bigquery_dataset.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset_id` (`string`): A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters.\n  - `default_collation` (`string`): Defines the default collation specification of future tables created\nin the dataset. If a table is created in this dataset without table-level\ndefault collation, then the table inherits the dataset default collation,\nwhich is applied to the string fields that do not have explicit collation\nspecified. A change to this field affects only tables created afterwards,\nand does not alter the existing tables.\n\nThe following values are supported:\n- &#39;und:ci&#39;: undetermined locale, case insensitive.\n- &#39;&#39;: empty string. Default to case-sensitive behavior. When `null`, the `default_collation` field will be omitted from the resulting object.\n  - `default_partition_expiration_ms` (`number`): The default partition expiration for all partitioned tables in\nthe dataset, in milliseconds.\n\n\nOnce this property is set, all newly-created partitioned tables in\nthe dataset will have an &#39;expirationMs&#39; property in the &#39;timePartitioning&#39;\nsettings set to this value, and changing the value will only\naffect new tables, not existing ones. The storage in a partition will\nhave an expiration time of its partition time plus this value.\nSetting this property overrides the use of &#39;defaultTableExpirationMs&#39;\nfor partitioned tables: only one of &#39;defaultTableExpirationMs&#39; and\n&#39;defaultPartitionExpirationMs&#39; will be used for any new partitioned\ntable. If you provide an explicit &#39;timePartitioning.expirationMs&#39; when\ncreating or updating a partitioned table, that value takes precedence\nover the default partition expiration time indicated by this property. When `null`, the `default_partition_expiration_ms` field will be omitted from the resulting object.\n  - `default_table_expiration_ms` (`number`): The default lifetime of all tables in the dataset, in milliseconds.\nThe minimum value is 3600000 milliseconds (one hour).\n\n\nOnce this property is set, all newly-created tables in the dataset\nwill have an &#39;expirationTime&#39; property set to the creation time plus\nthe value in this property, and changing the value will only affect\nnew tables, not existing ones. When the &#39;expirationTime&#39; for a given\ntable is reached, that table will be deleted automatically.\nIf a table&#39;s &#39;expirationTime&#39; is modified or removed before the\ntable expires, or if you provide an explicit &#39;expirationTime&#39; when\ncreating a table, that value takes precedence over the default\nexpiration time indicated by this property. When `null`, the `default_table_expiration_ms` field will be omitted from the resulting object.\n  - `delete_contents_on_destroy` (`bool`): If set to &#39;true&#39;, delete all the tables in the\ndataset when destroying the resource; otherwise,\ndestroying the resource will fail if tables are present. When `null`, the `delete_contents_on_destroy` field will be omitted from the resulting object.\n  - `description` (`string`): A user-friendly description of the dataset When `null`, the `description` field will be omitted from the resulting object.\n  - `friendly_name` (`string`): A descriptive name for the dataset When `null`, the `friendly_name` field will be omitted from the resulting object.\n  - `is_case_insensitive` (`bool`): TRUE if the dataset and its table names are case-insensitive, otherwise FALSE.\nBy default, this is FALSE, which means the dataset and its table names are\ncase-sensitive. This field does not affect routine references. When `null`, the `is_case_insensitive` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this dataset. You can use these to\norganize and group your datasets When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The geographic location where the dataset should reside.\nSee [official docs](https://cloud.google.com/bigquery/docs/dataset-locations).\n\n\nThere are two types of locations, regional or multi-regional. A regional\nlocation is a specific geographic place, such as Tokyo, and a multi-regional\nlocation is a large geographic area, such as the United States, that\ncontains at least two geographic places.\n\n\nThe default value is multi-regional location &#39;US&#39;.\nChanging this forces a new resource to be created. When `null`, the `location` field will be omitted from the resulting object.\n  - `max_time_travel_hours` (`string`): Defines the time travel window in hours. The value can be from 48 to 168 hours (2 to 7 days). When `null`, the `max_time_travel_hours` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `storage_billing_model` (`string`): Specifies the storage billing model for the dataset.\nSet this flag value to LOGICAL to use logical bytes for storage billing,\nor to PHYSICAL to use physical bytes instead.\n\nLOGICAL is the default if this flag isn&#39;t specified. When `null`, the `storage_billing_model` field will be omitted from the resulting object.\n  - `access` (`list[obj]`): An array of objects that define dataset access for one or more entities. When `null`, the `access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.access.new](#fn-accessnew) constructor.\n  - `default_encryption_configuration` (`list[obj]`): The default encryption key for all tables in the dataset. Once this property is set,\nall newly-created partitioned tables in the dataset will have encryption key set to\nthis value, unless table creation request (or query) overrides the key. When `null`, the `default_encryption_configuration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.default_encryption_configuration.new](#fn-default_encryption_configurationnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_dataset.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_dataset` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    access=null,
    default_collation=null,
    default_encryption_configuration=null,
    default_partition_expiration_ms=null,
    default_table_expiration_ms=null,
    delete_contents_on_destroy=null,
    description=null,
    friendly_name=null,
    is_case_insensitive=null,
    labels=null,
    location=null,
    max_time_travel_hours=null,
    project=null,
    storage_billing_model=null,
    timeouts=null
  ):: std.prune(a={
    access: access,
    dataset_id: dataset_id,
    default_collation: default_collation,
    default_encryption_configuration: default_encryption_configuration,
    default_partition_expiration_ms: default_partition_expiration_ms,
    default_table_expiration_ms: default_table_expiration_ms,
    delete_contents_on_destroy: delete_contents_on_destroy,
    description: description,
    friendly_name: friendly_name,
    is_case_insensitive: is_case_insensitive,
    labels: labels,
    location: location,
    max_time_travel_hours: max_time_travel_hours,
    project: project,
    storage_billing_model: storage_billing_model,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAccess':: d.fn(help='`google.list[obj].withAccess` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAccessMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access` field.\n', args=[]),
  withAccess(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          access: value,
        },
      },
    },
  },
  '#withAccessMixin':: d.fn(help='`google.list[obj].withAccessMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAccess](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access` field.\n', args=[]),
  withAccessMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          access+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withDefaultCollation':: d.fn(help='`google.string.withDefaultCollation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_collation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_collation` field.\n', args=[]),
  withDefaultCollation(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_collation: value,
        },
      },
    },
  },
  '#withDefaultEncryptionConfiguration':: d.fn(help='`google.list[obj].withDefaultEncryptionConfiguration` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_encryption_configuration field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultEncryptionConfigurationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_encryption_configuration` field.\n', args=[]),
  withDefaultEncryptionConfiguration(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_encryption_configuration: value,
        },
      },
    },
  },
  '#withDefaultEncryptionConfigurationMixin':: d.fn(help='`google.list[obj].withDefaultEncryptionConfigurationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_encryption_configuration field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultEncryptionConfiguration](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_encryption_configuration` field.\n', args=[]),
  withDefaultEncryptionConfigurationMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_encryption_configuration+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDefaultPartitionExpirationMs':: d.fn(help='`google.number.withDefaultPartitionExpirationMs` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the default_partition_expiration_ms field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `default_partition_expiration_ms` field.\n', args=[]),
  withDefaultPartitionExpirationMs(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_partition_expiration_ms: value,
        },
      },
    },
  },
  '#withDefaultTableExpirationMs':: d.fn(help='`google.number.withDefaultTableExpirationMs` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the default_table_expiration_ms field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `default_table_expiration_ms` field.\n', args=[]),
  withDefaultTableExpirationMs(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          default_table_expiration_ms: value,
        },
      },
    },
  },
  '#withDeleteContentsOnDestroy':: d.fn(help='`google.bool.withDeleteContentsOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the delete_contents_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `delete_contents_on_destroy` field.\n', args=[]),
  withDeleteContentsOnDestroy(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          delete_contents_on_destroy: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFriendlyName':: d.fn(help='`google.string.withFriendlyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the friendly_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `friendly_name` field.\n', args=[]),
  withFriendlyName(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          friendly_name: value,
        },
      },
    },
  },
  '#withIsCaseInsensitive':: d.fn(help='`google.bool.withIsCaseInsensitive` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_case_insensitive field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_case_insensitive` field.\n', args=[]),
  withIsCaseInsensitive(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          is_case_insensitive: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMaxTimeTravelHours':: d.fn(help='`google.string.withMaxTimeTravelHours` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the max_time_travel_hours field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `max_time_travel_hours` field.\n', args=[]),
  withMaxTimeTravelHours(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          max_time_travel_hours: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withStorageBillingModel':: d.fn(help='`google.string.withStorageBillingModel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the storage_billing_model field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `storage_billing_model` field.\n', args=[]),
  withStorageBillingModel(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          storage_billing_model: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
