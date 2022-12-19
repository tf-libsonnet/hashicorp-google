local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project', url='', help='`project` represents the `google_project` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.project.new` injects a new `google_project` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.project.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.project` using the reference:\n\n    $._ref.google_project.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_project.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_create_network` (`bool`): Create the \u0026#39;default\u0026#39; network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily. When `null`, the `auto_create_network` field will be omitted from the resulting object.\n  - `billing_account` (`string`): The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details. When `null`, the `billing_account` field will be omitted from the resulting object.\n  - `folder_id` (`string`): The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder. When `null`, the `folder_id` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the project. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The display name of the project.\n  - `org_id` (`string`): The numeric ID of the organization this project belongs to. Changing this forces a new project to be created.  Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization. When `null`, the `org_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The project ID. Changing this forces a new project to be created.\n  - `skip_delete` (`bool`): If true, the Terraform resource can be deleted without deleting the Project via the Google API. When `null`, the `skip_delete` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project.timeouts.new](#fn-projecttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    project_id,
    auto_create_network=null,
    billing_account=null,
    folder_id=null,
    labels=null,
    org_id=null,
    skip_delete=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_create_network=auto_create_network,
      billing_account=billing_account,
      folder_id=folder_id,
      labels=labels,
      name=name,
      org_id=org_id,
      project_id=project_id,
      skip_delete=skip_delete,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.project.newAttrs` constructs a new object with attributes and blocks configured for the `project`\nTerraform resource.\n\nUnlike [google.project.new](#fn-projectnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_create_network` (`bool`): Create the &#39;default&#39; network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily. When `null`, the `auto_create_network` field will be omitted from the resulting object.\n  - `billing_account` (`string`): The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have Billing Account Administrator privileges (roles/billing.admin) in the organization. See Google Cloud Billing API Access Control for more details. When `null`, the `billing_account` field will be omitted from the resulting object.\n  - `folder_id` (`string`): The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder. When `null`, the `folder_id` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the project. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The display name of the project.\n  - `org_id` (`string`): The numeric ID of the organization this project belongs to. Changing this forces a new project to be created.  Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization. When `null`, the `org_id` field will be omitted from the resulting object.\n  - `project_id` (`string`): The project ID. Changing this forces a new project to be created.\n  - `skip_delete` (`bool`): If true, the Terraform resource can be deleted without deleting the Project via the Google API. When `null`, the `skip_delete` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project.timeouts.new](#fn-projecttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    project_id,
    auto_create_network=null,
    billing_account=null,
    folder_id=null,
    labels=null,
    org_id=null,
    skip_delete=null,
    timeouts=null
  ):: std.prune(a={
    auto_create_network: auto_create_network,
    billing_account: billing_account,
    folder_id: folder_id,
    labels: labels,
    name: name,
    org_id: org_id,
    project_id: project_id,
    skip_delete: skip_delete,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.project.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  '#withAutoCreateNetwork':: d.fn(help='`google.project.withAutoCreateNetwork` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the auto_create_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `auto_create_network` field.\n', args=[]),
  withAutoCreateNetwork(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          auto_create_network: value,
        },
      },
    },
  },
  '#withBillingAccount':: d.fn(help='`google.project.withBillingAccount` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the billing_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `billing_account` field.\n', args=[]),
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  '#withFolderId':: d.fn(help='`google.project.withFolderId` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the folder_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `folder_id` field.\n', args=[]),
  withFolderId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          folder_id: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.project.withLabels` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.project.withName` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.project.withOrgId` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`google.project.withProjectId` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withSkipDelete':: d.fn(help='`google.project.withSkipDelete` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the skip_delete field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `skip_delete` field.\n', args=[]),
  withSkipDelete(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          skip_delete: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.project.withTimeouts` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.project.withTimeoutsMixin` constructs a mixin object that can be merged into the `project`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.project.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
