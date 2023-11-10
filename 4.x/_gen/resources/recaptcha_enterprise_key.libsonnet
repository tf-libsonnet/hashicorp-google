local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='recaptcha_enterprise_key', url='', help='`recaptcha_enterprise_key` represents the `google_recaptcha_enterprise_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  android_settings:: {
    '#new':: d.fn(help='\n`google.recaptcha_enterprise_key.android_settings.new` constructs a new object with attributes and blocks configured for the `android_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all_package_names` (`bool`): If set to true, it means allowed_package_names will not be enforced. When `null`, the `allow_all_package_names` field will be omitted from the resulting object.\n  - `allowed_package_names` (`list`): Android package names of apps allowed to use the key. Example: &#39;com.companyname.appname&#39; When `null`, the `allowed_package_names` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `android_settings` sub block.\n', args=[]),
    new(
      allow_all_package_names=null,
      allowed_package_names=null
    ):: std.prune(a={
      allow_all_package_names: allow_all_package_names,
      allowed_package_names: allowed_package_names,
    }),
  },
  ios_settings:: {
    '#new':: d.fn(help='\n`google.recaptcha_enterprise_key.ios_settings.new` constructs a new object with attributes and blocks configured for the `ios_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all_bundle_ids` (`bool`): If set to true, it means allowed_bundle_ids will not be enforced. When `null`, the `allow_all_bundle_ids` field will be omitted from the resulting object.\n  - `allowed_bundle_ids` (`list`): iOS bundle ids of apps allowed to use the key. Example: &#39;com.companyname.productname.appname&#39; When `null`, the `allowed_bundle_ids` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `ios_settings` sub block.\n', args=[]),
    new(
      allow_all_bundle_ids=null,
      allowed_bundle_ids=null
    ):: std.prune(a={
      allow_all_bundle_ids: allow_all_bundle_ids,
      allowed_bundle_ids: allowed_bundle_ids,
    }),
  },
  '#new':: d.fn(help="\n`google.recaptcha_enterprise_key.new` injects a new `google_recaptcha_enterprise_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.recaptcha_enterprise_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.recaptcha_enterprise_key` using the reference:\n\n    $._ref.google_recaptcha_enterprise_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_recaptcha_enterprise_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Human-readable display name of this key. Modifiable by user.\n  - `labels` (`obj`): See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `android_settings` (`list[obj]`): Settings for keys that can be used by Android apps. When `null`, the `android_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.android_settings.new](#fn-android_settingsnew) constructor.\n  - `ios_settings` (`list[obj]`): Settings for keys that can be used by iOS apps. When `null`, the `ios_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.ios_settings.new](#fn-ios_settingsnew) constructor.\n  - `testing_options` (`list[obj]`): Options for user acceptance testing. When `null`, the `testing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.testing_options.new](#fn-testing_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.timeouts.new](#fn-timeoutsnew) constructor.\n  - `web_settings` (`list[obj]`): Settings for keys that can be used by websites. When `null`, the `web_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.web_settings.new](#fn-web_settingsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    android_settings=null,
    ios_settings=null,
    labels=null,
    project=null,
    testing_options=null,
    timeouts=null,
    web_settings=null,
    _meta={}
  ):: tf.withResource(
    type='google_recaptcha_enterprise_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      android_settings=android_settings,
      display_name=display_name,
      ios_settings=ios_settings,
      labels=labels,
      project=project,
      testing_options=testing_options,
      timeouts=timeouts,
      web_settings=web_settings
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.recaptcha_enterprise_key.newAttrs` constructs a new object with attributes and blocks configured for the `recaptcha_enterprise_key`\nTerraform resource.\n\nUnlike [google.recaptcha_enterprise_key.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Human-readable display name of this key. Modifiable by user.\n  - `labels` (`obj`): See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `android_settings` (`list[obj]`): Settings for keys that can be used by Android apps. When `null`, the `android_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.android_settings.new](#fn-android_settingsnew) constructor.\n  - `ios_settings` (`list[obj]`): Settings for keys that can be used by iOS apps. When `null`, the `ios_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.ios_settings.new](#fn-ios_settingsnew) constructor.\n  - `testing_options` (`list[obj]`): Options for user acceptance testing. When `null`, the `testing_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.testing_options.new](#fn-testing_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.timeouts.new](#fn-timeoutsnew) constructor.\n  - `web_settings` (`list[obj]`): Settings for keys that can be used by websites. When `null`, the `web_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.recaptcha_enterprise_key.web_settings.new](#fn-web_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `recaptcha_enterprise_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    android_settings=null,
    ios_settings=null,
    labels=null,
    project=null,
    testing_options=null,
    timeouts=null,
    web_settings=null
  ):: std.prune(a={
    android_settings: android_settings,
    display_name: display_name,
    ios_settings: ios_settings,
    labels: labels,
    project: project,
    testing_options: testing_options,
    timeouts: timeouts,
    web_settings: web_settings,
  }),
  testing_options:: {
    '#new':: d.fn(help='\n`google.recaptcha_enterprise_key.testing_options.new` constructs a new object with attributes and blocks configured for the `testing_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `testing_challenge` (`string`): For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE When `null`, the `testing_challenge` field will be omitted from the resulting object.\n  - `testing_score` (`number`): All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive. When `null`, the `testing_score` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `testing_options` sub block.\n', args=[]),
    new(
      testing_challenge=null,
      testing_score=null
    ):: std.prune(a={
      testing_challenge: testing_challenge,
      testing_score: testing_score,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.recaptcha_enterprise_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  web_settings:: {
    '#new':: d.fn(help='\n`google.recaptcha_enterprise_key.web_settings.new` constructs a new object with attributes and blocks configured for the `web_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_all_domains` (`bool`): If set to true, it means allowed_domains will not be enforced. When `null`, the `allow_all_domains` field will be omitted from the resulting object.\n  - `allow_amp_traffic` (`bool`): If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type. When `null`, the `allow_amp_traffic` field will be omitted from the resulting object.\n  - `allowed_domains` (`list`): Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: &#39;example.com&#39; or &#39;subdomain.example.com&#39; When `null`, the `allowed_domains` field will be omitted from the resulting object.\n  - `challenge_security_preference` (`string`): Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY When `null`, the `challenge_security_preference` field will be omitted from the resulting object.\n  - `integration_type` (`string`): Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE\n\n**Returns**:\n  - An attribute object that represents the `web_settings` sub block.\n', args=[]),
    new(
      integration_type,
      allow_all_domains=null,
      allow_amp_traffic=null,
      allowed_domains=null,
      challenge_security_preference=null
    ):: std.prune(a={
      allow_all_domains: allow_all_domains,
      allow_amp_traffic: allow_amp_traffic,
      allowed_domains: allowed_domains,
      challenge_security_preference: challenge_security_preference,
      integration_type: integration_type,
    }),
  },
  '#withAndroidSettings':: d.fn(help='`google.list[obj].withAndroidSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the android_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAndroidSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `android_settings` field.\n', args=[]),
  withAndroidSettings(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          android_settings: value,
        },
      },
    },
  },
  '#withAndroidSettingsMixin':: d.fn(help='`google.list[obj].withAndroidSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the android_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAndroidSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `android_settings` field.\n', args=[]),
  withAndroidSettingsMixin(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          android_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withIosSettings':: d.fn(help='`google.list[obj].withIosSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ios_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIosSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ios_settings` field.\n', args=[]),
  withIosSettings(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          ios_settings: value,
        },
      },
    },
  },
  '#withIosSettingsMixin':: d.fn(help='`google.list[obj].withIosSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ios_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIosSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ios_settings` field.\n', args=[]),
  withIosSettingsMixin(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          ios_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTestingOptions':: d.fn(help='`google.list[obj].withTestingOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the testing_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTestingOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `testing_options` field.\n', args=[]),
  withTestingOptions(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          testing_options: value,
        },
      },
    },
  },
  '#withTestingOptionsMixin':: d.fn(help='`google.list[obj].withTestingOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the testing_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTestingOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `testing_options` field.\n', args=[]),
  withTestingOptionsMixin(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          testing_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWebSettings':: d.fn(help='`google.list[obj].withWebSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the web_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWebSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `web_settings` field.\n', args=[]),
  withWebSettings(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          web_settings: value,
        },
      },
    },
  },
  '#withWebSettingsMixin':: d.fn(help='`google.list[obj].withWebSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the web_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWebSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `web_settings` field.\n', args=[]),
  withWebSettingsMixin(resourceLabel, value): {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          web_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
