local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_domain_mapping', url='', help='`app_engine_domain_mapping` represents the `google_app_engine_domain_mapping` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.app_engine_domain_mapping.new` injects a new `google_app_engine_domain_mapping` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_domain_mapping.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_domain_mapping` using the reference:\n\n    $._ref.google_app_engine_domain_mapping.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_domain_mapping.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `domain_name` (`string`): Relative name of the domain serving the application. Example: example.com.\n  - `override_strategy` (`string`): Whether the domain creation should override any existing mappings for this domain.\nBy default, overrides are rejected. Default value: \u0026#34;STRICT\u0026#34; Possible values: [\u0026#34;STRICT\u0026#34;, \u0026#34;OVERRIDE\u0026#34;] When `null`, the `override_strategy` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `ssl_settings` (`list[obj]`): SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. When `null`, the `ssl_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.ssl_settings.new](#fn-ssl_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    domain_name,
    override_strategy=null,
    project=null,
    ssl_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_domain_mapping',
    label=resourceLabel,
    attrs=self.newAttrs(
      domain_name=domain_name,
      override_strategy=override_strategy,
      project=project,
      ssl_settings=ssl_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_domain_mapping.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_domain_mapping`\nTerraform resource.\n\nUnlike [google.app_engine_domain_mapping.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `domain_name` (`string`): Relative name of the domain serving the application. Example: example.com.\n  - `override_strategy` (`string`): Whether the domain creation should override any existing mappings for this domain.\nBy default, overrides are rejected. Default value: &#34;STRICT&#34; Possible values: [&#34;STRICT&#34;, &#34;OVERRIDE&#34;] When `null`, the `override_strategy` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `ssl_settings` (`list[obj]`): SSL configuration for this domain. If unconfigured, this domain will not serve with SSL. When `null`, the `ssl_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.ssl_settings.new](#fn-ssl_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_domain_mapping.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_domain_mapping` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    domain_name,
    override_strategy=null,
    project=null,
    ssl_settings=null,
    timeouts=null
  ):: std.prune(a={
    domain_name: domain_name,
    override_strategy: override_strategy,
    project: project,
    ssl_settings: ssl_settings,
    timeouts: timeouts,
  }),
  ssl_settings:: {
    '#new':: d.fn(help='\n`google.app_engine_domain_mapping.ssl_settings.new` constructs a new object with attributes and blocks configured for the `ssl_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `certificate_id` (`string`): ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will\nremove SSL support.\nBy default, a managed certificate is automatically created for every domain mapping. To omit SSL support\nor to configure SSL manually, specify &#39;SslManagementType.MANUAL&#39; on a &#39;CREATE&#39; or &#39;UPDATE&#39; request. You must be\nauthorized to administer the &#39;AuthorizedCertificate&#39; resource to manually map it to a DomainMapping resource.\nExample: 12345. When `null`, the `certificate_id` field will be omitted from the resulting object.\n  - `ssl_management_type` (`string`): SSL management type for this domain. If &#39;AUTOMATIC&#39;, a managed certificate is automatically provisioned.\nIf &#39;MANUAL&#39;, &#39;certificateId&#39; must be manually specified in order to configure SSL for this domain. Possible values: [&#34;AUTOMATIC&#34;, &#34;MANUAL&#34;]\n\n**Returns**:\n  - An attribute object that represents the `ssl_settings` sub block.\n', args=[]),
    new(
      ssl_management_type,
      certificate_id=null
    ):: std.prune(a={
      certificate_id: certificate_id,
      ssl_management_type: ssl_management_type,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_domain_mapping.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDomainName':: d.fn(help='`google.string.withDomainName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the domain_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `domain_name` field.\n', args=[]),
  withDomainName(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          domain_name: value,
        },
      },
    },
  },
  '#withOverrideStrategy':: d.fn(help='`google.string.withOverrideStrategy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the override_strategy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `override_strategy` field.\n', args=[]),
  withOverrideStrategy(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          override_strategy: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSslSettings':: d.fn(help='`google.list[obj].withSslSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSslSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_settings` field.\n', args=[]),
  withSslSettings(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          ssl_settings: value,
        },
      },
    },
  },
  '#withSslSettingsMixin':: d.fn(help='`google.list[obj].withSslSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSslSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_settings` field.\n', args=[]),
  withSslSettingsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          ssl_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
