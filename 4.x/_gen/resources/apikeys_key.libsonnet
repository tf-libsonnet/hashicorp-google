local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='apikeys_key', url='', help='`apikeys_key` represents the `google_apikeys_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.apikeys_key.new` injects a new `google_apikeys_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.apikeys_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.apikeys_key` using the reference:\n\n    $._ref.google_apikeys_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_apikeys_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Human-readable display name of this API key. Modifiable by user. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `restrictions` (`list[obj]`): Key restrictions. When `null`, the `restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.new](#fn-restrictionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    display_name=null,
    project=null,
    restrictions=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apikeys_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      name=name,
      project=project,
      restrictions=restrictions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.apikeys_key.newAttrs` constructs a new object with attributes and blocks configured for the `apikeys_key`\nTerraform resource.\n\nUnlike [google.apikeys_key.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Human-readable display name of this API key. Modifiable by user. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `restrictions` (`list[obj]`): Key restrictions. When `null`, the `restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.new](#fn-restrictionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apikeys_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    display_name=null,
    project=null,
    restrictions=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    name: name,
    project: project,
    restrictions: restrictions,
    timeouts: timeouts,
  }),
  restrictions:: {
    android_key_restrictions:: {
      allowed_applications:: {
        '#new':: d.fn(help='\n`google.apikeys_key.restrictions.android_key_restrictions.allowed_applications.new` constructs a new object with attributes and blocks configured for the `allowed_applications`\nTerraform sub block.\n\n\n\n**Args**:\n  - `package_name` (`string`): The package name of the application.\n  - `sha1_fingerprint` (`string`): The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter.\n\n**Returns**:\n  - An attribute object that represents the `allowed_applications` sub block.\n', args=[]),
        new(
          package_name,
          sha1_fingerprint
        ):: std.prune(a={
          package_name: package_name,
          sha1_fingerprint: sha1_fingerprint,
        }),
      },
      '#new':: d.fn(help='\n`google.apikeys_key.restrictions.android_key_restrictions.new` constructs a new object with attributes and blocks configured for the `android_key_restrictions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_applications` (`list[obj]`): A list of Android applications that are allowed to make API calls with this key. When `null`, the `allowed_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.android_key_restrictions.allowed_applications.new](#fn-restrictionsrestrictionsallowed_applicationsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `android_key_restrictions` sub block.\n', args=[]),
      new(
        allowed_applications=null
      ):: std.prune(a={
        allowed_applications: allowed_applications,
      }),
    },
    api_targets:: {
      '#new':: d.fn(help='\n`google.apikeys_key.restrictions.api_targets.new` constructs a new object with attributes and blocks configured for the `api_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `methods` (`list`): Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (*) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*` When `null`, the `methods` field will be omitted from the resulting object.\n  - `service` (`string`): The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project.\n\n**Returns**:\n  - An attribute object that represents the `api_targets` sub block.\n', args=[]),
      new(
        service,
        methods=null
      ):: std.prune(a={
        methods: methods,
        service: service,
      }),
    },
    browser_key_restrictions:: {
      '#new':: d.fn(help='\n`google.apikeys_key.restrictions.browser_key_restrictions.new` constructs a new object with attributes and blocks configured for the `browser_key_restrictions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_referrers` (`list`): A list of regular expressions for the referrer URLs that are allowed to make API calls with this key.\n\n**Returns**:\n  - An attribute object that represents the `browser_key_restrictions` sub block.\n', args=[]),
      new(
        allowed_referrers
      ):: std.prune(a={
        allowed_referrers: allowed_referrers,
      }),
    },
    ios_key_restrictions:: {
      '#new':: d.fn(help='\n`google.apikeys_key.restrictions.ios_key_restrictions.new` constructs a new object with attributes and blocks configured for the `ios_key_restrictions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_bundle_ids` (`list`): A list of bundle IDs that are allowed when making API calls with this key.\n\n**Returns**:\n  - An attribute object that represents the `ios_key_restrictions` sub block.\n', args=[]),
      new(
        allowed_bundle_ids
      ):: std.prune(a={
        allowed_bundle_ids: allowed_bundle_ids,
      }),
    },
    '#new':: d.fn(help='\n`google.apikeys_key.restrictions.new` constructs a new object with attributes and blocks configured for the `restrictions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `android_key_restrictions` (`list[obj]`): The Android apps that are allowed to use the key. When `null`, the `android_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.android_key_restrictions.new](#fn-restrictionsandroid_key_restrictionsnew) constructor.\n  - `api_targets` (`list[obj]`): A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed. When `null`, the `api_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.api_targets.new](#fn-restrictionsapi_targetsnew) constructor.\n  - `browser_key_restrictions` (`list[obj]`): The HTTP referrers (websites) that are allowed to use the key. When `null`, the `browser_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.browser_key_restrictions.new](#fn-restrictionsbrowser_key_restrictionsnew) constructor.\n  - `ios_key_restrictions` (`list[obj]`): The iOS apps that are allowed to use the key. When `null`, the `ios_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.ios_key_restrictions.new](#fn-restrictionsios_key_restrictionsnew) constructor.\n  - `server_key_restrictions` (`list[obj]`): The IP addresses of callers that are allowed to use the key. When `null`, the `server_key_restrictions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apikeys_key.restrictions.server_key_restrictions.new](#fn-restrictionsserver_key_restrictionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `restrictions` sub block.\n', args=[]),
    new(
      android_key_restrictions=null,
      api_targets=null,
      browser_key_restrictions=null,
      ios_key_restrictions=null,
      server_key_restrictions=null
    ):: std.prune(a={
      android_key_restrictions: android_key_restrictions,
      api_targets: api_targets,
      browser_key_restrictions: browser_key_restrictions,
      ios_key_restrictions: ios_key_restrictions,
      server_key_restrictions: server_key_restrictions,
    }),
    server_key_restrictions:: {
      '#new':: d.fn(help='\n`google.apikeys_key.restrictions.server_key_restrictions.new` constructs a new object with attributes and blocks configured for the `server_key_restrictions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_ips` (`list`): A list of the caller IP addresses that are allowed to make API calls with this key.\n\n**Returns**:\n  - An attribute object that represents the `server_key_restrictions` sub block.\n', args=[]),
      new(
        allowed_ips
      ):: std.prune(a={
        allowed_ips: allowed_ips,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.apikeys_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRestrictions':: d.fn(help='`google.list[obj].withRestrictions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restrictions field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestrictionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restrictions` field.\n', args=[]),
  withRestrictions(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          restrictions: value,
        },
      },
    },
  },
  '#withRestrictionsMixin':: d.fn(help='`google.list[obj].withRestrictionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restrictions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestrictions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restrictions` field.\n', args=[]),
  withRestrictionsMixin(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          restrictions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_apikeys_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
