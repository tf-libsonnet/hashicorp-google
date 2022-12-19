local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='app_engine_application', url='', help='`app_engine_application` represents the `google_app_engine_application` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  feature_settings:: {
    '#new':: d.fn(help='\n`google.app_engine_application.feature_settings.new` constructs a new object with attributes and blocks configured for the `feature_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `split_health_checks` (`bool`): \n\n**Returns**:\n  - An attribute object that represents the `feature_settings` sub block.\n', args=[]),
    new(
      split_health_checks
    ):: std.prune(a={
      split_health_checks: split_health_checks,
    }),
  },
  iap:: {
    '#new':: d.fn(help='\n`google.app_engine_application.iap.new` constructs a new object with attributes and blocks configured for the `iap`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Adapted for use with the app When `null`, the `enabled` field will be omitted from the resulting object.\n  - `oauth2_client_id` (`string`): OAuth2 client ID to use for the authentication flow.\n  - `oauth2_client_secret` (`string`): OAuth2 client secret to use for the authentication flow. The SHA-256 hash of the value is returned in the oauth2ClientSecretSha256 field.\n\n**Returns**:\n  - An attribute object that represents the `iap` sub block.\n', args=[]),
    new(
      oauth2_client_id,
      oauth2_client_secret,
      enabled=null
    ):: std.prune(a={
      enabled: enabled,
      oauth2_client_id: oauth2_client_id,
      oauth2_client_secret: oauth2_client_secret,
    }),
  },
  '#new':: d.fn(help="\n`google.app_engine_application.new` injects a new `google_app_engine_application` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.app_engine_application.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.app_engine_application` using the reference:\n\n    $._ref.google_app_engine_application.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_app_engine_application.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auth_domain` (`string`): The domain to authenticate users with when using App Engine\u0026#39;s User API. When `null`, the `auth_domain` field will be omitted from the resulting object.\n  - `database_type` (`string`):  When `null`, the `database_type` field will be omitted from the resulting object.\n  - `location_id` (`string`): The location to serve the app from.\n  - `project` (`string`): The project ID to create the application under. When `null`, the `project` field will be omitted from the resulting object.\n  - `serving_status` (`string`): The serving status of the app. When `null`, the `serving_status` field will be omitted from the resulting object.\n  - `feature_settings` (`list[obj]`): A block of optional settings to configure specific App Engine features: When `null`, the `feature_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.feature_settings.new](#fn-appengineapplicationfeaturesettingsnew) constructor.\n  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.iap.new](#fn-appengineapplicationiapnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.timeouts.new](#fn-appengineapplicationtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location_id,
    auth_domain=null,
    database_type=null,
    feature_settings=null,
    iap=null,
    project=null,
    serving_status=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_application',
    label=resourceLabel,
    attrs=self.newAttrs(
      auth_domain=auth_domain,
      database_type=database_type,
      feature_settings=feature_settings,
      iap=iap,
      location_id=location_id,
      project=project,
      serving_status=serving_status,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.app_engine_application.newAttrs` constructs a new object with attributes and blocks configured for the `app_engine_application`\nTerraform resource.\n\nUnlike [google.app_engine_application.new](#fn-appengineapplicationnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auth_domain` (`string`): The domain to authenticate users with when using App Engine&#39;s User API. When `null`, the `auth_domain` field will be omitted from the resulting object.\n  - `database_type` (`string`):  When `null`, the `database_type` field will be omitted from the resulting object.\n  - `location_id` (`string`): The location to serve the app from.\n  - `project` (`string`): The project ID to create the application under. When `null`, the `project` field will be omitted from the resulting object.\n  - `serving_status` (`string`): The serving status of the app. When `null`, the `serving_status` field will be omitted from the resulting object.\n  - `feature_settings` (`list[obj]`): A block of optional settings to configure specific App Engine features: When `null`, the `feature_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.feature_settings.new](#fn-appengineapplicationfeaturesettingsnew) constructor.\n  - `iap` (`list[obj]`): Settings for enabling Cloud Identity Aware Proxy When `null`, the `iap` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.iap.new](#fn-appengineapplicationiapnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.app_engine_application.timeouts.new](#fn-appengineapplicationtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `app_engine_application` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location_id,
    auth_domain=null,
    database_type=null,
    feature_settings=null,
    iap=null,
    project=null,
    serving_status=null,
    timeouts=null
  ):: std.prune(a={
    auth_domain: auth_domain,
    database_type: database_type,
    feature_settings: feature_settings,
    iap: iap,
    location_id: location_id,
    project: project,
    serving_status: serving_status,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.app_engine_application.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      update=null
    ):: std.prune(a={
      create: create,
      update: update,
    }),
  },
  '#withAuthDomain':: d.fn(help='`google.string.withAuthDomain` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the auth_domain field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `auth_domain` field.\n', args=[]),
  withAuthDomain(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          auth_domain: value,
        },
      },
    },
  },
  '#withDatabaseType':: d.fn(help='`google.string.withDatabaseType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_type` field.\n', args=[]),
  withDatabaseType(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          database_type: value,
        },
      },
    },
  },
  '#withFeatureSettings':: d.fn(help='`google.list[obj].withFeatureSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the feature_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFeatureSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `feature_settings` field.\n', args=[]),
  withFeatureSettings(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          feature_settings: value,
        },
      },
    },
  },
  '#withFeatureSettingsMixin':: d.fn(help='`google.list[obj].withFeatureSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the feature_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFeatureSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `feature_settings` field.\n', args=[]),
  withFeatureSettingsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          feature_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withIap':: d.fn(help='`google.list[obj].withIap` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the iap field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withIapMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `iap` field.\n', args=[]),
  withIap(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          iap: value,
        },
      },
    },
  },
  '#withIapMixin':: d.fn(help='`google.list[obj].withIapMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the iap field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withIap](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `iap` field.\n', args=[]),
  withIapMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          iap+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocationId':: d.fn(help='`google.string.withLocationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location_id` field.\n', args=[]),
  withLocationId(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServingStatus':: d.fn(help='`google.string.withServingStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the serving_status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `serving_status` field.\n', args=[]),
  withServingStatus(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          serving_status: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
