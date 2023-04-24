local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_commitment', url='', help='`compute_region_commitment` represents the `google_compute_region_commitment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  license_resource:: {
    '#new':: d.fn(help='\n`google.compute_region_commitment.license_resource.new` constructs a new object with attributes and blocks configured for the `license_resource`\nTerraform sub block.\n\n\n\n**Args**:\n  - `amount` (`string`): The number of licenses purchased. When `null`, the `amount` field will be omitted from the resulting object.\n  - `cores_per_license` (`string`): Specifies the core range of the instance for which this license applies. When `null`, the `cores_per_license` field will be omitted from the resulting object.\n  - `license` (`string`): Any applicable license URI.\n\n**Returns**:\n  - An attribute object that represents the `license_resource` sub block.\n', args=[]),
    new(
      license,
      amount=null,
      cores_per_license=null
    ):: std.prune(a={
      amount: amount,
      cores_per_license: cores_per_license,
      license: license,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_region_commitment.new` injects a new `google_compute_region_commitment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_commitment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_commitment` using the reference:\n\n    $._ref.google_compute_region_commitment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_commitment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_renew` (`bool`): Specifies whether to enable automatic renewal for the commitment. \nThe default value is false if not specified. \nIf the field is set to true, the commitment will be automatically renewed for either \none or three years according to the terms of the existing commitment. When `null`, the `auto_renew` field will be omitted from the resulting object.\n  - `category` (`string`): The category of the commitment. Category MACHINE specifies commitments composed of\nmachine resources such as VCPU or MEMORY, listed in resources. Category LICENSE\nspecifies commitments composed of software licenses, listed in licenseResources.\nNote that only MACHINE commitments should have a Type specified. Possible values: [\u0026#34;LICENSE\u0026#34;, \u0026#34;MACHINE\u0026#34;] When `null`, the `category` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `plan` (`string`): The plan for this commitment, which determines duration and discount rate.\nThe currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [\u0026#34;TWELVE_MONTH\u0026#34;, \u0026#34;THIRTY_SIX_MONTH\u0026#34;]\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where this commitment may be used. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of commitment, which affects the discount rate and the eligible resources. \nType MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized\nmachines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to\naccelerator optimized machines. Possible values: [\u0026#34;MEMORY_OPTIMIZED\u0026#34;, \u0026#34;ACCELERATOR_OPTIMIZED\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `license_resource` (`list[obj]`): The license specification required as part of a license commitment. When `null`, the `license_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.license_resource.new](#fn-license_resourcenew) constructor.\n  - `resources` (`list[obj]`): A list of commitment amounts for particular resources. \nNote that VCPU and MEMORY resource commitments must occur together. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.resources.new](#fn-resourcesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    plan,
    auto_renew=null,
    category=null,
    description=null,
    license_resource=null,
    project=null,
    region=null,
    resources=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_commitment',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_renew=auto_renew,
      category=category,
      description=description,
      license_resource=license_resource,
      name=name,
      plan=plan,
      project=project,
      region=region,
      resources=resources,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_commitment.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_commitment`\nTerraform resource.\n\nUnlike [google.compute_region_commitment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_renew` (`bool`): Specifies whether to enable automatic renewal for the commitment. \nThe default value is false if not specified. \nIf the field is set to true, the commitment will be automatically renewed for either \none or three years according to the terms of the existing commitment. When `null`, the `auto_renew` field will be omitted from the resulting object.\n  - `category` (`string`): The category of the commitment. Category MACHINE specifies commitments composed of\nmachine resources such as VCPU or MEMORY, listed in resources. Category LICENSE\nspecifies commitments composed of software licenses, listed in licenseResources.\nNote that only MACHINE commitments should have a Type specified. Possible values: [&#34;LICENSE&#34;, &#34;MACHINE&#34;] When `null`, the `category` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `plan` (`string`): The plan for this commitment, which determines duration and discount rate.\nThe currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years). Possible values: [&#34;TWELVE_MONTH&#34;, &#34;THIRTY_SIX_MONTH&#34;]\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where this commitment may be used. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of commitment, which affects the discount rate and the eligible resources. \nType MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized\nmachines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to\naccelerator optimized machines. Possible values: [&#34;MEMORY_OPTIMIZED&#34;, &#34;ACCELERATOR_OPTIMIZED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `license_resource` (`list[obj]`): The license specification required as part of a license commitment. When `null`, the `license_resource` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.license_resource.new](#fn-license_resourcenew) constructor.\n  - `resources` (`list[obj]`): A list of commitment amounts for particular resources. \nNote that VCPU and MEMORY resource commitments must occur together. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.resources.new](#fn-resourcesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_commitment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_commitment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    plan,
    auto_renew=null,
    category=null,
    description=null,
    license_resource=null,
    project=null,
    region=null,
    resources=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    auto_renew: auto_renew,
    category: category,
    description: description,
    license_resource: license_resource,
    name: name,
    plan: plan,
    project: project,
    region: region,
    resources: resources,
    timeouts: timeouts,
    type: type,
  }),
  resources:: {
    '#new':: d.fn(help='\n`google.compute_region_commitment.resources.new` constructs a new object with attributes and blocks configured for the `resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_type` (`string`): Name of the accelerator type resource. Applicable only when the type is ACCELERATOR. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n  - `amount` (`string`): The amount of the resource purchased (in a type-dependent unit,\nsuch as bytes). For vCPUs, this can just be an integer. For memory,\nthis must be provided in MB. Memory must be a multiple of 256 MB,\nwith up to 6.5GB of memory per every vCPU. When `null`, the `amount` field will be omitted from the resulting object.\n  - `type` (`string`): Type of resource for which this commitment applies.\nPossible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR. When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `resources` sub block.\n', args=[]),
    new(
      accelerator_type=null,
      amount=null,
      type=null
    ):: std.prune(a={
      accelerator_type: accelerator_type,
      amount: amount,
      type: type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_commitment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAutoRenew':: d.fn(help='`google.bool.withAutoRenew` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the auto_renew field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `auto_renew` field.\n', args=[]),
  withAutoRenew(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          auto_renew: value,
        },
      },
    },
  },
  '#withCategory':: d.fn(help='`google.string.withCategory` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the category field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `category` field.\n', args=[]),
  withCategory(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          category: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLicenseResource':: d.fn(help='`google.list[obj].withLicenseResource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the license_resource field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLicenseResourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `license_resource` field.\n', args=[]),
  withLicenseResource(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          license_resource: value,
        },
      },
    },
  },
  '#withLicenseResourceMixin':: d.fn(help='`google.list[obj].withLicenseResourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the license_resource field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLicenseResource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `license_resource` field.\n', args=[]),
  withLicenseResourceMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          license_resource+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPlan':: d.fn(help='`google.string.withPlan` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the plan field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `plan` field.\n', args=[]),
  withPlan(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          plan: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withResources':: d.fn(help='`google.list[obj].withResources` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resources field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withResourcesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resources` field.\n', args=[]),
  withResources(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          resources: value,
        },
      },
    },
  },
  '#withResourcesMixin':: d.fn(help='`google.list[obj].withResourcesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the resources field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withResources](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `resources` field.\n', args=[]),
  withResourcesMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          resources+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_compute_region_commitment+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}
