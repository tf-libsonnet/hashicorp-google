local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='os_config_patch_deployment', url='', help='`os_config_patch_deployment` represents the `google_os_config_patch_deployment` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  instance_filter:: {
    group_labels:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.instance_filter.group_labels.new` constructs a new object with attributes and blocks configured for the `group_labels`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Compute Engine instance labels that must be present for a VM instance to be targeted by this filter\n\n**Returns**:\n  - An attribute object that represents the `group_labels` sub block.\n', args=[]),
      new(
        labels
      ):: std.prune(a={
        labels: labels,
      }),
    },
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.instance_filter.new` constructs a new object with attributes and blocks configured for the `instance_filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all` (`bool`): Target all VM instances in the project. If true, no other criteria is permitted. When `null`, the `all` field will be omitted from the resulting object.\n  - `instance_name_prefixes` (`list`): Targets VMs whose name starts with one of these prefixes. Similar to labels, this is another way to group\nVMs when targeting configs, for example prefix=&#34;prod-&#34;. When `null`, the `instance_name_prefixes` field will be omitted from the resulting object.\n  - `instances` (`list`): Targets any of the VM instances specified. Instances are specified by their URI in the &#39;form zones/{{zone}}/instances/{{instance_name}}&#39;,\n&#39;projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}&#39;, or\n&#39;https://www.googleapis.com/compute/v1/projects/{{project_id}}/zones/{{zone}}/instances/{{instance_name}}&#39; When `null`, the `instances` field will be omitted from the resulting object.\n  - `zones` (`list`): Targets VM instances in ANY of these zones. Leave empty to target VM instances in any zone. When `null`, the `zones` field will be omitted from the resulting object.\n  - `group_labels` (`list[obj]`): Targets VM instances matching ANY of these GroupLabels. This allows targeting of disparate groups of VM instances. When `null`, the `group_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.group_labels.new](#fn-instance_filtergroup_labelsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `instance_filter` sub block.\n', args=[]),
    new(
      all=null,
      group_labels=null,
      instance_name_prefixes=null,
      instances=null,
      zones=null
    ):: std.prune(a={
      all: all,
      group_labels: group_labels,
      instance_name_prefixes: instance_name_prefixes,
      instances: instances,
      zones: zones,
    }),
  },
  '#new':: d.fn(help="\n`google.os_config_patch_deployment.new` injects a new `google_os_config_patch_deployment` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.os_config_patch_deployment.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.os_config_patch_deployment` using the reference:\n\n    $._ref.google_os_config_patch_deployment.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_os_config_patch_deployment.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of the patch deployment. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `duration` (`string`): Duration of the patch. After the duration ends, the patch times out.\nA duration in seconds with up to nine fractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34; When `null`, the `duration` field will be omitted from the resulting object.\n  - `patch_deployment_id` (`string`): A name for the patch deployment in the project. When creating a name the following rules apply:\n* Must contain only lowercase letters, numbers, and hyphens.\n* Must start with a letter.\n* Must be between 1-63 characters.\n* Must end with a number or a letter.\n* Must be unique within the project.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `instance_filter` (`list[obj]`): VM instances to patch. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.new](#fn-instance_filternew) constructor.\n  - `one_time_schedule` (`list[obj]`): Schedule a one-time execution. When `null`, the `one_time_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.one_time_schedule.new](#fn-one_time_schedulenew) constructor.\n  - `patch_config` (`list[obj]`): Patch configuration that is applied. When `null`, the `patch_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.new](#fn-patch_confignew) constructor.\n  - `recurring_schedule` (`list[obj]`): Schedule recurring executions. When `null`, the `recurring_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.new](#fn-recurring_schedulenew) constructor.\n  - `rollout` (`list[obj]`): Rollout strategy of the patch job. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.new](#fn-rolloutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    patch_deployment_id,
    description=null,
    duration=null,
    instance_filter=null,
    one_time_schedule=null,
    patch_config=null,
    project=null,
    recurring_schedule=null,
    rollout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_patch_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      duration=duration,
      instance_filter=instance_filter,
      one_time_schedule=one_time_schedule,
      patch_config=patch_config,
      patch_deployment_id=patch_deployment_id,
      project=project,
      recurring_schedule=recurring_schedule,
      rollout=rollout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.os_config_patch_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `os_config_patch_deployment`\nTerraform resource.\n\nUnlike [google.os_config_patch_deployment.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of the patch deployment. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `duration` (`string`): Duration of the patch. After the duration ends, the patch times out.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34; When `null`, the `duration` field will be omitted from the resulting object.\n  - `patch_deployment_id` (`string`): A name for the patch deployment in the project. When creating a name the following rules apply:\n* Must contain only lowercase letters, numbers, and hyphens.\n* Must start with a letter.\n* Must be between 1-63 characters.\n* Must end with a number or a letter.\n* Must be unique within the project.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `instance_filter` (`list[obj]`): VM instances to patch. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.instance_filter.new](#fn-instance_filternew) constructor.\n  - `one_time_schedule` (`list[obj]`): Schedule a one-time execution. When `null`, the `one_time_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.one_time_schedule.new](#fn-one_time_schedulenew) constructor.\n  - `patch_config` (`list[obj]`): Patch configuration that is applied. When `null`, the `patch_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.new](#fn-patch_confignew) constructor.\n  - `recurring_schedule` (`list[obj]`): Schedule recurring executions. When `null`, the `recurring_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.new](#fn-recurring_schedulenew) constructor.\n  - `rollout` (`list[obj]`): Rollout strategy of the patch job. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.new](#fn-rolloutnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_config_patch_deployment` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    patch_deployment_id,
    description=null,
    duration=null,
    instance_filter=null,
    one_time_schedule=null,
    patch_config=null,
    project=null,
    recurring_schedule=null,
    rollout=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    duration: duration,
    instance_filter: instance_filter,
    one_time_schedule: one_time_schedule,
    patch_config: patch_config,
    patch_deployment_id: patch_deployment_id,
    project: project,
    recurring_schedule: recurring_schedule,
    rollout: rollout,
    timeouts: timeouts,
  }),
  one_time_schedule:: {
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.one_time_schedule.new` constructs a new object with attributes and blocks configured for the `one_time_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `execute_time` (`string`): The desired patch job execution time. A timestamp in RFC3339 UTC &#34;Zulu&#34; format,\naccurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;.\n\n**Returns**:\n  - An attribute object that represents the `one_time_schedule` sub block.\n', args=[]),
    new(
      execute_time
    ):: std.prune(a={
      execute_time: execute_time,
    }),
  },
  patch_config:: {
    apt:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.apt.new` constructs a new object with attributes and blocks configured for the `apt`\nTerraform sub block.\n\n\n\n**Args**:\n  - `excludes` (`list`): List of packages to exclude from update. These packages will be excluded. When `null`, the `excludes` field will be omitted from the resulting object.\n  - `exclusive_packages` (`list`): An exclusive list of packages to be updated. These are the only packages that will be updated.\nIf these packages are not installed, they will be ignored. This field cannot be specified with\nany other patch configuration fields. When `null`, the `exclusive_packages` field will be omitted from the resulting object.\n  - `type` (`string`): By changing the type to DIST, the patching is performed using apt-get dist-upgrade instead. Possible values: [&#34;DIST&#34;, &#34;UPGRADE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `apt` sub block.\n', args=[]),
      new(
        excludes=null,
        exclusive_packages=null,
        type=null
      ):: std.prune(a={
        excludes: excludes,
        exclusive_packages: exclusive_packages,
        type: type,
      }),
    },
    goo:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.goo.new` constructs a new object with attributes and blocks configured for the `goo`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): goo update settings. Use this setting to override the default goo patch rules.\n\n**Returns**:\n  - An attribute object that represents the `goo` sub block.\n', args=[]),
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.new` constructs a new object with attributes and blocks configured for the `patch_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mig_instances_allowed` (`bool`): Allows the patch job to run on Managed instance groups (MIGs). When `null`, the `mig_instances_allowed` field will be omitted from the resulting object.\n  - `reboot_config` (`string`): Post-patch reboot settings. Possible values: [&#34;DEFAULT&#34;, &#34;ALWAYS&#34;, &#34;NEVER&#34;] When `null`, the `reboot_config` field will be omitted from the resulting object.\n  - `apt` (`list[obj]`): Apt update settings. Use this setting to override the default apt patch rules. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.apt.new](#fn-patch_configaptnew) constructor.\n  - `goo` (`list[obj]`): goo update settings. Use this setting to override the default goo patch rules. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.goo.new](#fn-patch_configgoonew) constructor.\n  - `post_step` (`list[obj]`): The ExecStep to run after the patch update. When `null`, the `post_step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.new](#fn-patch_configpost_stepnew) constructor.\n  - `pre_step` (`list[obj]`): The ExecStep to run before the patch update. When `null`, the `pre_step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.new](#fn-patch_configpre_stepnew) constructor.\n  - `windows_update` (`list[obj]`): Windows update settings. Use this setting to override the default Windows patch rules. When `null`, the `windows_update` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.windows_update.new](#fn-patch_configwindows_updatenew) constructor.\n  - `yum` (`list[obj]`): Yum update settings. Use this setting to override the default yum patch rules. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.yum.new](#fn-patch_configyumnew) constructor.\n  - `zypper` (`list[obj]`): zypper update settings. Use this setting to override the default zypper patch rules. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.zypper.new](#fn-patch_configzyppernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `patch_config` sub block.\n', args=[]),
    new(
      apt=null,
      goo=null,
      mig_instances_allowed=null,
      post_step=null,
      pre_step=null,
      reboot_config=null,
      windows_update=null,
      yum=null,
      zypper=null
    ):: std.prune(a={
      apt: apt,
      goo: goo,
      mig_instances_allowed: mig_instances_allowed,
      post_step: post_step,
      pre_step: pre_step,
      reboot_config: reboot_config,
      windows_update: windows_update,
      yum: yum,
      zypper: zypper,
    }),
    post_step:: {
      linux_exec_step_config:: {
        gcs_object:: {
          '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Bucket of the Cloud Storage object.\n  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.\n  - `object` (`string`): Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_object` sub block.\n', args=[]),
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.new` constructs a new object with attributes and blocks configured for the `linux_exec_step_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will\nbe executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.gcs_object.new](#fn-patch_configpatch_configpost_stepgcs_objectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `linux_exec_step_config` sub block.\n', args=[]),
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.post_step.new` constructs a new object with attributes and blocks configured for the `post_step`\nTerraform sub block.\n\n\n\n**Args**:\n  - `linux_exec_step_config` (`list[obj]`): The ExecStepConfig for all Linux VMs targeted by the PatchJob. When `null`, the `linux_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.linux_exec_step_config.new](#fn-patch_configpatch_configlinux_exec_step_confignew) constructor.\n  - `windows_exec_step_config` (`list[obj]`): The ExecStepConfig for all Windows VMs targeted by the PatchJob. When `null`, the `windows_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.new](#fn-patch_configpatch_configwindows_exec_step_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `post_step` sub block.\n', args=[]),
      new(
        linux_exec_step_config=null,
        windows_exec_step_config=null
      ):: std.prune(a={
        linux_exec_step_config: linux_exec_step_config,
        windows_exec_step_config: windows_exec_step_config,
      }),
      windows_exec_step_config:: {
        gcs_object:: {
          '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Bucket of the Cloud Storage object.\n  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.\n  - `object` (`string`): Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_object` sub block.\n', args=[]),
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.new` constructs a new object with attributes and blocks configured for the `windows_exec_step_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will\nbe executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.post_step.windows_exec_step_config.gcs_object.new](#fn-patch_configpatch_configpost_stepgcs_objectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `windows_exec_step_config` sub block.\n', args=[]),
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
    },
    pre_step:: {
      linux_exec_step_config:: {
        gcs_object:: {
          '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Bucket of the Cloud Storage object.\n  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.\n  - `object` (`string`): Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_object` sub block.\n', args=[]),
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.new` constructs a new object with attributes and blocks configured for the `linux_exec_step_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will\nbe executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.gcs_object.new](#fn-patch_configpatch_configpre_stepgcs_objectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `linux_exec_step_config` sub block.\n', args=[]),
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.pre_step.new` constructs a new object with attributes and blocks configured for the `pre_step`\nTerraform sub block.\n\n\n\n**Args**:\n  - `linux_exec_step_config` (`list[obj]`): The ExecStepConfig for all Linux VMs targeted by the PatchJob. When `null`, the `linux_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.linux_exec_step_config.new](#fn-patch_configpatch_configlinux_exec_step_confignew) constructor.\n  - `windows_exec_step_config` (`list[obj]`): The ExecStepConfig for all Windows VMs targeted by the PatchJob. When `null`, the `windows_exec_step_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.new](#fn-patch_configpatch_configwindows_exec_step_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pre_step` sub block.\n', args=[]),
      new(
        linux_exec_step_config=null,
        windows_exec_step_config=null
      ):: std.prune(a={
        linux_exec_step_config: linux_exec_step_config,
        windows_exec_step_config: windows_exec_step_config,
      }),
      windows_exec_step_config:: {
        gcs_object:: {
          '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.gcs_object.new` constructs a new object with attributes and blocks configured for the `gcs_object`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Bucket of the Cloud Storage object.\n  - `generation_number` (`string`): Generation number of the Cloud Storage object. This is used to ensure that the ExecStep specified by this PatchJob does not change.\n  - `object` (`string`): Name of the Cloud Storage object.\n\n**Returns**:\n  - An attribute object that represents the `gcs_object` sub block.\n', args=[]),
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.new` constructs a new object with attributes and blocks configured for the `windows_exec_step_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allowed_success_codes` (`list`): Defaults to [0]. A list of possible return values that the execution can return to indicate a success. When `null`, the `allowed_success_codes` field will be omitted from the resulting object.\n  - `interpreter` (`string`): The script interpreter to use to run the script. If no interpreter is specified the script will\nbe executed directly, which will likely only succeed for scripts with shebang lines. Possible values: [&#34;SHELL&#34;, &#34;POWERSHELL&#34;] When `null`, the `interpreter` field will be omitted from the resulting object.\n  - `local_path` (`string`): An absolute path to the executable on the VM. When `null`, the `local_path` field will be omitted from the resulting object.\n  - `gcs_object` (`list[obj]`): A Cloud Storage object containing the executable. When `null`, the `gcs_object` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.patch_config.pre_step.windows_exec_step_config.gcs_object.new](#fn-patch_configpatch_configpre_stepgcs_objectnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `windows_exec_step_config` sub block.\n', args=[]),
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
    },
    windows_update:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.windows_update.new` constructs a new object with attributes and blocks configured for the `windows_update`\nTerraform sub block.\n\n\n\n**Args**:\n  - `classifications` (`list`): Only apply updates of these windows update classifications. If empty, all updates are applied. Possible values: [&#34;CRITICAL&#34;, &#34;SECURITY&#34;, &#34;DEFINITION&#34;, &#34;DRIVER&#34;, &#34;FEATURE_PACK&#34;, &#34;SERVICE_PACK&#34;, &#34;TOOL&#34;, &#34;UPDATE_ROLLUP&#34;, &#34;UPDATE&#34;] When `null`, the `classifications` field will be omitted from the resulting object.\n  - `excludes` (`list`): List of KBs to exclude from update. When `null`, the `excludes` field will be omitted from the resulting object.\n  - `exclusive_patches` (`list`): An exclusive list of kbs to be updated. These are the only patches that will be updated.\nThis field must not be used with other patch configurations. When `null`, the `exclusive_patches` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `windows_update` sub block.\n', args=[]),
      new(
        classifications=null,
        excludes=null,
        exclusive_patches=null
      ):: std.prune(a={
        classifications: classifications,
        excludes: excludes,
        exclusive_patches: exclusive_patches,
      }),
    },
    yum:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.yum.new` constructs a new object with attributes and blocks configured for the `yum`\nTerraform sub block.\n\n\n\n**Args**:\n  - `excludes` (`list`): List of packages to exclude from update. These packages will be excluded. When `null`, the `excludes` field will be omitted from the resulting object.\n  - `exclusive_packages` (`list`): An exclusive list of packages to be updated. These are the only packages that will be updated.\nIf these packages are not installed, they will be ignored. This field cannot be specified with\nany other patch configuration fields. When `null`, the `exclusive_packages` field will be omitted from the resulting object.\n  - `minimal` (`bool`): Will cause patch to run yum update-minimal instead. When `null`, the `minimal` field will be omitted from the resulting object.\n  - `security` (`bool`): Adds the --security flag to yum update. Not supported on all platforms. When `null`, the `security` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `yum` sub block.\n', args=[]),
      new(
        excludes=null,
        exclusive_packages=null,
        minimal=null,
        security=null
      ):: std.prune(a={
        excludes: excludes,
        exclusive_packages: exclusive_packages,
        minimal: minimal,
        security: security,
      }),
    },
    zypper:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.patch_config.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`\nTerraform sub block.\n\n\n\n**Args**:\n  - `categories` (`list`): Install only patches with these categories. Common categories include security, recommended, and feature. When `null`, the `categories` field will be omitted from the resulting object.\n  - `excludes` (`list`): List of packages to exclude from update. When `null`, the `excludes` field will be omitted from the resulting object.\n  - `exclusive_patches` (`list`): An exclusive list of patches to be updated. These are the only patches that will be installed using &#39;zypper patch patch:&#39; command.\nThis field must not be used with any other patch configuration fields. When `null`, the `exclusive_patches` field will be omitted from the resulting object.\n  - `severities` (`list`): Install only patches with these severities. Common severities include critical, important, moderate, and low. When `null`, the `severities` field will be omitted from the resulting object.\n  - `with_optional` (`bool`): Adds the --with-optional flag to zypper patch. When `null`, the `with_optional` field will be omitted from the resulting object.\n  - `with_update` (`bool`): Adds the --with-update flag, to zypper patch. When `null`, the `with_update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `zypper` sub block.\n', args=[]),
      new(
        categories=null,
        excludes=null,
        exclusive_patches=null,
        severities=null,
        with_optional=null,
        with_update=null
      ):: std.prune(a={
        categories: categories,
        excludes: excludes,
        exclusive_patches: exclusive_patches,
        severities: severities,
        with_optional: with_optional,
        with_update: with_update,
      }),
    },
  },
  recurring_schedule:: {
    monthly:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.monthly.new` constructs a new object with attributes and blocks configured for the `monthly`\nTerraform sub block.\n\n\n\n**Args**:\n  - `month_day` (`number`): One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.\nMonths without the target day will be skipped. For example, a schedule to run &#34;every month on the 31st&#34;\nwill not run in February, April, June, etc. When `null`, the `month_day` field will be omitted from the resulting object.\n  - `week_day_of_month` (`list[obj]`): Week day in a month. When `null`, the `week_day_of_month` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.monthly.week_day_of_month.new](#fn-recurring_schedulerecurring_scheduleweek_day_of_monthnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `monthly` sub block.\n', args=[]),
      new(
        month_day=null,
        week_day_of_month=null
      ):: std.prune(a={
        month_day: month_day,
        week_day_of_month: week_day_of_month,
      }),
      week_day_of_month:: {
        '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.monthly.week_day_of_month.new` constructs a new object with attributes and blocks configured for the `week_day_of_month`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day_of_week` (`string`): A day of the week. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `week_ordinal` (`number`): Week number in a month. 1-4 indicates the 1st to 4th week of the month. -1 indicates the last week of the month.\n\n**Returns**:\n  - An attribute object that represents the `week_day_of_month` sub block.\n', args=[]),
        new(
          day_of_week,
          week_ordinal
        ):: std.prune(a={
          day_of_week: day_of_week,
          week_ordinal: week_ordinal,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.new` constructs a new object with attributes and blocks configured for the `recurring_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `end_time` (`string`): The end time at which a recurring patch deployment schedule is no longer active.\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): The time that the recurring schedule becomes effective. Defaults to createTime of the patch deployment.\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `monthly` (`list[obj]`): Schedule with monthly executions. When `null`, the `monthly` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.monthly.new](#fn-recurring_schedulemonthlynew) constructor.\n  - `time_of_day` (`list[obj]`): Time of the day to run a recurring deployment. When `null`, the `time_of_day` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.time_of_day.new](#fn-recurring_scheduletime_of_daynew) constructor.\n  - `time_zone` (`list[obj]`): Defines the time zone that timeOfDay is relative to. The rules for daylight saving time are\ndetermined by the chosen time zone. When `null`, the `time_zone` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.time_zone.new](#fn-recurring_scheduletime_zonenew) constructor.\n  - `weekly` (`list[obj]`): Schedule with weekly executions. When `null`, the `weekly` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.recurring_schedule.weekly.new](#fn-recurring_scheduleweeklynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `recurring_schedule` sub block.\n', args=[]),
    new(
      end_time=null,
      monthly=null,
      start_time=null,
      time_of_day=null,
      time_zone=null,
      weekly=null
    ):: std.prune(a={
      end_time: end_time,
      monthly: monthly,
      start_time: start_time,
      time_of_day: time_of_day,
      time_zone: time_zone,
      weekly: weekly,
    }),
    time_of_day:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.time_of_day.new` constructs a new object with attributes and blocks configured for the `time_of_day`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23.\nAn API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_of_day` sub block.\n', args=[]),
      new(
        hours=null,
        minutes=null,
        nanos=null,
        seconds=null
      ):: std.prune(a={
        hours: hours,
        minutes: minutes,
        nanos: nanos,
        seconds: seconds,
      }),
    },
    time_zone:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.time_zone.new` constructs a new object with attributes and blocks configured for the `time_zone`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): IANA Time Zone Database version number, e.g. &#34;2019a&#34;. When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_zone` sub block.\n', args=[]),
      new(
        version=null
      ):: std.prune(a={
        version: version,
      }),
    },
    weekly:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.recurring_schedule.weekly.new` constructs a new object with attributes and blocks configured for the `weekly`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day_of_week` (`string`): IANA Time Zone Database time zone, e.g. &#34;America/New_York&#34;. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n\n**Returns**:\n  - An attribute object that represents the `weekly` sub block.\n', args=[]),
      new(
        day_of_week
      ):: std.prune(a={
        day_of_week: day_of_week,
      }),
    },
  },
  rollout:: {
    disruption_budget:: {
      '#new':: d.fn(help='\n`google.os_config_patch_deployment.rollout.disruption_budget.new` constructs a new object with attributes and blocks configured for the `disruption_budget`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed` (`number`): Specifies a fixed value. When `null`, the `fixed` field will be omitted from the resulting object.\n  - `percentage` (`number`): Specifies the relative value defined as a percentage, which will be multiplied by a reference value. When `null`, the `percentage` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disruption_budget` sub block.\n', args=[]),
      new(
        fixed=null,
        percentage=null
      ):: std.prune(a={
        fixed: fixed,
        percentage: percentage,
      }),
    },
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.rollout.new` constructs a new object with attributes and blocks configured for the `rollout`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Mode of the patch rollout. Possible values: [&#34;ZONE_BY_ZONE&#34;, &#34;CONCURRENT_ZONES&#34;]\n  - `disruption_budget` (`list[obj]`): The maximum number (or percentage) of VMs per zone to disrupt at any given moment. The number of VMs calculated from multiplying the percentage by the total number of VMs in a zone is rounded up.\nDuring patching, a VM is considered disrupted from the time the agent is notified to begin until patching has completed. This disruption time includes the time to complete reboot and any post-patch steps.\nA VM contributes to the disruption budget if its patching operation fails either when applying the patches, running pre or post patch steps, or if it fails to respond with a success notification before timing out. VMs that are not running or do not have an active agent do not count toward this disruption budget.\nFor zone-by-zone rollouts, if the disruption budget in a zone is exceeded, the patch job stops, because continuing to the next zone requires completion of the patch process in the previous zone.\nFor example, if the disruption budget has a fixed value of 10, and 8 VMs fail to patch in the current zone, the patch job continues to patch 2 VMs at a time until the zone is completed. When that zone is completed successfully, patching begins with 10 VMs at a time in the next zone. If 10 VMs in the next zone fail to patch, the patch job stops. When `null`, the `disruption_budget` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_patch_deployment.rollout.disruption_budget.new](#fn-rolloutdisruption_budgetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rollout` sub block.\n', args=[]),
    new(
      mode,
      disruption_budget=null
    ):: std.prune(a={
      disruption_budget: disruption_budget,
      mode: mode,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.os_config_patch_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDuration':: d.fn(help='`google.string.withDuration` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the duration field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `duration` field.\n', args=[]),
  withDuration(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          duration: value,
        },
      },
    },
  },
  '#withInstanceFilter':: d.fn(help='`google.list[obj].withInstanceFilter` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_filter field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInstanceFilterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_filter` field.\n', args=[]),
  withInstanceFilter(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          instance_filter: value,
        },
      },
    },
  },
  '#withInstanceFilterMixin':: d.fn(help='`google.list[obj].withInstanceFilterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_filter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceFilter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_filter` field.\n', args=[]),
  withInstanceFilterMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          instance_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOneTimeSchedule':: d.fn(help='`google.list[obj].withOneTimeSchedule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the one_time_schedule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOneTimeScheduleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `one_time_schedule` field.\n', args=[]),
  withOneTimeSchedule(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          one_time_schedule: value,
        },
      },
    },
  },
  '#withOneTimeScheduleMixin':: d.fn(help='`google.list[obj].withOneTimeScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the one_time_schedule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOneTimeSchedule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `one_time_schedule` field.\n', args=[]),
  withOneTimeScheduleMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          one_time_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPatchConfig':: d.fn(help='`google.list[obj].withPatchConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the patch_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPatchConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `patch_config` field.\n', args=[]),
  withPatchConfig(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_config: value,
        },
      },
    },
  },
  '#withPatchConfigMixin':: d.fn(help='`google.list[obj].withPatchConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the patch_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPatchConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `patch_config` field.\n', args=[]),
  withPatchConfigMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPatchDeploymentId':: d.fn(help='`google.string.withPatchDeploymentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the patch_deployment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `patch_deployment_id` field.\n', args=[]),
  withPatchDeploymentId(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_deployment_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRecurringSchedule':: d.fn(help='`google.list[obj].withRecurringSchedule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recurring_schedule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRecurringScheduleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recurring_schedule` field.\n', args=[]),
  withRecurringSchedule(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          recurring_schedule: value,
        },
      },
    },
  },
  '#withRecurringScheduleMixin':: d.fn(help='`google.list[obj].withRecurringScheduleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the recurring_schedule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRecurringSchedule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `recurring_schedule` field.\n', args=[]),
  withRecurringScheduleMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          recurring_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRollout':: d.fn(help='`google.list[obj].withRollout` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rollout field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRolloutMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rollout` field.\n', args=[]),
  withRollout(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          rollout: value,
        },
      },
    },
  },
  '#withRolloutMixin':: d.fn(help='`google.list[obj].withRolloutMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the rollout field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRollout](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `rollout` field.\n', args=[]),
  withRolloutMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          rollout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
