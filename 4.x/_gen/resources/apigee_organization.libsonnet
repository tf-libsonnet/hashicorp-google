local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apigee_organization', url='', help='`apigee_organization` represents the `google_apigee_organization` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apigee_organization.new` injects a new `google_apigee_organization` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apigee_organization.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apigee_organization` using the reference:\n\n    $._ref.google_apigee_organization.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apigee_organization.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `analytics_region` (`string`): Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org). When `null`, the `analytics_region` field will be omitted from the resulting object.\n  - `authorized_network` (`string`): Compute Engine network used for Service Networking to be peered with Apigee runtime instances.\nSee [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).\nValid only when \u0026#39;RuntimeType\u0026#39; is set to CLOUD. The value can be updated only when there are no runtime instances. For example: \u0026#34;default\u0026#34;. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `billing_type` (`string`): Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing). When `null`, the `billing_type` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the Apigee organization. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Apigee organization. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project_id` (`string`): The project ID associated with the Apigee organization.\n  - `retention` (`string`): Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType\nis not EVALUATION). It controls how long Organization data will be retained after the initial delete\noperation completes. During this period, the Organization may be restored to its last known state.\nAfter this period, the Organization will no longer be able to be restored. Default value: \u0026#34;DELETION_RETENTION_UNSPECIFIED\u0026#34; Possible values: [\u0026#34;DELETION_RETENTION_UNSPECIFIED\u0026#34;, \u0026#34;MINIMUM\u0026#34;] When `null`, the `retention` field will be omitted from the resulting object.\n  - `runtime_database_encryption_key_name` (`string`): Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.\nUpdate is not allowed after the organization is created.\nIf not specified, a Google-Managed encryption key will be used.\nValid only when \u0026#39;RuntimeType\u0026#39; is CLOUD. For example: \u0026#39;projects/foo/locations/us/keyRings/bar/cryptoKeys/baz\u0026#39;. When `null`, the `runtime_database_encryption_key_name` field will be omitted from the resulting object.\n  - `runtime_type` (`string`): Runtime type of the Apigee organization based on the Apigee subscription purchased. Default value: \u0026#34;CLOUD\u0026#34; Possible values: [\u0026#34;CLOUD\u0026#34;, \u0026#34;HYBRID\u0026#34;] When `null`, the `runtime_type` field will be omitted from the resulting object.\n  - `properties` (`list[obj]`): Properties defined in the Apigee organization profile. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_organization.properties.new](#fn-propertiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_organization.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    project_id,
    analytics_region=null,
    authorized_network=null,
    billing_type=null,
    description=null,
    display_name=null,
    properties=null,
    retention=null,
    runtime_database_encryption_key_name=null,
    runtime_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_organization',
    label=resourceLabel,
    attrs=self.newAttrs(
      analytics_region=analytics_region,
      authorized_network=authorized_network,
      billing_type=billing_type,
      description=description,
      display_name=display_name,
      project_id=project_id,
      properties=properties,
      retention=retention,
      runtime_database_encryption_key_name=runtime_database_encryption_key_name,
      runtime_type=runtime_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apigee_organization.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_organization`\nTerraform resource.\n\nUnlike [google.apigee_organization.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `analytics_region` (`string`): Primary GCP region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org). When `null`, the `analytics_region` field will be omitted from the resulting object.\n  - `authorized_network` (`string`): Compute Engine network used for Service Networking to be peered with Apigee runtime instances.\nSee [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started).\nValid only when &#39;RuntimeType&#39; is set to CLOUD. The value can be updated only when there are no runtime instances. For example: &#34;default&#34;. When `null`, the `authorized_network` field will be omitted from the resulting object.\n  - `billing_type` (`string`): Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing). When `null`, the `billing_type` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the Apigee organization. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Apigee organization. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `project_id` (`string`): The project ID associated with the Apigee organization.\n  - `retention` (`string`): Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType\nis not EVALUATION). It controls how long Organization data will be retained after the initial delete\noperation completes. During this period, the Organization may be restored to its last known state.\nAfter this period, the Organization will no longer be able to be restored. Default value: &#34;DELETION_RETENTION_UNSPECIFIED&#34; Possible values: [&#34;DELETION_RETENTION_UNSPECIFIED&#34;, &#34;MINIMUM&#34;] When `null`, the `retention` field will be omitted from the resulting object.\n  - `runtime_database_encryption_key_name` (`string`): Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances.\nUpdate is not allowed after the organization is created.\nIf not specified, a Google-Managed encryption key will be used.\nValid only when &#39;RuntimeType&#39; is CLOUD. For example: &#39;projects/foo/locations/us/keyRings/bar/cryptoKeys/baz&#39;. When `null`, the `runtime_database_encryption_key_name` field will be omitted from the resulting object.\n  - `runtime_type` (`string`): Runtime type of the Apigee organization based on the Apigee subscription purchased. Default value: &#34;CLOUD&#34; Possible values: [&#34;CLOUD&#34;, &#34;HYBRID&#34;] When `null`, the `runtime_type` field will be omitted from the resulting object.\n  - `properties` (`list[obj]`): Properties defined in the Apigee organization profile. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_organization.properties.new](#fn-propertiesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_organization.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_organization` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project_id,
    analytics_region=null,
    authorized_network=null,
    billing_type=null,
    description=null,
    display_name=null,
    properties=null,
    retention=null,
    runtime_database_encryption_key_name=null,
    runtime_type=null,
    timeouts=null
  ):: std.prune(a={
    analytics_region: analytics_region,
    authorized_network: authorized_network,
    billing_type: billing_type,
    description: description,
    display_name: display_name,
    project_id: project_id,
    properties: properties,
    retention: retention,
    runtime_database_encryption_key_name: runtime_database_encryption_key_name,
    runtime_type: runtime_type,
    timeouts: timeouts,
  }),
  properties:: {
    '#new':: d.fn(help='\n`google.apigee_organization.properties.new` constructs a new object with attributes and blocks configured for the `properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `property` (`list[obj]`): List of all properties in the object. When `null`, the `property` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_organization.properties.property.new](#fn-apigee_organizationpropertynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `properties` sub block.\n', args=[]),
    new(
      property=null
    ):: std.prune(a={
      property: property,
    }),
    property:: {
      '#new':: d.fn(help='\n`google.apigee_organization.properties.property.new` constructs a new object with attributes and blocks configured for the `property`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the property. When `null`, the `name` field will be omitted from the resulting object.\n  - `value` (`string`): Value of the property. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `property` sub block.\n', args=[]),
      new(
        name=null,
        value=null
      ):: std.prune(a={
        name: name,
        value: value,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.apigee_organization.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnalyticsRegion':: d.fn(help='`google.string.withAnalyticsRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the analytics_region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `analytics_region` field.\n', args=[]),
  withAnalyticsRegion(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          analytics_region: value,
        },
      },
    },
  },
  '#withAuthorizedNetwork':: d.fn(help='`google.string.withAuthorizedNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the authorized_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `authorized_network` field.\n', args=[]),
  withAuthorizedNetwork(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  '#withBillingType':: d.fn(help='`google.string.withBillingType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_type` field.\n', args=[]),
  withBillingType(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          billing_type: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`google.string.withProjectId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withProperties':: d.fn(help='`google.list[obj].withProperties` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the properties field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPropertiesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `properties` field.\n', args=[]),
  withProperties(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          properties: value,
        },
      },
    },
  },
  '#withPropertiesMixin':: d.fn(help='`google.list[obj].withPropertiesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the properties field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withProperties](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `properties` field.\n', args=[]),
  withPropertiesMixin(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          properties+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRetention':: d.fn(help='`google.string.withRetention` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the retention field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `retention` field.\n', args=[]),
  withRetention(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          retention: value,
        },
      },
    },
  },
  '#withRuntimeDatabaseEncryptionKeyName':: d.fn(help='`google.string.withRuntimeDatabaseEncryptionKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_database_encryption_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_database_encryption_key_name` field.\n', args=[]),
  withRuntimeDatabaseEncryptionKeyName(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          runtime_database_encryption_key_name: value,
        },
      },
    },
  },
  '#withRuntimeType':: d.fn(help='`google.string.withRuntimeType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the runtime_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `runtime_type` field.\n', args=[]),
  withRuntimeType(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          runtime_type: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apigee_organization+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
