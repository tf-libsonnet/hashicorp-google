local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='healthcare_fhir_store', url='', help='`healthcare_fhir_store` represents the `google_healthcare_fhir_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.healthcare_fhir_store.new` injects a new `google_healthcare_fhir_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.healthcare_fhir_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.healthcare_fhir_store` using the reference:\n\n    $._ref.google_healthcare_fhir_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_healthcare_fhir_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `complex_data_type_reference_parsing` (`string`): Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources. Possible values: [\u0026#34;COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED\u0026#34;, \u0026#34;DISABLED\u0026#34;, \u0026#34;ENABLED\u0026#34;] When `null`, the `complex_data_type_reference_parsing` field will be omitted from the resulting object.\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/datasets/{dataset}\u0026#39;\n  - `default_search_handling_strict` (`bool`): If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.\nIf false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.\nThe handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient. When `null`, the `default_search_handling_strict` field will be omitted from the resulting object.\n  - `disable_referential_integrity` (`bool`): Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store\ncreation. The default value is false, meaning that the API will enforce referential integrity and fail the\nrequests that will result in inconsistent state in the FHIR store. When this field is set to true, the API\nwill skip referential integrity check. Consequently, operations that rely on references, such as\nPatient.get$everything, will not return all the results if broken references exist.\n\n** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_referential_integrity` field will be omitted from the resulting object.\n  - `disable_resource_versioning` (`bool`): Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation\nof FHIR store. If set to false, which is the default behavior, all write operations will cause historical\nversions to be recorded automatically. The historical versions can be fetched through the history APIs, but\ncannot be updated. If set to true, no historical versions will be kept. The server will send back errors for\nattempts to read the historical versions.\n\n** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_resource_versioning` field will be omitted from the resulting object.\n  - `enable_history_import` (`bool`): Whether to allow the bulk import API to accept history bundles and directly insert historical resource\nversions into the FHIR store. Importing resource histories creates resource interactions that appear to have\noccurred in the past, which clients may not want to allow. If set to false, history bundles within an import\nwill fail with an error.\n\n** Changing this property may recreate the FHIR store (removing all data) **\n\n** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store ** When `null`, the `enable_history_import` field will be omitted from the resulting object.\n  - `enable_update_create` (`bool`): Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update\noperation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through\nthe Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit\nlogs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient\nidentifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub\nnotifications. When `null`, the `enable_update_create` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-supplied key-value pairs used to organize FHIR stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the FhirStore.\n\n** Changing this property may recreate the FHIR store (removing all data) **\n  - `version` (`string`): The FHIR specification version. Possible values: [\u0026#34;DSTU2\u0026#34;, \u0026#34;STU3\u0026#34;, \u0026#34;R4\u0026#34;]\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.notification_config.new](#fn-notification_confignew) constructor.\n  - `stream_configs` (`list[obj]`): A list of streaming configs that configure the destinations of streaming export for every resource mutation in\nthis FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next\nresource mutation is streamed to the new location in addition to the existing ones. When a location is removed\nfrom the list, the server stops streaming to that location. Before adding a new config, you must add the required\nbigquery.dataEditor role to your project\u0026#39;s Cloud Healthcare Service Agent service account. Some lag (typically on\nthe order of dozens of seconds) is expected before the results show up in the streaming destination. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.new](#fn-stream_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset,
    name,
    version,
    complex_data_type_reference_parsing=null,
    default_search_handling_strict=null,
    disable_referential_integrity=null,
    disable_resource_versioning=null,
    enable_history_import=null,
    enable_update_create=null,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_fhir_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      complex_data_type_reference_parsing=complex_data_type_reference_parsing,
      dataset=dataset,
      default_search_handling_strict=default_search_handling_strict,
      disable_referential_integrity=disable_referential_integrity,
      disable_resource_versioning=disable_resource_versioning,
      enable_history_import=enable_history_import,
      enable_update_create=enable_update_create,
      labels=labels,
      name=name,
      notification_config=notification_config,
      stream_configs=stream_configs,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.healthcare_fhir_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_fhir_store`\nTerraform resource.\n\nUnlike [google.healthcare_fhir_store.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `complex_data_type_reference_parsing` (`string`): Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED by default after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources. Possible values: [&#34;COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED&#34;, &#34;DISABLED&#34;, &#34;ENABLED&#34;] When `null`, the `complex_data_type_reference_parsing` field will be omitted from the resulting object.\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;\n  - `default_search_handling_strict` (`bool`): If true, overrides the default search behavior for this FHIR store to handling=strict which returns an error for unrecognized search parameters.\nIf false, uses the FHIR specification default handling=lenient which ignores unrecognized search parameters.\nThe handling can always be changed from the default on an individual API call by setting the HTTP header Prefer: handling=strict or Prefer: handling=lenient. When `null`, the `default_search_handling_strict` field will be omitted from the resulting object.\n  - `disable_referential_integrity` (`bool`): Whether to disable referential integrity in this FHIR store. This field is immutable after FHIR store\ncreation. The default value is false, meaning that the API will enforce referential integrity and fail the\nrequests that will result in inconsistent state in the FHIR store. When this field is set to true, the API\nwill skip referential integrity check. Consequently, operations that rely on references, such as\nPatient.get$everything, will not return all the results if broken references exist.\n\n** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_referential_integrity` field will be omitted from the resulting object.\n  - `disable_resource_versioning` (`bool`): Whether to disable resource versioning for this FHIR store. This field can not be changed after the creation\nof FHIR store. If set to false, which is the default behavior, all write operations will cause historical\nversions to be recorded automatically. The historical versions can be fetched through the history APIs, but\ncannot be updated. If set to true, no historical versions will be kept. The server will send back errors for\nattempts to read the historical versions.\n\n** Changing this property may recreate the FHIR store (removing all data) ** When `null`, the `disable_resource_versioning` field will be omitted from the resulting object.\n  - `enable_history_import` (`bool`): Whether to allow the bulk import API to accept history bundles and directly insert historical resource\nversions into the FHIR store. Importing resource histories creates resource interactions that appear to have\noccurred in the past, which clients may not want to allow. If set to false, history bundles within an import\nwill fail with an error.\n\n** Changing this property may recreate the FHIR store (removing all data) **\n\n** This property can be changed manually in the Google Cloud Healthcare admin console without recreating the FHIR store ** When `null`, the `enable_history_import` field will be omitted from the resulting object.\n  - `enable_update_create` (`bool`): Whether this FHIR store has the updateCreate capability. This determines if the client can use an Update\noperation to create a new resource with a client-specified ID. If false, all IDs are server-assigned through\nthe Create operation and attempts to Update a non-existent resource will return errors. Please treat the audit\nlogs with appropriate levels of care if client-specified resource IDs contain sensitive data such as patient\nidentifiers, those IDs will be part of the FHIR resource path recorded in Cloud audit logs and Cloud Pub/Sub\nnotifications. When `null`, the `enable_update_create` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-supplied key-value pairs used to organize FHIR stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name for the FhirStore.\n\n** Changing this property may recreate the FHIR store (removing all data) **\n  - `version` (`string`): The FHIR specification version. Possible values: [&#34;DSTU2&#34;, &#34;STU3&#34;, &#34;R4&#34;]\n  - `notification_config` (`list[obj]`): A nested object resource When `null`, the `notification_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.notification_config.new](#fn-notification_confignew) constructor.\n  - `stream_configs` (`list[obj]`): A list of streaming configs that configure the destinations of streaming export for every resource mutation in\nthis FHIR store. Each store is allowed to have up to 10 streaming configs. After a new config is added, the next\nresource mutation is streamed to the new location in addition to the existing ones. When a location is removed\nfrom the list, the server stops streaming to that location. Before adding a new config, you must add the required\nbigquery.dataEditor role to your project&#39;s Cloud Healthcare Service Agent service account. Some lag (typically on\nthe order of dozens of seconds) is expected before the results show up in the streaming destination. When `null`, the `stream_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.new](#fn-stream_configsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_fhir_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset,
    name,
    version,
    complex_data_type_reference_parsing=null,
    default_search_handling_strict=null,
    disable_referential_integrity=null,
    disable_resource_versioning=null,
    enable_history_import=null,
    enable_update_create=null,
    labels=null,
    notification_config=null,
    stream_configs=null,
    timeouts=null
  ):: std.prune(a={
    complex_data_type_reference_parsing: complex_data_type_reference_parsing,
    dataset: dataset,
    default_search_handling_strict: default_search_handling_strict,
    disable_referential_integrity: disable_referential_integrity,
    disable_resource_versioning: disable_resource_versioning,
    enable_history_import: enable_history_import,
    enable_update_create: enable_update_create,
    labels: labels,
    name: name,
    notification_config: notification_config,
    stream_configs: stream_configs,
    timeouts: timeouts,
    version: version,
  }),
  notification_config:: {
    '#new':: d.fn(help='\n`google.healthcare_fhir_store.notification_config.new` constructs a new object with attributes and blocks configured for the `notification_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pubsub_topic` (`string`): The Cloud Pub/Sub topic that notifications of changes are published on. Supplied by the client.\nPubsubMessage.Data will contain the resource name. PubsubMessage.MessageId is the ID of this message.\nIt is guaranteed to be unique within the topic. PubsubMessage.PublishTime is the time at which the message\nwas published. Notifications are only sent if the topic is non-empty. Topic names must be scoped to a\nproject. service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com must have publisher permissions on the given\nCloud Pub/Sub topic. Not having adequate permissions will cause the calls that send notifications to fail.\n\n**Returns**:\n  - An attribute object that represents the `notification_config` sub block.\n', args=[]),
    new(
      pubsub_topic
    ):: std.prune(a={
      pubsub_topic: pubsub_topic,
    }),
  },
  stream_configs:: {
    bigquery_destination:: {
      '#new':: d.fn(help='\n`google.healthcare_fhir_store.stream_configs.bigquery_destination.new` constructs a new object with attributes and blocks configured for the `bigquery_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_uri` (`string`): BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId\n  - `schema_config` (`list[obj]`): The configuration for the exported BigQuery schema. When `null`, the `schema_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.new](#fn-stream_configsstream_configsschema_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bigquery_destination` sub block.\n', args=[]),
      new(
        dataset_uri,
        schema_config=null
      ):: std.prune(a={
        dataset_uri: dataset_uri,
        schema_config: schema_config,
      }),
      schema_config:: {
        last_updated_partition_config:: {
          '#new':: d.fn(help='\n`google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.last_updated_partition_config.new` constructs a new object with attributes and blocks configured for the `last_updated_partition_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_ms` (`string`): Number of milliseconds for which to keep the storage for a partition. When `null`, the `expiration_ms` field will be omitted from the resulting object.\n  - `type` (`string`): Type of partitioning. Possible values: [&#34;PARTITION_TYPE_UNSPECIFIED&#34;, &#34;HOUR&#34;, &#34;DAY&#34;, &#34;MONTH&#34;, &#34;YEAR&#34;]\n\n**Returns**:\n  - An attribute object that represents the `last_updated_partition_config` sub block.\n', args=[]),
          new(
            type,
            expiration_ms=null
          ):: std.prune(a={
            expiration_ms: expiration_ms,
            type: type,
          }),
        },
        '#new':: d.fn(help='\n`google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.new` constructs a new object with attributes and blocks configured for the `schema_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `recursive_structure_depth` (`number`): The depth for all recursive structures in the output analytics schema. For example, concept in the CodeSystem\nresource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called\nconcept.concept but not concept.concept.concept. If not specified or set to 0, the server will use the default\nvalue 2. The maximum depth allowed is 5.\n  - `schema_type` (`string`): Specifies the output schema type.\n * ANALYTICS: Analytics schema defined by the FHIR community.\n  See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.\n * ANALYTICS_V2: Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON.\n * LOSSLESS: A data-driven schema generated from the fields present in the FHIR data being exported, with no additional simplification. Default value: &#34;ANALYTICS&#34; Possible values: [&#34;ANALYTICS&#34;, &#34;ANALYTICS_V2&#34;, &#34;LOSSLESS&#34;] When `null`, the `schema_type` field will be omitted from the resulting object.\n  - `last_updated_partition_config` (`list[obj]`): The configuration for exported BigQuery tables to be partitioned by FHIR resource&#39;s last updated time column. When `null`, the `last_updated_partition_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.bigquery_destination.schema_config.last_updated_partition_config.new](#fn-stream_configsstream_configsbigquery_destinationlast_updated_partition_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `schema_config` sub block.\n', args=[]),
        new(
          recursive_structure_depth,
          last_updated_partition_config=null,
          schema_type=null
        ):: std.prune(a={
          last_updated_partition_config: last_updated_partition_config,
          recursive_structure_depth: recursive_structure_depth,
          schema_type: schema_type,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.healthcare_fhir_store.stream_configs.new` constructs a new object with attributes and blocks configured for the `stream_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_types` (`list`): Supply a FHIR resource type (such as &#34;Patient&#34; or &#34;Observation&#34;). See\nhttps://www.hl7.org/fhir/valueset-resource-types.html for a list of all FHIR resource types. The server treats\nan empty list as an intent to stream all the supported resource types in this FHIR store. When `null`, the `resource_types` field will be omitted from the resulting object.\n  - `bigquery_destination` (`list[obj]`): The destination BigQuery structure that contains both the dataset location and corresponding schema config.\nThe output is organized in one table per resource type. The server reuses the existing tables (if any) that\nare named after the resource types, e.g. &#34;Patient&#34;, &#34;Observation&#34;. When there is no existing table for a given\nresource type, the server attempts to create one.\nSee the [streaming config reference](https://cloud.google.com/healthcare/docs/reference/rest/v1beta1/projects.locations.datasets.fhirStores#streamconfig) for more details. When `null`, the `bigquery_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_fhir_store.stream_configs.bigquery_destination.new](#fn-stream_configsbigquery_destinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `stream_configs` sub block.\n', args=[]),
    new(
      bigquery_destination=null,
      resource_types=null
    ):: std.prune(a={
      bigquery_destination: bigquery_destination,
      resource_types: resource_types,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.healthcare_fhir_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withComplexDataTypeReferenceParsing':: d.fn(help='`google.string.withComplexDataTypeReferenceParsing` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the complex_data_type_reference_parsing field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `complex_data_type_reference_parsing` field.\n', args=[]),
  withComplexDataTypeReferenceParsing(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          complex_data_type_reference_parsing: value,
        },
      },
    },
  },
  '#withDataset':: d.fn(help='`google.string.withDataset` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset` field.\n', args=[]),
  withDataset(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  '#withDefaultSearchHandlingStrict':: d.fn(help='`google.bool.withDefaultSearchHandlingStrict` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the default_search_handling_strict field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `default_search_handling_strict` field.\n', args=[]),
  withDefaultSearchHandlingStrict(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          default_search_handling_strict: value,
        },
      },
    },
  },
  '#withDisableReferentialIntegrity':: d.fn(help='`google.bool.withDisableReferentialIntegrity` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_referential_integrity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_referential_integrity` field.\n', args=[]),
  withDisableReferentialIntegrity(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          disable_referential_integrity: value,
        },
      },
    },
  },
  '#withDisableResourceVersioning':: d.fn(help='`google.bool.withDisableResourceVersioning` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disable_resource_versioning field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disable_resource_versioning` field.\n', args=[]),
  withDisableResourceVersioning(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          disable_resource_versioning: value,
        },
      },
    },
  },
  '#withEnableHistoryImport':: d.fn(help='`google.bool.withEnableHistoryImport` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_history_import field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_history_import` field.\n', args=[]),
  withEnableHistoryImport(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          enable_history_import: value,
        },
      },
    },
  },
  '#withEnableUpdateCreate':: d.fn(help='`google.bool.withEnableUpdateCreate` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_update_create field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_update_create` field.\n', args=[]),
  withEnableUpdateCreate(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          enable_update_create: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNotificationConfig':: d.fn(help='`google.list[obj].withNotificationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNotificationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfig(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          notification_config: value,
        },
      },
    },
  },
  '#withNotificationConfigMixin':: d.fn(help='`google.list[obj].withNotificationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the notification_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNotificationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `notification_config` field.\n', args=[]),
  withNotificationConfigMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          notification_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStreamConfigs':: d.fn(help='`google.list[obj].withStreamConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stream_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStreamConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stream_configs` field.\n', args=[]),
  withStreamConfigs(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          stream_configs: value,
        },
      },
    },
  },
  '#withStreamConfigsMixin':: d.fn(help='`google.list[obj].withStreamConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stream_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStreamConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stream_configs` field.\n', args=[]),
  withStreamConfigsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          stream_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.string.withVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_healthcare_fhir_store+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
