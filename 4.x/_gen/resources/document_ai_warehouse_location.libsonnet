local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='document_ai_warehouse_location', url='', help='`document_ai_warehouse_location` represents the `google_document_ai_warehouse_location` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.document_ai_warehouse_location.new` injects a new `google_document_ai_warehouse_location` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.document_ai_warehouse_location.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.document_ai_warehouse_location` using the reference:\n\n    $._ref.google_document_ai_warehouse_location.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_document_ai_warehouse_location.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `access_control_mode` (`string`): The access control mode for accessing the customer data. Possible values: [\u0026#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI\u0026#34;, \u0026#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID\u0026#34;, \u0026#34;ACL_MODE_UNIVERSAL_ACCESS\u0026#34;]\n  - `database_type` (`string`): The type of database used to store customer data. Possible values: [\u0026#34;DB_INFRA_SPANNER\u0026#34;, \u0026#34;DB_CLOUD_SQL_POSTGRES\u0026#34;]\n  - `document_creator_default_role` (`string`): The default role for the person who create a document. Possible values: [\u0026#34;DOCUMENT_ADMIN\u0026#34;, \u0026#34;DOCUMENT_EDITOR\u0026#34;, \u0026#34;DOCUMENT_VIEWER\u0026#34;] When `null`, the `document_creator_default_role` field will be omitted from the resulting object.\n  - `kms_key` (`string`): The KMS key used for CMEK encryption. It is required that\nthe kms key is in the same region as the endpoint. The\nsame key will be used for all provisioned resources, if\nencryption is available. If the kmsKey is left empty, no\nencryption will be enforced. When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `location` (`string`): The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.\n  - `project_number` (`string`): The unique identifier of the project.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_location.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    access_control_mode,
    database_type,
    location,
    project_number,
    document_creator_default_role=null,
    kms_key=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_document_ai_warehouse_location',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_control_mode=access_control_mode,
      database_type=database_type,
      document_creator_default_role=document_creator_default_role,
      kms_key=kms_key,
      location=location,
      project_number=project_number,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.document_ai_warehouse_location.newAttrs` constructs a new object with attributes and blocks configured for the `document_ai_warehouse_location`\nTerraform resource.\n\nUnlike [google.document_ai_warehouse_location.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `access_control_mode` (`string`): The access control mode for accessing the customer data. Possible values: [&#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI&#34;, &#34;ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID&#34;, &#34;ACL_MODE_UNIVERSAL_ACCESS&#34;]\n  - `database_type` (`string`): The type of database used to store customer data. Possible values: [&#34;DB_INFRA_SPANNER&#34;, &#34;DB_CLOUD_SQL_POSTGRES&#34;]\n  - `document_creator_default_role` (`string`): The default role for the person who create a document. Possible values: [&#34;DOCUMENT_ADMIN&#34;, &#34;DOCUMENT_EDITOR&#34;, &#34;DOCUMENT_VIEWER&#34;] When `null`, the `document_creator_default_role` field will be omitted from the resulting object.\n  - `kms_key` (`string`): The KMS key used for CMEK encryption. It is required that\nthe kms key is in the same region as the endpoint. The\nsame key will be used for all provisioned resources, if\nencryption is available. If the kmsKey is left empty, no\nencryption will be enforced. When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `location` (`string`): The location in which the instance is to be provisioned. It takes the form projects/{projectNumber}/locations/{location}.\n  - `project_number` (`string`): The unique identifier of the project.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_location.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `document_ai_warehouse_location` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    access_control_mode,
    database_type,
    location,
    project_number,
    document_creator_default_role=null,
    kms_key=null,
    timeouts=null
  ):: std.prune(a={
    access_control_mode: access_control_mode,
    database_type: database_type,
    document_creator_default_role: document_creator_default_role,
    kms_key: kms_key,
    location: location,
    project_number: project_number,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.document_ai_warehouse_location.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAccessControlMode':: d.fn(help='`google.string.withAccessControlMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the access_control_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `access_control_mode` field.\n', args=[]),
  withAccessControlMode(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          access_control_mode: value,
        },
      },
    },
  },
  '#withDatabaseType':: d.fn(help='`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_type` field.\n', args=[]),
  withDatabaseType(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          database_type: value,
        },
      },
    },
  },
  '#withDocumentCreatorDefaultRole':: d.fn(help='`google.string.withDocumentCreatorDefaultRole` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the document_creator_default_role field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `document_creator_default_role` field.\n', args=[]),
  withDocumentCreatorDefaultRole(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          document_creator_default_role: value,
        },
      },
    },
  },
  '#withKmsKey':: d.fn(help='`google.string.withKmsKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key` field.\n', args=[]),
  withKmsKey(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          kms_key: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProjectNumber':: d.fn(help='`google.string.withProjectNumber` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_number field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_number` field.\n', args=[]),
  withProjectNumber(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          project_number: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_location+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
