local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='discovery_engine_data_store', url='', help='`discovery_engine_data_store` represents the `google_discovery_engine_data_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.discovery_engine_data_store.new` injects a new `google_discovery_engine_data_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.discovery_engine_data_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.discovery_engine_data_store` using the reference:\n\n    $._ref.google_discovery_engine_data_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_discovery_engine_data_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `content_config` (`string`): The content config of the data store. Possible values: [\u0026#34;NO_CONTENT\u0026#34;, \u0026#34;CONTENT_REQUIRED\u0026#34;, \u0026#34;PUBLIC_WEBSITE\u0026#34;]\n  - `create_advanced_site_search` (`bool`): If true, an advanced data store for site search will be created. If the\ndata store is not configured as site search (GENERIC vertical and\nPUBLIC_WEBSITE contentConfig), this flag will be ignored. When `null`, the `create_advanced_site_search` field will be omitted from the resulting object.\n  - `data_store_id` (`string`): The unique id of the data store.\n  - `display_name` (`string`): The display name of the data store. This field must be a UTF-8 encoded\nstring with a length limit of 128 characters.\n  - `industry_vertical` (`string`): The industry vertical that the data store registers. Possible values: [\u0026#34;GENERIC\u0026#34;, \u0026#34;MEDIA\u0026#34;]\n  - `location` (`string`): The geographic location where the data store should reside. The value can\nonly be one of \u0026#34;global\u0026#34;, \u0026#34;us\u0026#34; and \u0026#34;eu\u0026#34;.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `solution_types` (`list`): The solutions that the data store enrolls. Possible values: [\u0026#34;SOLUTION_TYPE_RECOMMENDATION\u0026#34;, \u0026#34;SOLUTION_TYPE_SEARCH\u0026#34;, \u0026#34;SOLUTION_TYPE_CHAT\u0026#34;] When `null`, the `solution_types` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_data_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    content_config,
    data_store_id,
    display_name,
    industry_vertical,
    location,
    create_advanced_site_search=null,
    project=null,
    solution_types=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_discovery_engine_data_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      content_config=content_config,
      create_advanced_site_search=create_advanced_site_search,
      data_store_id=data_store_id,
      display_name=display_name,
      industry_vertical=industry_vertical,
      location=location,
      project=project,
      solution_types=solution_types,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.discovery_engine_data_store.newAttrs` constructs a new object with attributes and blocks configured for the `discovery_engine_data_store`\nTerraform resource.\n\nUnlike [google.discovery_engine_data_store.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `content_config` (`string`): The content config of the data store. Possible values: [&#34;NO_CONTENT&#34;, &#34;CONTENT_REQUIRED&#34;, &#34;PUBLIC_WEBSITE&#34;]\n  - `create_advanced_site_search` (`bool`): If true, an advanced data store for site search will be created. If the\ndata store is not configured as site search (GENERIC vertical and\nPUBLIC_WEBSITE contentConfig), this flag will be ignored. When `null`, the `create_advanced_site_search` field will be omitted from the resulting object.\n  - `data_store_id` (`string`): The unique id of the data store.\n  - `display_name` (`string`): The display name of the data store. This field must be a UTF-8 encoded\nstring with a length limit of 128 characters.\n  - `industry_vertical` (`string`): The industry vertical that the data store registers. Possible values: [&#34;GENERIC&#34;, &#34;MEDIA&#34;]\n  - `location` (`string`): The geographic location where the data store should reside. The value can\nonly be one of &#34;global&#34;, &#34;us&#34; and &#34;eu&#34;.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `solution_types` (`list`): The solutions that the data store enrolls. Possible values: [&#34;SOLUTION_TYPE_RECOMMENDATION&#34;, &#34;SOLUTION_TYPE_SEARCH&#34;, &#34;SOLUTION_TYPE_CHAT&#34;] When `null`, the `solution_types` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.discovery_engine_data_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `discovery_engine_data_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    content_config,
    data_store_id,
    display_name,
    industry_vertical,
    location,
    create_advanced_site_search=null,
    project=null,
    solution_types=null,
    timeouts=null
  ):: std.prune(a={
    content_config: content_config,
    create_advanced_site_search: create_advanced_site_search,
    data_store_id: data_store_id,
    display_name: display_name,
    industry_vertical: industry_vertical,
    location: location,
    project: project,
    solution_types: solution_types,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.discovery_engine_data_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withContentConfig':: d.fn(help='`google.string.withContentConfig` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the content_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `content_config` field.\n', args=[]),
  withContentConfig(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          content_config: value,
        },
      },
    },
  },
  '#withCreateAdvancedSiteSearch':: d.fn(help='`google.bool.withCreateAdvancedSiteSearch` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the create_advanced_site_search field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `create_advanced_site_search` field.\n', args=[]),
  withCreateAdvancedSiteSearch(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          create_advanced_site_search: value,
        },
      },
    },
  },
  '#withDataStoreId':: d.fn(help='`google.string.withDataStoreId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the data_store_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `data_store_id` field.\n', args=[]),
  withDataStoreId(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          data_store_id: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withIndustryVertical':: d.fn(help='`google.string.withIndustryVertical` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the industry_vertical field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `industry_vertical` field.\n', args=[]),
  withIndustryVertical(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          industry_vertical: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSolutionTypes':: d.fn(help='`google.list.withSolutionTypes` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the solution_types field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `solution_types` field.\n', args=[]),
  withSolutionTypes(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          solution_types: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_discovery_engine_data_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
