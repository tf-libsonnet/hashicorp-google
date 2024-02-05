local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='scc_organization_custom_module', url='', help='`scc_organization_custom_module` represents the `google_scc_organization_custom_module` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  custom_config:: {
    custom_output:: {
      '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.custom_output.new` constructs a new object with attributes and blocks configured for the `custom_output`\nTerraform sub block.\n\n\n\n**Args**:\n  - `properties` (`list[obj]`): A list of custom output properties to add to the finding. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.custom_output.properties.new](#fn-custom_configcustom_configpropertiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_output` sub block.\n', args=[]),
      new(
        properties=null
      ):: std.prune(a={
        properties: properties,
      }),
      properties:: {
        '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.custom_output.properties.new` constructs a new object with attributes and blocks configured for the `properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the property for the custom output. When `null`, the `name` field will be omitted from the resulting object.\n  - `value_expression` (`list[obj]`): The CEL expression for the custom output. A resource property can be specified\nto return the value of the property or a text string enclosed in quotation marks. When `null`, the `value_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.custom_output.properties.value_expression.new](#fn-custom_configcustom_configcustom_outputvalue_expressionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `properties` sub block.\n', args=[]),
        new(
          name=null,
          value_expression=null
        ):: std.prune(a={
          name: name,
          value_expression: value_expression,
        }),
        value_expression:: {
          '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.custom_output.properties.value_expression.new` constructs a new object with attributes and blocks configured for the `value_expression`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the\nexpression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a\nfile name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can\nbe used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `value_expression` sub block.\n', args=[]),
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
      },
    },
    '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.new` constructs a new object with attributes and blocks configured for the `custom_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Text that describes the vulnerability or misconfiguration that the custom\nmodule detects. This explanation is returned with each finding instance to\nhelp investigators understand the detected issue. The text must be enclosed in quotation marks. When `null`, the `description` field will be omitted from the resulting object.\n  - `recommendation` (`string`): An explanation of the recommended steps that security teams can take to resolve\nthe detected issue. This explanation is returned with each finding generated by\nthis module in the nextSteps property of the finding JSON.\n  - `severity` (`string`): The severity to assign to findings generated by the module. Possible values: [&#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;]\n  - `custom_output` (`list[obj]`): Custom output properties. When `null`, the `custom_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.custom_output.new](#fn-custom_configcustom_outputnew) constructor.\n  - `predicate` (`list[obj]`): The CEL expression to evaluate to produce findings. When the expression evaluates\nto true against a resource, a finding is generated. When `null`, the `predicate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.predicate.new](#fn-custom_configpredicatenew) constructor.\n  - `resource_selector` (`list[obj]`): The resource types that the custom module operates on. Each custom module\ncan specify up to 5 resource types. When `null`, the `resource_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.resource_selector.new](#fn-custom_configresource_selectornew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_config` sub block.\n', args=[]),
    new(
      recommendation,
      severity,
      custom_output=null,
      description=null,
      predicate=null,
      resource_selector=null
    ):: std.prune(a={
      custom_output: custom_output,
      description: description,
      predicate: predicate,
      recommendation: recommendation,
      resource_selector: resource_selector,
      severity: severity,
    }),
    predicate:: {
      '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.predicate.new` constructs a new object with attributes and blocks configured for the `predicate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Description of the expression. This is a longer text which describes the\nexpression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.\n  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.\n  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a\nfile name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.\n  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can\nbe used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `predicate` sub block.\n', args=[]),
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
    resource_selector:: {
      '#new':: d.fn(help='\n`google.scc_organization_custom_module.custom_config.resource_selector.new` constructs a new object with attributes and blocks configured for the `resource_selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_types` (`list`): The resource types to run the detector on.\n\n**Returns**:\n  - An attribute object that represents the `resource_selector` sub block.\n', args=[]),
      new(
        resource_types
      ):: std.prune(a={
        resource_types: resource_types,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.scc_organization_custom_module.new` injects a new `google_scc_organization_custom_module` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.scc_organization_custom_module.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.scc_organization_custom_module` using the reference:\n\n    $._ref.google_scc_organization_custom_module.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_scc_organization_custom_module.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This\ndisplay name becomes the finding category for all findings that are\nreturned by this custom module. The display name must be between 1 and\n128 characters, start with a lowercase letter, and contain alphanumeric\ncharacters or underscores only.\n  - `enablement_state` (`string`): The enablement state of the custom module. Possible values: [\u0026#34;ENABLED\u0026#34;, \u0026#34;DISABLED\u0026#34;]\n  - `organization` (`string`): Numerical ID of the parent organization.\n  - `custom_config` (`list[obj]`): The user specified custom configuration for the module. When `null`, the `custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.new](#fn-custom_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    enablement_state,
    organization,
    custom_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_organization_custom_module',
    label=resourceLabel,
    attrs=self.newAttrs(
      custom_config=custom_config,
      display_name=display_name,
      enablement_state=enablement_state,
      organization=organization,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.scc_organization_custom_module.newAttrs` constructs a new object with attributes and blocks configured for the `scc_organization_custom_module`\nTerraform resource.\n\nUnlike [google.scc_organization_custom_module.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This\ndisplay name becomes the finding category for all findings that are\nreturned by this custom module. The display name must be between 1 and\n128 characters, start with a lowercase letter, and contain alphanumeric\ncharacters or underscores only.\n  - `enablement_state` (`string`): The enablement state of the custom module. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]\n  - `organization` (`string`): Numerical ID of the parent organization.\n  - `custom_config` (`list[obj]`): The user specified custom configuration for the module. When `null`, the `custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.custom_config.new](#fn-custom_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_organization_custom_module.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_organization_custom_module` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    enablement_state,
    organization,
    custom_config=null,
    timeouts=null
  ):: std.prune(a={
    custom_config: custom_config,
    display_name: display_name,
    enablement_state: enablement_state,
    organization: organization,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.scc_organization_custom_module.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCustomConfig':: d.fn(help='`google.list[obj].withCustomConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the custom_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCustomConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `custom_config` field.\n', args=[]),
  withCustomConfig(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          custom_config: value,
        },
      },
    },
  },
  '#withCustomConfigMixin':: d.fn(help='`google.list[obj].withCustomConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the custom_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCustomConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `custom_config` field.\n', args=[]),
  withCustomConfigMixin(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          custom_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnablementState':: d.fn(help='`google.string.withEnablementState` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the enablement_state field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `enablement_state` field.\n', args=[]),
  withEnablementState(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          enablement_state: value,
        },
      },
    },
  },
  '#withOrganization':: d.fn(help='`google.string.withOrganization` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization` field.\n', args=[]),
  withOrganization(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_scc_organization_custom_module+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
