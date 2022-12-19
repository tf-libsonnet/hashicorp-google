local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_application_url_dispatch_rules', url='', help='`app_engine_application_url_dispatch_rules` represents the `google_app_engine_application_url_dispatch_rules` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  dispatch_rules:: {
    '#new':: d.fn(help='\n`google.app_engine_application_url_dispatch_rules.dispatch_rules.new` constructs a new object with attributes and blocks configured for the `dispatch_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `domain` (`string`): Domain name to match against. The wildcard &#34;*&#34; is supported if specified before a period: &#34;*.&#34;.\nDefaults to matching all domains: &#34;*&#34;. When `null`, the `domain` field will be omitted from the resulting object.\n  - `path` (`string`): Pathname within the host. Must start with a &#34;/&#34;. A single &#34;*&#34; can be included at the end of the path.\nThe sum of the lengths of the domain and path may not exceed 100 characters.\n  - `service` (`string`): Pathname within the host. Must start with a &#34;/&#34;. A single &#34;*&#34; can be included at the end of the path.\nThe sum of the lengths of the domain and path may not exceed 100 characters.\n\n**Returns**:\n  - An attribute object that represents the `dispatch_rules` sub block.\n', args=[]),
    new(
      path,
      service,
      domain=null
    ):: std.prune(a={
      domain: domain,
      path: path,
      service: service,
    }),
  },
  '#new':: d.fn(help="\n`google.app_engine_application_url_dispatch_rules.new` injects a new `google_app_engine_application_url_dispatch_rules` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_application_url_dispatch_rules.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_application_url_dispatch_rules` using the reference:\n\n    $._ref.google_app_engine_application_url_dispatch_rules.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_application_url_dispatch_rules.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `dispatch_rules` (`list[obj]`): Rules to match an HTTP request and dispatch that request to a service. When `null`, the `dispatch_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.dispatch_rules.new](#fn-appengineapplicationurldispatchrulesdispatchrulesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.timeouts.new](#fn-appengineapplicationurldispatchrulestimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dispatch_rules=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_application_url_dispatch_rules',
    label=resourceLabel,
    attrs=self.newAttrs(dispatch_rules=dispatch_rules, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_application_url_dispatch_rules.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_application_url_dispatch_rules`\nTerraform resource.\n\nUnlike [google.app_engine_application_url_dispatch_rules.new](#fn-appengineapplicationurldispatchrulesnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `dispatch_rules` (`list[obj]`): Rules to match an HTTP request and dispatch that request to a service. When `null`, the `dispatch_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.dispatch_rules.new](#fn-appengineapplicationurldispatchrulesdispatchrulesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application_url_dispatch_rules.timeouts.new](#fn-appengineapplicationurldispatchrulestimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_application_url_dispatch_rules` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dispatch_rules=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dispatch_rules: dispatch_rules,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_application_url_dispatch_rules.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDispatchRules':: d.fn(help='`google.app_engine_application_url_dispatch_rules.withDispatchRules` constructs a mixin object that can be merged into the `app_engine_application_url_dispatch_rules`\nTerraform resource block to set or update the dispatch_rules field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `dispatch_rules` field.\n', args=[]),
  withDispatchRules(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          dispatch_rules: value,
        },
      },
    },
  },
  '#withDispatchRulesMixin':: d.fn(help='`google.app_engine_application_url_dispatch_rules.withDispatchRulesMixin` constructs a mixin object that can be merged into the `app_engine_application_url_dispatch_rules`\nTerraform resource block to set or update the dispatch_rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.app_engine_application_url_dispatch_rules.withDispatchRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `dispatch_rules` field.\n', args=[]),
  withDispatchRulesMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          dispatch_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.app_engine_application_url_dispatch_rules.withProject` constructs a mixin object that can be merged into the `app_engine_application_url_dispatch_rules`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.app_engine_application_url_dispatch_rules.withTimeouts` constructs a mixin object that can be merged into the `app_engine_application_url_dispatch_rules`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.app_engine_application_url_dispatch_rules.withTimeoutsMixin` constructs a mixin object that can be merged into the `app_engine_application_url_dispatch_rules`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.app_engine_application_url_dispatch_rules.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
