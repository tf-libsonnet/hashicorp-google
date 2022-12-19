local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_fulfillment', url='', help='`dialogflow_fulfillment` represents the `google_dialogflow_fulfillment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  features:: {
    '#new':: d.fn(help='\n`google.dialogflow_fulfillment.features.new` constructs a new object with attributes and blocks configured for the `features`\nTerraform sub block.\n\n\n\n**Args**:\n  - `type` (`string`): The type of the feature that enabled for fulfillment.\n* SMALLTALK: Fulfillment is enabled for SmallTalk. Possible values: [&#34;SMALLTALK&#34;]\n\n**Returns**:\n  - An attribute object that represents the `features` sub block.\n', args=[]),
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  generic_web_service:: {
    '#new':: d.fn(help='\n`google.dialogflow_fulfillment.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The password for HTTP Basic authentication. When `null`, the `password` field will be omitted from the resulting object.\n  - `request_headers` (`obj`): The HTTP request headers to send together with fulfillment requests. When `null`, the `request_headers` field will be omitted from the resulting object.\n  - `uri` (`string`): The fulfillment URI for receiving POST requests. It must use https protocol.\n  - `username` (`string`): The user name for HTTP Basic authentication. When `null`, the `username` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `generic_web_service` sub block.\n', args=[]),
    new(
      uri,
      password=null,
      request_headers=null,
      username=null
    ):: std.prune(a={
      password: password,
      request_headers: request_headers,
      uri: uri,
      username: username,
    }),
  },
  '#new':: d.fn(help="\n`google.dialogflow_fulfillment.new` injects a new `google_dialogflow_fulfillment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_fulfillment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_fulfillment` using the reference:\n\n    $._ref.google_dialogflow_fulfillment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_fulfillment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The human-readable name of the fulfillment, unique within the agent.\n  - `enabled` (`bool`): Whether fulfillment is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `features` (`list[obj]`): The field defines whether the fulfillment is enabled for certain features. When `null`, the `features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.features.new](#fn-dialogflow_fulfillmentfeaturesnew) constructor.\n  - `generic_web_service` (`list[obj]`): Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.generic_web_service.new](#fn-dialogflow_fulfillmentgeneric_web_servicenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.timeouts.new](#fn-dialogflow_fulfillmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    enabled=null,
    features=null,
    generic_web_service=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_fulfillment',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enabled=enabled,
      features=features,
      generic_web_service=generic_web_service,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_fulfillment.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_fulfillment`\nTerraform resource.\n\nUnlike [google.dialogflow_fulfillment.new](#fn-dialogflow_fulfillmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The human-readable name of the fulfillment, unique within the agent.\n  - `enabled` (`bool`): Whether fulfillment is enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `features` (`list[obj]`): The field defines whether the fulfillment is enabled for certain features. When `null`, the `features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.features.new](#fn-dialogflow_fulfillmentfeaturesnew) constructor.\n  - `generic_web_service` (`list[obj]`): Represents configuration for a generic web service. Dialogflow supports two mechanisms for authentications: - Basic authentication with username and password. - Authentication with additional authentication headers. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.generic_web_service.new](#fn-dialogflow_fulfillmentgeneric_web_servicenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_fulfillment.timeouts.new](#fn-dialogflow_fulfillmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_fulfillment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    enabled=null,
    features=null,
    generic_web_service=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enabled: enabled,
    features: features,
    generic_web_service: generic_web_service,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_fulfillment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withFeatures':: d.fn(help='`google.list[obj].withFeatures` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the features field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFeaturesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `features` field.\n', args=[]),
  withFeatures(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          features: value,
        },
      },
    },
  },
  '#withFeaturesMixin':: d.fn(help='`google.list[obj].withFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the features field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFeatures](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `features` field.\n', args=[]),
  withFeaturesMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGenericWebService':: d.fn(help='`google.list[obj].withGenericWebService` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the generic_web_service field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGenericWebServiceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.\n', args=[]),
  withGenericWebService(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          generic_web_service: value,
        },
      },
    },
  },
  '#withGenericWebServiceMixin':: d.fn(help='`google.list[obj].withGenericWebServiceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the generic_web_service field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGenericWebService](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.\n', args=[]),
  withGenericWebServiceMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          generic_web_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
