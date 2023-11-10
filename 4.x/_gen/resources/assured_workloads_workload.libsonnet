local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='assured_workloads_workload', url='', help='`assured_workloads_workload` represents the `google_assured_workloads_workload` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  kms_settings:: {
    '#new':: d.fn(help='\n`google.assured_workloads_workload.kms_settings.new` constructs a new object with attributes and blocks configured for the `kms_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `next_rotation_time` (`string`): Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.\n  - `rotation_period` (`string`): Required. Input only. Immutable. will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.\n\n**Returns**:\n  - An attribute object that represents the `kms_settings` sub block.\n', args=[]),
    new(
      next_rotation_time,
      rotation_period
    ):: std.prune(a={
      next_rotation_time: next_rotation_time,
      rotation_period: rotation_period,
    }),
  },
  '#new':: d.fn(help="\n`google.assured_workloads_workload.new` injects a new `google_assured_workloads_workload` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.assured_workloads_workload.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.assured_workloads_workload` using the reference:\n\n    $._ref.google_assured_workloads_workload.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_assured_workloads_workload.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `billing_account` (`string`): Required. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, \u0026#39;billingAccounts/012345-567890-ABCDEF`.\n  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS\n  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload\n  - `labels` (`obj`): Optional. Labels applied to the workload.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `organization` (`string`): The organization for the resource\n  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either an organization or a folder. Must be the same or a child of the Workload parent. If not specified all resources are created under the Workload parent. Formats: folders/{folder_id}, organizations/{organization_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.\n  - `kms_settings` (`list[obj]`): Input only. Settings used to create a CMEK crypto key. When set a project with a KMS CMEK key is provisioned. This field is mandatory for a subset of Compliance Regimes. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.\n  - `resource_settings` (`list[obj]`): Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional. When `null`, the `resource_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.resource_settings.new](#fn-resource_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    billing_account,
    compliance_regime,
    display_name,
    location,
    organization,
    kms_settings=null,
    labels=null,
    provisioned_resources_parent=null,
    resource_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_assured_workloads_workload',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account=billing_account,
      compliance_regime=compliance_regime,
      display_name=display_name,
      kms_settings=kms_settings,
      labels=labels,
      location=location,
      organization=organization,
      provisioned_resources_parent=provisioned_resources_parent,
      resource_settings=resource_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.assured_workloads_workload.newAttrs` constructs a new object with attributes and blocks configured for the `assured_workloads_workload`\nTerraform resource.\n\nUnlike [google.assured_workloads_workload.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `billing_account` (`string`): Required. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, &#39;billingAccounts/012345-567890-ABCDEF`.\n  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS\n  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload\n  - `labels` (`obj`): Optional. Labels applied to the workload.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `organization` (`string`): The organization for the resource\n  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either an organization or a folder. Must be the same or a child of the Workload parent. If not specified all resources are created under the Workload parent. Formats: folders/{folder_id}, organizations/{organization_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.\n  - `kms_settings` (`list[obj]`): Input only. Settings used to create a CMEK crypto key. When set a project with a KMS CMEK key is provisioned. This field is mandatory for a subset of Compliance Regimes. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.\n  - `resource_settings` (`list[obj]`): Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional. When `null`, the `resource_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.resource_settings.new](#fn-resource_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `assured_workloads_workload` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    billing_account,
    compliance_regime,
    display_name,
    location,
    organization,
    kms_settings=null,
    labels=null,
    provisioned_resources_parent=null,
    resource_settings=null,
    timeouts=null
  ):: std.prune(a={
    billing_account: billing_account,
    compliance_regime: compliance_regime,
    display_name: display_name,
    kms_settings: kms_settings,
    labels: labels,
    location: location,
    organization: organization,
    provisioned_resources_parent: provisioned_resources_parent,
    resource_settings: resource_settings,
    timeouts: timeouts,
  }),
  resource_settings:: {
    '#new':: d.fn(help='\n`google.assured_workloads_workload.resource_settings.new` constructs a new object with attributes and blocks configured for the `resource_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_id` (`string`): Resource identifier. For a project this represents project_number. If the project is already taken, the workload creation will fail. When `null`, the `resource_id` field will be omitted from the resulting object.\n  - `resource_type` (`string`): Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER When `null`, the `resource_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `resource_settings` sub block.\n', args=[]),
    new(
      resource_id=null,
      resource_type=null
    ):: std.prune(a={
      resource_id: resource_id,
      resource_type: resource_type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.assured_workloads_workload.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBillingAccount':: d.fn(help='`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withComplianceRegime':: d.fn(help='`google.string.withComplianceRegime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the compliance_regime field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `compliance_regime` field.\n', args=[]),
  withComplianceRegime(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          compliance_regime: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withKmsSettings':: d.fn(help='`google.list[obj].withKmsSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the kms_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withKmsSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `kms_settings` field.\n', args=[]),
  withKmsSettings(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          kms_settings: value,
        },
      },
    },
  },
  '#withKmsSettingsMixin':: d.fn(help='`google.list[obj].withKmsSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the kms_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withKmsSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `kms_settings` field.\n', args=[]),
  withKmsSettingsMixin(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          kms_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withOrganization':: d.fn(help='`google.string.withOrganization` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization` field.\n', args=[]),
  withOrganization(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  '#withProvisionedResourcesParent':: d.fn(help='`google.string.withProvisionedResourcesParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the provisioned_resources_parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `provisioned_resources_parent` field.\n', args=[]),
  withProvisionedResourcesParent(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          provisioned_resources_parent: value,
        },
      },
    },
  },
  '#withResourceSettings':: d.fn(help='`google.list[obj].withResourceSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withResourceSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_settings` field.\n', args=[]),
  withResourceSettings(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          resource_settings: value,
        },
      },
    },
  },
  '#withResourceSettingsMixin':: d.fn(help='`google.list[obj].withResourceSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resource_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withResourceSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resource_settings` field.\n', args=[]),
  withResourceSettingsMixin(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          resource_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_assured_workloads_workload+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
