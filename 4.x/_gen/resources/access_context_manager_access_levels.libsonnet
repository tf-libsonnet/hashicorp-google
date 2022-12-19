local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_access_levels', url='', help='`access_context_manager_access_levels` represents the `google_access_context_manager_access_levels` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  access_levels:: {
    basic:: {
      conditions:: {
        device_policy:: {
          '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.basic.conditions.device_policy.new` constructs a new object with attributes and blocks configured for the `device_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_device_management_levels` (`list`): A list of allowed device management levels.\nAn empty list allows all management levels. Possible values: [&#34;MANAGEMENT_UNSPECIFIED&#34;, &#34;NONE&#34;, &#34;BASIC&#34;, &#34;COMPLETE&#34;] When `null`, the `allowed_device_management_levels` field will be omitted from the resulting object.\n  - `allowed_encryption_statuses` (`list`): A list of allowed encryptions statuses.\nAn empty list allows all statuses. Possible values: [&#34;ENCRYPTION_UNSPECIFIED&#34;, &#34;ENCRYPTION_UNSUPPORTED&#34;, &#34;UNENCRYPTED&#34;, &#34;ENCRYPTED&#34;] When `null`, the `allowed_encryption_statuses` field will be omitted from the resulting object.\n  - `require_admin_approval` (`bool`): Whether the device needs to be approved by the customer admin. When `null`, the `require_admin_approval` field will be omitted from the resulting object.\n  - `require_corp_owned` (`bool`): Whether the device needs to be corp owned. When `null`, the `require_corp_owned` field will be omitted from the resulting object.\n  - `require_screen_lock` (`bool`): Whether or not screenlock is required for the DevicePolicy\nto be true. Defaults to false. When `null`, the `require_screen_lock` field will be omitted from the resulting object.\n  - `os_constraints` (`list[obj]`): A list of allowed OS versions.\nAn empty list allows all types and all versions. When `null`, the `os_constraints` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.basic.conditions.device_policy.os_constraints.new](#fn-access_levelsaccess_levelsbasicconditionsos_constraintsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `device_policy` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.basic.conditions.device_policy.os_constraints.new` constructs a new object with attributes and blocks configured for the `os_constraints`\nTerraform sub block.\n\n\n\n**Args**:\n  - `minimum_version` (`string`): The minimum allowed OS version. If not set, any version\nof this OS satisfies the constraint.\nFormat: &#34;major.minor.patch&#34; such as &#34;10.5.301&#34;, &#34;9.2.1&#34;. When `null`, the `minimum_version` field will be omitted from the resulting object.\n  - `os_type` (`string`): The operating system type of the device. Possible values: [&#34;OS_UNSPECIFIED&#34;, &#34;DESKTOP_MAC&#34;, &#34;DESKTOP_WINDOWS&#34;, &#34;DESKTOP_LINUX&#34;, &#34;DESKTOP_CHROME_OS&#34;, &#34;ANDROID&#34;, &#34;IOS&#34;]\n\n**Returns**:\n  - An attribute object that represents the `os_constraints` sub block.\n', args=[]),
            new(
              os_type,
              minimum_version=null
            ):: std.prune(a={
              minimum_version: minimum_version,
              os_type: os_type,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.basic.conditions.new` constructs a new object with attributes and blocks configured for the `conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_subnetworks` (`list`): A list of CIDR block IP subnetwork specification. May be IPv4\nor IPv6.\nNote that for a CIDR IP address block, the specified IP address\nportion must be properly truncated (i.e. all the host bits must\nbe zero) or the input is considered malformed. For example,\n&#34;192.0.2.0/24&#34; is accepted but &#34;192.0.2.1/24&#34; is not. Similarly,\nfor IPv6, &#34;2001:db8::/32&#34; is accepted whereas &#34;2001:db8::1/32&#34;\nis not. The originating IP of a request must be in one of the\nlisted subnets in order for this Condition to be true.\nIf empty, all IP addresses are allowed. When `null`, the `ip_subnetworks` field will be omitted from the resulting object.\n  - `members` (`list`): An allowed list of members (users, service accounts).\nUsing groups is not supported yet.\n\nThe signed-in user originating the request must be a part of one\nof the provided members. If not specified, a request may come\nfrom any user (logged in/not logged in, not present in any\ngroups, etc.).\nFormats: &#39;user:{emailid}&#39;, &#39;serviceAccount:{emailid}&#39; When `null`, the `members` field will be omitted from the resulting object.\n  - `negate` (`bool`): Whether to negate the Condition. If true, the Condition becomes\na NAND over its non-empty fields, each field must be false for\nthe Condition overall to be satisfied. Defaults to false. When `null`, the `negate` field will be omitted from the resulting object.\n  - `regions` (`list`): The request must originate from one of the provided\ncountries/regions.\nFormat: A valid ISO 3166-1 alpha-2 code. When `null`, the `regions` field will be omitted from the resulting object.\n  - `required_access_levels` (`list`): A list of other access levels defined in the same Policy,\nreferenced by resource name. Referencing an AccessLevel which\ndoes not exist is an error. All access levels listed must be\ngranted for the Condition to be true.\nFormat: accessPolicies/{policy_id}/accessLevels/{short_name} When `null`, the `required_access_levels` field will be omitted from the resulting object.\n  - `device_policy` (`list[obj]`): Device specific restrictions, all restrictions must hold for\nthe Condition to be true. If not specified, all devices are\nallowed. When `null`, the `device_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.basic.conditions.device_policy.new](#fn-access_levelsaccess_levelsbasicdevice_policynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `conditions` sub block.\n', args=[]),
        new(
          device_policy=null,
          ip_subnetworks=null,
          members=null,
          negate=null,
          regions=null,
          required_access_levels=null
        ):: std.prune(a={
          device_policy: device_policy,
          ip_subnetworks: ip_subnetworks,
          members: members,
          negate: negate,
          regions: regions,
          required_access_levels: required_access_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.basic.new` constructs a new object with attributes and blocks configured for the `basic`\nTerraform sub block.\n\n\n\n**Args**:\n  - `combining_function` (`string`): How the conditions list should be combined to determine if a request\nis granted this AccessLevel. If AND is used, each Condition in\nconditions must be satisfied for the AccessLevel to be applied. If\nOR is used, at least one Condition in conditions must be satisfied\nfor the AccessLevel to be applied. Default value: &#34;AND&#34; Possible values: [&#34;AND&#34;, &#34;OR&#34;] When `null`, the `combining_function` field will be omitted from the resulting object.\n  - `conditions` (`list[obj]`): A set of requirements for the AccessLevel to be granted. When `null`, the `conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.basic.conditions.new](#fn-access_levelsaccess_levelsconditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `basic` sub block.\n', args=[]),
      new(
        combining_function=null,
        conditions=null
      ):: std.prune(a={
        combining_function: combining_function,
        conditions: conditions,
      }),
    },
    custom:: {
      expr:: {
        '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.custom.expr.new` constructs a new object with attributes and blocks configured for the `expr`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a file name and a position in the file When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `expr` sub block.\n', args=[]),
        new(
          expression,
          description=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.custom.new` constructs a new object with attributes and blocks configured for the `custom`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expr` (`list[obj]`): Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.\nThis page details the objects and attributes that are used to the build the CEL expressions for \ncustom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.custom.expr.new](#fn-access_levelsaccess_levelsexprnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom` sub block.\n', args=[]),
      new(
        expr=null
      ):: std.prune(a={
        expr: expr,
      }),
    },
    '#new':: d.fn(help='\n`google.access_context_manager_access_levels.access_levels.new` constructs a new object with attributes and blocks configured for the `access_levels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the AccessLevel and its use. Does not affect behavior. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Resource name for the Access Level. The short_name component must begin\nwith a letter and only include alphanumeric and &#39;_&#39;.\nFormat: accessPolicies/{policy_id}/accessLevels/{short_name}\n  - `title` (`string`): Human readable title. Must be unique within the Policy.\n  - `basic` (`list[obj]`): A set of predefined conditions for the access level and a combining function. When `null`, the `basic` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.basic.new](#fn-access_levelsbasicnew) constructor.\n  - `custom` (`list[obj]`): Custom access level conditions are set using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. \nSee CEL spec at: https://github.com/google/cel-spec. When `null`, the `custom` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.custom.new](#fn-access_levelscustomnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `access_levels` sub block.\n', args=[]),
    new(
      name,
      title,
      basic=null,
      custom=null,
      description=null
    ):: std.prune(a={
      basic: basic,
      custom: custom,
      description: description,
      name: name,
      title: title,
    }),
  },
  '#new':: d.fn(help="\n`google.access_context_manager_access_levels.new` injects a new `google_access_context_manager_access_levels` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_access_levels.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_access_levels` using the reference:\n\n    $._ref.google_access_context_manager_access_levels.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_access_levels.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `parent` (`string`): The AccessPolicy this AccessLevel lives in.\nFormat: accessPolicies/{policy_id}\n  - `access_levels` (`list[obj]`): The desired Access Levels that should replace all existing Access Levels in the Access Policy. When `null`, the `access_levels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.new](#fn-access_levelsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    access_levels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_levels',
    label=resourceLabel,
    attrs=self.newAttrs(access_levels=access_levels, parent=parent, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_access_levels.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_access_levels`\nTerraform resource.\n\nUnlike [google.access_context_manager_access_levels.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `parent` (`string`): The AccessPolicy this AccessLevel lives in.\nFormat: accessPolicies/{policy_id}\n  - `access_levels` (`list[obj]`): The desired Access Levels that should replace all existing Access Levels in the Access Policy. When `null`, the `access_levels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.access_levels.new](#fn-access_levelsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_access_levels.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_access_levels` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    access_levels=null,
    timeouts=null
  ):: std.prune(a={
    access_levels: access_levels,
    parent: parent,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_access_levels.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAccessLevels':: d.fn(help='`google.list[obj].withAccessLevels` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access_levels field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAccessLevelsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access_levels` field.\n', args=[]),
  withAccessLevels(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          access_levels: value,
        },
      },
    },
  },
  '#withAccessLevelsMixin':: d.fn(help='`google.list[obj].withAccessLevelsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the access_levels field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAccessLevels](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `access_levels` field.\n', args=[]),
  withAccessLevelsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          access_levels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
