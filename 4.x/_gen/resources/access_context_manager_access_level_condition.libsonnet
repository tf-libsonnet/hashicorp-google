local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_access_level_condition', url='', help='`access_context_manager_access_level_condition` represents the `google_access_context_manager_access_level_condition` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  device_policy:: {
    '#new':: d.fn(help='\n`google.access_context_manager_access_level_condition.device_policy.new` constructs a new object with attributes and blocks configured for the `device_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_device_management_levels` (`list`): A list of allowed device management levels.\nAn empty list allows all management levels. Possible values: [&#34;MANAGEMENT_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;BASIC&#34;, &#34;COMPLETE&#34;] When `null`, the `allowed_device_management_levels` field will be omitted from the resulting object.\n  - `allowed_encryption_statuses` (`list`): A list of allowed encryptions statuses.\nAn empty list allows all statuses. Possible values: [&#34;ENCRYPTION_UNSPECIFIED&#34;, &#34;ENCRYPTION_UNSUPPORTED&#34;, &#34;UNENCRYPTED&#34;, &#34;ENCRYPTED&#34;] When `null`, the `allowed_encryption_statuses` field will be omitted from the resulting object.\n  - `require_admin_approval` (`bool`): Whether the device needs to be approved by the customer admin. When `null`, the `require_admin_approval` field will be omitted from the resulting object.\n  - `require_corp_owned` (`bool`): Whether the device needs to be corp owned. When `null`, the `require_corp_owned` field will be omitted from the resulting object.\n  - `require_screen_lock` (`bool`): Whether or not screenlock is required for the DevicePolicy\nto be true. Defaults to false. When `null`, the `require_screen_lock` field will be omitted from the resulting object.\n  - `os_constraints` (`list[obj]`): A list of allowed OS versions.\nAn empty list allows all types and all versions. When `null`, the `os_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.os_constraints.new](#fn-device_policyos_constraintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `device_policy` sub block.\n', args=[]),
    new(
      allowed_device_management_levels=null,
      allowed_encryption_statuses=null,
      os_constraints=null,
      require_admin_approval=null,
      require_corp_owned=null,
      require_screen_lock=null
    ):: std.prune(a={
      allowed_device_management_levels: allowed_device_management_levels,
      allowed_encryption_statuses: allowed_encryption_statuses,
      os_constraints: os_constraints,
      require_admin_approval: require_admin_approval,
      require_corp_owned: require_corp_owned,
      require_screen_lock: require_screen_lock,
    }),
    os_constraints:: {
      '#new':: d.fn(help='\n`google.access_context_manager_access_level_condition.device_policy.os_constraints.new` constructs a new object with attributes and blocks configured for the `os_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `minimum_version` (`string`): The minimum allowed OS version. If not set, any version\nof this OS satisfies the constraint.\nFormat: &#34;major.minor.patch&#34; such as &#34;10.5.301&#34;, &#34;9.2.1&#34;. When `null`, the `minimum_version` field will be omitted from the resulting object.\n  - `os_type` (`string`): The operating system type of the device. Possible values: [&#34;OS_UNSPECIFIED&#34;, &#34;DESKTOP_MAC&#34;, &#34;DESKTOP_WINDOWS&#34;, &#34;DESKTOP_LINUX&#34;, &#34;DESKTOP_CHROME_OS&#34;, &#34;ANDROID&#34;, &#34;IOS&#34;]\n\n**Returns**:\n  - An attribute object that represents the `os_constraints` sub block.\n', args=[]),
      new(
        os_type,
        minimum_version=null
      ):: std.prune(a={
        minimum_version: minimum_version,
        os_type: os_type,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.access_context_manager_access_level_condition.new` injects a new `google_access_context_manager_access_level_condition` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_access_level_condition.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_access_level_condition` using the reference:\n\n    $._ref.google_access_context_manager_access_level_condition.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_access_level_condition.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `access_level` (`string`): The name of the Access Level to add this condition to.\n  - `ip_subnetworks` (`list`): A list of CIDR block IP subnetwork specification. May be IPv4\nor IPv6.\nNote that for a CIDR IP address block, the specified IP address\nportion must be properly truncated (i.e. all the host bits must\nbe zero) or the input is considered malformed. For example,\n\u0026#34;192.0.2.0/24\u0026#34; is accepted but \u0026#34;192.0.2.1/24\u0026#34; is not. Similarly,\nfor IPv6, \u0026#34;2001:db8::/32\u0026#34; is accepted whereas \u0026#34;2001:db8::1/32\u0026#34;\nis not. The originating IP of a request must be in one of the\nlisted subnets in order for this Condition to be true.\nIf empty, all IP addresses are allowed. When `null`, the `ip_subnetworks` field will be omitted from the resulting object.\n  - `members` (`list`): An allowed list of members (users, service accounts).\nUsing groups is not supported yet.\n\nThe signed-in user originating the request must be a part of one\nof the provided members. If not specified, a request may come\nfrom any user (logged in/not logged in, not present in any\ngroups, etc.).\nFormats: \u0026#39;user:{emailid}\u0026#39;, \u0026#39;serviceAccount:{emailid}\u0026#39; When `null`, the `members` field will be omitted from the resulting object.\n  - `negate` (`bool`): Whether to negate the Condition. If true, the Condition becomes\na NAND over its non-empty fields, each field must be false for\nthe Condition overall to be satisfied. Defaults to false. When `null`, the `negate` field will be omitted from the resulting object.\n  - `regions` (`list`): The request must originate from one of the provided\ncountries/regions.\nFormat: A valid ISO 3166-1 alpha-2 code. When `null`, the `regions` field will be omitted from the resulting object.\n  - `required_access_levels` (`list`): A list of other access levels defined in the same Policy,\nreferenced by resource name. Referencing an AccessLevel which\ndoes not exist is an error. All access levels listed must be\ngranted for the Condition to be true.\nFormat: accessPolicies/{policy_id}/accessLevels/{short_name} When `null`, the `required_access_levels` field will be omitted from the resulting object.\n  - `device_policy` (`list[obj]`): Device specific restrictions, all restrictions must hold for\nthe Condition to be true. If not specified, all devices are\nallowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.new](#fn-device_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    access_level,
    device_policy=null,
    ip_subnetworks=null,
    members=null,
    negate=null,
    regions=null,
    required_access_levels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_level_condition',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_level=access_level,
      device_policy=device_policy,
      ip_subnetworks=ip_subnetworks,
      members=members,
      negate=negate,
      regions=regions,
      required_access_levels=required_access_levels,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_access_level_condition.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_access_level_condition`\nTerraform resource.\n\nUnlike [google.access_context_manager_access_level_condition.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `access_level` (`string`): The name of the Access Level to add this condition to.\n  - `ip_subnetworks` (`list`): A list of CIDR block IP subnetwork specification. May be IPv4\nor IPv6.\nNote that for a CIDR IP address block, the specified IP address\nportion must be properly truncated (i.e. all the host bits must\nbe zero) or the input is considered malformed. For example,\n&#34;192.0.2.0/24&#34; is accepted but &#34;192.0.2.1/24&#34; is not. Similarly,\nfor IPv6, &#34;2001:db8::/32&#34; is accepted whereas &#34;2001:db8::1/32&#34;\nis not. The originating IP of a request must be in one of the\nlisted subnets in order for this Condition to be true.\nIf empty, all IP addresses are allowed. When `null`, the `ip_subnetworks` field will be omitted from the resulting object.\n  - `members` (`list`): An allowed list of members (users, service accounts).\nUsing groups is not supported yet.\n\nThe signed-in user originating the request must be a part of one\nof the provided members. If not specified, a request may come\nfrom any user (logged in/not logged in, not present in any\ngroups, etc.).\nFormats: &#39;user:{emailid}&#39;, &#39;serviceAccount:{emailid}&#39; When `null`, the `members` field will be omitted from the resulting object.\n  - `negate` (`bool`): Whether to negate the Condition. If true, the Condition becomes\na NAND over its non-empty fields, each field must be false for\nthe Condition overall to be satisfied. Defaults to false. When `null`, the `negate` field will be omitted from the resulting object.\n  - `regions` (`list`): The request must originate from one of the provided\ncountries/regions.\nFormat: A valid ISO 3166-1 alpha-2 code. When `null`, the `regions` field will be omitted from the resulting object.\n  - `required_access_levels` (`list`): A list of other access levels defined in the same Policy,\nreferenced by resource name. Referencing an AccessLevel which\ndoes not exist is an error. All access levels listed must be\ngranted for the Condition to be true.\nFormat: accessPolicies/{policy_id}/accessLevels/{short_name} When `null`, the `required_access_levels` field will be omitted from the resulting object.\n  - `device_policy` (`list[obj]`): Device specific restrictions, all restrictions must hold for\nthe Condition to be true. If not specified, all devices are\nallowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.device_policy.new](#fn-device_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_level_condition.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_access_level_condition` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    access_level,
    device_policy=null,
    ip_subnetworks=null,
    members=null,
    negate=null,
    regions=null,
    required_access_levels=null,
    timeouts=null
  ):: std.prune(a={
    access_level: access_level,
    device_policy: device_policy,
    ip_subnetworks: ip_subnetworks,
    members: members,
    negate: negate,
    regions: regions,
    required_access_levels: required_access_levels,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_access_level_condition.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAccessLevel':: d.fn(help='`google.string.withAccessLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the access_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `access_level` field.\n', args=[]),
  withAccessLevel(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          access_level: value,
        },
      },
    },
  },
  '#withDevicePolicy':: d.fn(help='`google.list[obj].withDevicePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the device_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDevicePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `device_policy` field.\n', args=[]),
  withDevicePolicy(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          device_policy: value,
        },
      },
    },
  },
  '#withDevicePolicyMixin':: d.fn(help='`google.list[obj].withDevicePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the device_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDevicePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `device_policy` field.\n', args=[]),
  withDevicePolicyMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          device_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withIpSubnetworks':: d.fn(help='`google.list.withIpSubnetworks` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ip_subnetworks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ip_subnetworks` field.\n', args=[]),
  withIpSubnetworks(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          ip_subnetworks: value,
        },
      },
    },
  },
  '#withMembers':: d.fn(help='`google.list.withMembers` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the members field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `members` field.\n', args=[]),
  withMembers(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  '#withNegate':: d.fn(help='`google.bool.withNegate` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the negate field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `negate` field.\n', args=[]),
  withNegate(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          negate: value,
        },
      },
    },
  },
  '#withRegions':: d.fn(help='`google.list.withRegions` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the regions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `regions` field.\n', args=[]),
  withRegions(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          regions: value,
        },
      },
    },
  },
  '#withRequiredAccessLevels':: d.fn(help='`google.list.withRequiredAccessLevels` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the required_access_levels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `required_access_levels` field.\n', args=[]),
  withRequiredAccessLevels(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          required_access_levels: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
