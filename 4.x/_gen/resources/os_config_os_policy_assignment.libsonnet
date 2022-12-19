local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='os_config_os_policy_assignment', url='', help='`os_config_os_policy_assignment` represents the `google_os_config_os_policy_assignment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  instance_filter:: {
    exclusion_labels:: {
      '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.instance_filter.exclusion_labels.new` constructs a new object with attributes and blocks configured for the `exclusion_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `exclusion_labels` sub block.\n', args=[]),
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
    inclusion_labels:: {
      '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.instance_filter.inclusion_labels.new` constructs a new object with attributes and blocks configured for the `inclusion_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `inclusion_labels` sub block.\n', args=[]),
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
    inventories:: {
      '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.instance_filter.inventories.new` constructs a new object with attributes and blocks configured for the `inventories`\nTerraform sub block.\n\n\n\n**Args**:\n  - `os_short_name` (`string`): Required. The OS short name\n  - `os_version` (`string`): The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions. When `null`, the `os_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `inventories` sub block.\n', args=[]),
      new(
        os_short_name,
        os_version=null
      ):: std.prune(a={
        os_short_name: os_short_name,
        os_version: os_version,
      }),
    },
    '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.instance_filter.new` constructs a new object with attributes and blocks configured for the `instance_filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all` (`bool`): Target all VMs in the project. If true, no other criteria is permitted. When `null`, the `all` field will be omitted from the resulting object.\n  - `exclusion_labels` (`list[obj]`): List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM. When `null`, the `exclusion_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.exclusion_labels.new](#fn-instancefilterexclusionlabelsnew) constructor.\n  - `inclusion_labels` (`list[obj]`): List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM. When `null`, the `inclusion_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.inclusion_labels.new](#fn-instancefilterinclusionlabelsnew) constructor.\n  - `inventories` (`list[obj]`): List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories. When `null`, the `inventories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.inventories.new](#fn-instancefilterinventoriesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `instance_filter` sub block.\n', args=[]),
    new(
      all=null,
      exclusion_labels=null,
      inclusion_labels=null,
      inventories=null
    ):: std.prune(a={
      all: all,
      exclusion_labels: exclusion_labels,
      inclusion_labels: inclusion_labels,
      inventories: inventories,
    }),
  },
  '#new':: d.fn(help="\n`google.os_config_os_policy_assignment.new` injects a new `google_os_config_os_policy_assignment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.os_config_os_policy_assignment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.os_config_os_policy_assignment` using the reference:\n\n    $._ref.google_os_config_os_policy_assignment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_os_config_os_policy_assignment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): OS policy assignment description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Resource name.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `instance_filter` (`list[obj]`): Required. Filter to select VMs. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.new](#fn-osconfigospolicyassignmentinstancefilternew) constructor.\n  - `os_policies` (`list[obj]`): Required. List of OS policies to be applied to the VMs. When `null`, the `os_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.new](#fn-osconfigospolicyassignmentospoliciesnew) constructor.\n  - `rollout` (`list[obj]`): Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.new](#fn-osconfigospolicyassignmentrolloutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.timeouts.new](#fn-osconfigospolicyassignmenttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    description=null,
    instance_filter=null,
    os_policies=null,
    project=null,
    rollout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_os_policy_assignment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instance_filter=instance_filter,
      location=location,
      name=name,
      os_policies=os_policies,
      project=project,
      rollout=rollout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.os_config_os_policy_assignment.newAttrs` constructs a new object with attributes and blocks configured for the `os_config_os_policy_assignment`\nTerraform resource.\n\nUnlike [google.os_config_os_policy_assignment.new](#fn-osconfigospolicyassignmentnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): OS policy assignment description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Resource name.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `instance_filter` (`list[obj]`): Required. Filter to select VMs. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.new](#fn-osconfigospolicyassignmentinstancefilternew) constructor.\n  - `os_policies` (`list[obj]`): Required. List of OS policies to be applied to the VMs. When `null`, the `os_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.new](#fn-osconfigospolicyassignmentospoliciesnew) constructor.\n  - `rollout` (`list[obj]`): Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.new](#fn-osconfigospolicyassignmentrolloutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.timeouts.new](#fn-osconfigospolicyassignmenttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_config_os_policy_assignment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    description=null,
    instance_filter=null,
    os_policies=null,
    project=null,
    rollout=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    instance_filter: instance_filter,
    location: location,
    name: name,
    os_policies: os_policies,
    project: project,
    rollout: rollout,
    timeouts: timeouts,
  }),
  os_policies:: {
    '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.new` constructs a new object with attributes and blocks configured for the `os_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_no_resource_group_match` (`bool`): This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce. When `null`, the `allow_no_resource_group_match` field will be omitted from the resulting object.\n  - `description` (`string`): Policy description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `mode` (`string`): Required. Policy mode Possible values: MODE_UNSPECIFIED, VALIDATION, ENFORCEMENT\n  - `resource_groups` (`list[obj]`): Required. List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match` When `null`, the `resource_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.new](#fn-ospoliciesresourcegroupsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `os_policies` sub block.\n', args=[]),
    new(
      mode,
      allow_no_resource_group_match=null,
      description=null,
      resource_groups=null
    ):: std.prune(a={
      allow_no_resource_group_match: allow_no_resource_group_match,
      description: description,
      mode: mode,
      resource_groups: resource_groups,
    }),
    resource_groups:: {
      inventory_filters:: {
        '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.inventory_filters.new` constructs a new object with attributes and blocks configured for the `inventory_filters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `os_short_name` (`string`): Required. The OS short name\n  - `os_version` (`string`): The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions. When `null`, the `os_version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `inventory_filters` sub block.\n', args=[]),
        new(
          os_short_name,
          os_version=null
        ):: std.prune(a={
          os_short_name: os_short_name,
          os_version: os_version,
        }),
      },
      '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.new` constructs a new object with attributes and blocks configured for the `resource_groups`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inventory_filters` (`list[obj]`): List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name=&#39;rhel&#39; and inventory_filters[1].os_short_name=&#39;centos&#39; If the list is empty, this resource group will be applied to the target VM unconditionally. When `null`, the `inventory_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.inventory_filters.new](#fn-resourcegroupsinventoryfiltersnew) constructor.\n  - `resources` (`list[obj]`): Required. List of resources configured for this resource group. The resources are executed in the exact order specified here. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.new](#fn-resourcegroupsresourcesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `resource_groups` sub block.\n', args=[]),
      new(
        inventory_filters=null,
        resources=null
      ):: std.prune(a={
        inventory_filters: inventory_filters,
        resources: resources,
      }),
      resources:: {
        exec:: {
          enforce:: {
            file:: {
              gcs:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.new` constructs a new object with attributes and blocks configured for the `file`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.gcs.new](#fn-filegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.remote.new](#fn-fileremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file` sub block.\n', args=[]),
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.new` constructs a new object with attributes and blocks configured for the `enforce`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): Optional arguments to pass to the source during execution. When `null`, the `args` field will be omitted from the resulting object.\n  - `interpreter` (`string`): Required. The script interpreter to use. Possible values: INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL\n  - `output_file_path` (`string`): Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. When `null`, the `output_file_path` field will be omitted from the resulting object.\n  - `script` (`string`): An inline script. The size of the script is limited to 1024 characters. When `null`, the `script` field will be omitted from the resulting object.\n  - `file` (`list[obj]`): A remote or local file. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.new](#fn-enforcefilenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `enforce` sub block.\n', args=[]),
            new(
              interpreter,
              args=null,
              file=null,
              output_file_path=null,
              script=null
            ):: std.prune(a={
              args: args,
              file: file,
              interpreter: interpreter,
              output_file_path: output_file_path,
              script: script,
            }),
          },
          '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.new` constructs a new object with attributes and blocks configured for the `exec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enforce` (`list[obj]`): What to run to bring this resource into the desired state. An exit code of 100 indicates &#34;success&#34;, any other exit code indicates a failure running enforce. When `null`, the `enforce` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.new](#fn-execenforcenew) constructor.\n  - `validate` (`list[obj]`): Required. What to run to validate this resource is in the desired state. An exit code of 100 indicates &#34;in desired state&#34;, and exit code of 101 indicates &#34;not in desired state&#34;. Any other exit code indicates a failure running validate. When `null`, the `validate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.new](#fn-execvalidatenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exec` sub block.\n', args=[]),
          new(
            enforce=null,
            validate=null
          ):: std.prune(a={
            enforce: enforce,
            validate: validate,
          }),
          validate:: {
            file:: {
              gcs:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.new` constructs a new object with attributes and blocks configured for the `file`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.gcs.new](#fn-filegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.remote.new](#fn-fileremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file` sub block.\n', args=[]),
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.new` constructs a new object with attributes and blocks configured for the `validate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): Optional arguments to pass to the source during execution. When `null`, the `args` field will be omitted from the resulting object.\n  - `interpreter` (`string`): Required. The script interpreter to use. Possible values: INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL\n  - `output_file_path` (`string`): Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. When `null`, the `output_file_path` field will be omitted from the resulting object.\n  - `script` (`string`): An inline script. The size of the script is limited to 1024 characters. When `null`, the `script` field will be omitted from the resulting object.\n  - `file` (`list[obj]`): A remote or local file. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.new](#fn-validatefilenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `validate` sub block.\n', args=[]),
            new(
              interpreter,
              args=null,
              file=null,
              output_file_path=null,
              script=null
            ):: std.prune(a={
              args: args,
              file: file,
              interpreter: interpreter,
              output_file_path: output_file_path,
              script: script,
            }),
          },
        },
        file:: {
          file:: {
            gcs:: {
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
              new(
                bucket,
                object,
                generation=null
              ):: std.prune(a={
                bucket: bucket,
                generation: generation,
                object: object,
              }),
            },
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.new` constructs a new object with attributes and blocks configured for the `file`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.gcs.new](#fn-filegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.remote.new](#fn-fileremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file` sub block.\n', args=[]),
            new(
              allow_insecure=null,
              gcs=null,
              local_path=null,
              remote=null
            ):: std.prune(a={
              allow_insecure: allow_insecure,
              gcs: gcs,
              local_path: local_path,
              remote: remote,
            }),
            remote:: {
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
              new(
                uri,
                sha256_checksum=null
              ):: std.prune(a={
                sha256_checksum: sha256_checksum,
                uri: uri,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.new` constructs a new object with attributes and blocks configured for the `file`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content` (`string`): A a file with this content. The size of the content is limited to 1024 characters. When `null`, the `content` field will be omitted from the resulting object.\n  - `path` (`string`): Required. The absolute path of the file within the VM.\n  - `state` (`string`): Required. Desired state of the file. Possible values: OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED, COMPLIANT, NON_COMPLIANT, UNKNOWN, NO_OS_POLICIES_APPLICABLE\n  - `file` (`list[obj]`): A remote or local source. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.new](#fn-filefilenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `file` sub block.\n', args=[]),
          new(
            path,
            state,
            content=null,
            file=null
          ):: std.prune(a={
            content: content,
            file: file,
            path: path,
            state: state,
          }),
        },
        '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.new` constructs a new object with attributes and blocks configured for the `resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exec` (`list[obj]`): Exec resource When `null`, the `exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.new](#fn-resourcesexecnew) constructor.\n  - `file` (`list[obj]`): File resource When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.new](#fn-resourcesfilenew) constructor.\n  - `pkg` (`list[obj]`): Package resource When `null`, the `pkg` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.new](#fn-resourcespkgnew) constructor.\n  - `repository` (`list[obj]`): Package repository resource When `null`, the `repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.new](#fn-resourcesrepositorynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `resources` sub block.\n', args=[]),
        new(
          exec=null,
          file=null,
          pkg=null,
          repository=null
        ):: std.prune(a={
          exec: exec,
          file: file,
          pkg: pkg,
          repository: repository,
        }),
        pkg:: {
          apt:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.apt.new` constructs a new object with attributes and blocks configured for the `apt`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Required. Package name.\n\n**Returns**:\n  - An attribute object that represents the `apt` sub block.\n', args=[]),
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          deb:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.new` constructs a new object with attributes and blocks configured for the `deb`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pull_deps` (`bool`): Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update &amp;&amp; apt-get -y install package.deb` When `null`, the `pull_deps` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): Required. A deb package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.new](#fn-debsourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deb` sub block.\n', args=[]),
            new(
              pull_deps=null,
              source=null
            ):: std.prune(a={
              pull_deps: pull_deps,
              source: source,
            }),
            source:: {
              gcs:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.gcs.new](#fn-sourcegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.remote.new](#fn-sourceremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          googet:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.googet.new` constructs a new object with attributes and blocks configured for the `googet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Required. Package name.\n\n**Returns**:\n  - An attribute object that represents the `googet` sub block.\n', args=[]),
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          msi:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.new` constructs a new object with attributes and blocks configured for the `msi`\nTerraform sub block.\n\n\n\n**Args**:\n  - `properties` (`list`): Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`. When `null`, the `properties` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): Required. The MSI package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.new](#fn-msisourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `msi` sub block.\n', args=[]),
            new(
              properties=null,
              source=null
            ):: std.prune(a={
              properties: properties,
              source: source,
            }),
            source:: {
              gcs:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.gcs.new](#fn-sourcegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.remote.new](#fn-sourceremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.new` constructs a new object with attributes and blocks configured for the `pkg`\nTerraform sub block.\n\n\n\n**Args**:\n  - `desired_state` (`string`): Required. The desired state the agent should maintain for this package. Possible values: DESIRED_STATE_UNSPECIFIED, INSTALLED, REMOVED\n  - `apt` (`list[obj]`): A package managed by Apt. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.apt.new](#fn-pkgaptnew) constructor.\n  - `deb` (`list[obj]`): A deb package file. When `null`, the `deb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.new](#fn-pkgdebnew) constructor.\n  - `googet` (`list[obj]`): A package managed by GooGet. When `null`, the `googet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.googet.new](#fn-pkggoogetnew) constructor.\n  - `msi` (`list[obj]`): An MSI package. When `null`, the `msi` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.new](#fn-pkgmsinew) constructor.\n  - `rpm` (`list[obj]`): An rpm package file. When `null`, the `rpm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.new](#fn-pkgrpmnew) constructor.\n  - `yum` (`list[obj]`): A package managed by YUM. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.yum.new](#fn-pkgyumnew) constructor.\n  - `zypper` (`list[obj]`): A package managed by Zypper. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.zypper.new](#fn-pkgzyppernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pkg` sub block.\n', args=[]),
          new(
            desired_state,
            apt=null,
            deb=null,
            googet=null,
            msi=null,
            rpm=null,
            yum=null,
            zypper=null
          ):: std.prune(a={
            apt: apt,
            deb: deb,
            desired_state: desired_state,
            googet: googet,
            msi: msi,
            rpm: rpm,
            yum: yum,
            zypper: zypper,
          }),
          rpm:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.new` constructs a new object with attributes and blocks configured for the `rpm`\nTerraform sub block.\n\n\n\n**Args**:\n  - `pull_deps` (`bool`): Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm` When `null`, the `pull_deps` field will be omitted from the resulting object.\n  - `source` (`list[obj]`): Required. An rpm package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.new](#fn-rpmsourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rpm` sub block.\n', args=[]),
            new(
              pull_deps=null,
              source=null
            ):: std.prune(a={
              pull_deps: pull_deps,
              source: source,
            }),
            source:: {
              gcs:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.\n  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Required. Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs` sub block.\n', args=[]),
                new(
                  bucket,
                  object,
                  generation=null
                ):: std.prune(a={
                  bucket: bucket,
                  generation: generation,
                  object: object,
                }),
              },
              '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.\n  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.gcs.new](#fn-sourcegcsnew) constructor.\n  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.remote.new](#fn-sourceremotenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
              new(
                allow_insecure=null,
                gcs=null,
                local_path=null,
                remote=null
              ):: std.prune(a={
                allow_insecure: allow_insecure,
                gcs: gcs,
                local_path: local_path,
                remote: remote,
              }),
              remote:: {
                '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`\nTerraform sub block.\n\n\n\n**Args**:\n  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.\n\n**Returns**:\n  - An attribute object that represents the `remote` sub block.\n', args=[]),
                new(
                  uri,
                  sha256_checksum=null
                ):: std.prune(a={
                  sha256_checksum: sha256_checksum,
                  uri: uri,
                }),
              },
            },
          },
          yum:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.yum.new` constructs a new object with attributes and blocks configured for the `yum`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Required. Package name.\n\n**Returns**:\n  - An attribute object that represents the `yum` sub block.\n', args=[]),
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
          zypper:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Required. Package name.\n\n**Returns**:\n  - An attribute object that represents the `zypper` sub block.\n', args=[]),
            new(
              name
            ):: std.prune(a={
              name: name,
            }),
          },
        },
        repository:: {
          apt:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.apt.new` constructs a new object with attributes and blocks configured for the `apt`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_type` (`string`): Required. Type of archive files in this repository. Possible values: ARCHIVE_TYPE_UNSPECIFIED, DEB, DEB_SRC\n  - `components` (`list`): Required. List of components for this repository. Must contain at least one item.\n  - `distribution` (`string`): Required. Distribution of this repository.\n  - `gpg_key` (`string`): URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`. When `null`, the `gpg_key` field will be omitted from the resulting object.\n  - `uri` (`string`): Required. URI for this repository.\n\n**Returns**:\n  - An attribute object that represents the `apt` sub block.\n', args=[]),
            new(
              archive_type,
              components,
              distribution,
              uri,
              gpg_key=null
            ):: std.prune(a={
              archive_type: archive_type,
              components: components,
              distribution: distribution,
              gpg_key: gpg_key,
              uri: uri,
            }),
          },
          goo:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.goo.new` constructs a new object with attributes and blocks configured for the `goo`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Required. The name of the repository.\n  - `url` (`string`): Required. The url of the repository.\n\n**Returns**:\n  - An attribute object that represents the `goo` sub block.\n', args=[]),
            new(
              name,
              url
            ):: std.prune(a={
              name: name,
              url: url,
            }),
          },
          '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.new` constructs a new object with attributes and blocks configured for the `repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `apt` (`list[obj]`): An Apt Repository. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.apt.new](#fn-repositoryaptnew) constructor.\n  - `goo` (`list[obj]`): A Goo Repository. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.goo.new](#fn-repositorygoonew) constructor.\n  - `yum` (`list[obj]`): A Yum Repository. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.yum.new](#fn-repositoryyumnew) constructor.\n  - `zypper` (`list[obj]`): A Zypper Repository. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.zypper.new](#fn-repositoryzyppernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `repository` sub block.\n', args=[]),
          new(
            apt=null,
            goo=null,
            yum=null,
            zypper=null
          ):: std.prune(a={
            apt: apt,
            goo: goo,
            yum: yum,
            zypper: zypper,
          }),
          yum:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.yum.new` constructs a new object with attributes and blocks configured for the `yum`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_url` (`string`): Required. The location of the repository directory.\n  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `yum` sub block.\n', args=[]),
            new(
              base_url,
              display_name=null,
              gpg_keys=null
            ):: std.prune(a={
              base_url: base_url,
              display_name: display_name,
              gpg_keys: gpg_keys,
            }),
          },
          zypper:: {
            '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`\nTerraform sub block.\n\n\n\n**Args**:\n  - `base_url` (`string`): Required. The location of the repository directory.\n  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `zypper` sub block.\n', args=[]),
            new(
              base_url,
              display_name=null,
              gpg_keys=null
            ):: std.prune(a={
              base_url: base_url,
              display_name: display_name,
              gpg_keys: gpg_keys,
            }),
          },
        },
      },
    },
  },
  rollout:: {
    disruption_budget:: {
      '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.rollout.disruption_budget.new` constructs a new object with attributes and blocks configured for the `disruption_budget`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed` (`number`): Specifies a fixed value. When `null`, the `fixed` field will be omitted from the resulting object.\n  - `percent` (`number`): Specifies the relative value defined as a percentage, which will be multiplied by a reference value. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disruption_budget` sub block.\n', args=[]),
      new(
        fixed=null,
        percent=null
      ):: std.prune(a={
        fixed: fixed,
        percent: percent,
      }),
    },
    '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.rollout.new` constructs a new object with attributes and blocks configured for the `rollout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `min_wait_duration` (`string`): Required. This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.\n  - `disruption_budget` (`list[obj]`): Required. The maximum number (or percentage) of VMs per zone to disrupt at any given moment. When `null`, the `disruption_budget` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.disruption_budget.new](#fn-rolloutdisruptionbudgetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rollout` sub block.\n', args=[]),
    new(
      min_wait_duration,
      disruption_budget=null
    ):: std.prune(a={
      disruption_budget: disruption_budget,
      min_wait_duration: min_wait_duration,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.os_config_os_policy_assignment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.os_config_os_policy_assignment.withDescription` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInstanceFilter':: d.fn(help='`google.os_config_os_policy_assignment.withInstanceFilter` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the instance_filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instance_filter` field.\n', args=[]),
  withInstanceFilter(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          instance_filter: value,
        },
      },
    },
  },
  '#withInstanceFilterMixin':: d.fn(help='`google.os_config_os_policy_assignment.withInstanceFilterMixin` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the instance_filter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.os_config_os_policy_assignment.withInstanceFilter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instance_filter` field.\n', args=[]),
  withInstanceFilterMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          instance_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.os_config_os_policy_assignment.withLocation` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.os_config_os_policy_assignment.withName` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOsPolicies':: d.fn(help='`google.os_config_os_policy_assignment.withOsPolicies` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the os_policies field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `os_policies` field.\n', args=[]),
  withOsPolicies(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          os_policies: value,
        },
      },
    },
  },
  '#withOsPoliciesMixin':: d.fn(help='`google.os_config_os_policy_assignment.withOsPoliciesMixin` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the os_policies field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.os_config_os_policy_assignment.withOsPolicies](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `os_policies` field.\n', args=[]),
  withOsPoliciesMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          os_policies+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.os_config_os_policy_assignment.withProject` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRollout':: d.fn(help='`google.os_config_os_policy_assignment.withRollout` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the rollout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `rollout` field.\n', args=[]),
  withRollout(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          rollout: value,
        },
      },
    },
  },
  '#withRolloutMixin':: d.fn(help='`google.os_config_os_policy_assignment.withRolloutMixin` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the rollout field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.os_config_os_policy_assignment.withRollout](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `rollout` field.\n', args=[]),
  withRolloutMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          rollout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.os_config_os_policy_assignment.withTimeouts` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.os_config_os_policy_assignment.withTimeoutsMixin` constructs a mixin object that can be merged into the `os_config_os_policy_assignment`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.os_config_os_policy_assignment.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_os_policy_assignment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
