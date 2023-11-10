local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_backup_restore_plan', url='', help='`gke_backup_restore_plan` represents the `google_gke_backup_restore_plan` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.gke_backup_restore_plan.new` injects a new `google_gke_backup_restore_plan` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_backup_restore_plan.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_backup_restore_plan` using the reference:\n\n    $._ref.google_gke_backup_restore_plan.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_backup_restore_plan.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `backup_plan` (`string`): A reference to the BackupPlan from which Backups may be used\nas the source for Restores created via this RestorePlan.\n  - `cluster` (`string`): The source cluster from which Restores will be created via this RestorePlan.\n  - `description` (`string`): User specified descriptive string for this RestorePlan. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Description: A set of custom labels supplied by the user.\nA list of key-\u0026gt;value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The region of the Restore Plan.\n  - `name` (`string`): The full name of the BackupPlan Resource.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `restore_config` (`list[obj]`): Defines the configuration of Restores created via this RestorePlan. When `null`, the `restore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.new](#fn-restore_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    backup_plan,
    cluster,
    location,
    name,
    description=null,
    labels=null,
    project=null,
    restore_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_backup_restore_plan',
    label=resourceLabel,
    attrs=self.newAttrs(
      backup_plan=backup_plan,
      cluster=cluster,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      restore_config=restore_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_backup_restore_plan.newAttrs` constructs a new object with attributes and blocks configured for the `gke_backup_restore_plan`\nTerraform resource.\n\nUnlike [google.gke_backup_restore_plan.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `backup_plan` (`string`): A reference to the BackupPlan from which Backups may be used\nas the source for Restores created via this RestorePlan.\n  - `cluster` (`string`): The source cluster from which Restores will be created via this RestorePlan.\n  - `description` (`string`): User specified descriptive string for this RestorePlan. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Description: A set of custom labels supplied by the user.\nA list of key-&gt;value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The region of the Restore Plan.\n  - `name` (`string`): The full name of the BackupPlan Resource.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `restore_config` (`list[obj]`): Defines the configuration of Restores created via this RestorePlan. When `null`, the `restore_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.new](#fn-restore_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_backup_restore_plan` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    backup_plan,
    cluster,
    location,
    name,
    description=null,
    labels=null,
    project=null,
    restore_config=null,
    timeouts=null
  ):: std.prune(a={
    backup_plan: backup_plan,
    cluster: cluster,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    restore_config: restore_config,
    timeouts: timeouts,
  }),
  restore_config:: {
    cluster_resource_restore_scope:: {
      excluded_group_kinds:: {
        '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.excluded_group_kinds.new` constructs a new object with attributes and blocks configured for the `excluded_group_kinds`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.\n&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.\nUse empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.\n  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.\n&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `excluded_group_kinds` sub block.\n', args=[]),
        new(
          resource_group=null,
          resource_kind=null
        ):: std.prune(a={
          resource_group: resource_group,
          resource_kind: resource_kind,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.new` constructs a new object with attributes and blocks configured for the `cluster_resource_restore_scope`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all_group_kinds` (`bool`): If True, all valid cluster-scoped resources will be restored.\nMutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `all_group_kinds` field will be omitted from the resulting object.\n  - `no_group_kinds` (`bool`): If True, no cluster-scoped resources will be restored.\nMutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `no_group_kinds` field will be omitted from the resulting object.\n  - `excluded_group_kinds` (`list[obj]`): A list of cluster-scoped resource group kinds to NOT restore from the backup.\nIf specified, all valid cluster-scoped resources will be restored except\nfor those specified in the list.\nMutually exclusive to any other field in &#39;clusterResourceRestoreScope&#39;. When `null`, the `excluded_group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.excluded_group_kinds.new](#fn-restore_configrestore_configexcluded_group_kindsnew) constructor.\n  - `selected_group_kinds` (`list[obj]`): A list of cluster-scoped resource group kinds to restore from the backup.\nIf specified, only the selected resources will be restored.\nMutually exclusive to any other field in the &#39;clusterResourceRestoreScope&#39;. When `null`, the `selected_group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.selected_group_kinds.new](#fn-restore_configrestore_configselected_group_kindsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cluster_resource_restore_scope` sub block.\n', args=[]),
      new(
        all_group_kinds=null,
        excluded_group_kinds=null,
        no_group_kinds=null,
        selected_group_kinds=null
      ):: std.prune(a={
        all_group_kinds: all_group_kinds,
        excluded_group_kinds: excluded_group_kinds,
        no_group_kinds: no_group_kinds,
        selected_group_kinds: selected_group_kinds,
      }),
      selected_group_kinds:: {
        '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.selected_group_kinds.new` constructs a new object with attributes and blocks configured for the `selected_group_kinds`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.\n&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.\nUse empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.\n  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.\n&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `selected_group_kinds` sub block.\n', args=[]),
        new(
          resource_group=null,
          resource_kind=null
        ):: std.prune(a={
          resource_group: resource_group,
          resource_kind: resource_kind,
        }),
      },
    },
    excluded_namespaces:: {
      '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.excluded_namespaces.new` constructs a new object with attributes and blocks configured for the `excluded_namespaces`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespaces` (`list`): A list of Kubernetes Namespaces.\n\n**Returns**:\n  - An attribute object that represents the `excluded_namespaces` sub block.\n', args=[]),
      new(
        namespaces
      ):: std.prune(a={
        namespaces: namespaces,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.new` constructs a new object with attributes and blocks configured for the `restore_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all_namespaces` (`bool`): If True, restore all namespaced resources in the Backup.\nSetting this field to False will result in an error. When `null`, the `all_namespaces` field will be omitted from the resulting object.\n  - `cluster_resource_conflict_policy` (`string`): Defines the behavior for handling the situation where cluster-scoped resources\nbeing restored already exist in the target cluster.\nThis MUST be set to a value other than &#39;CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED&#39;\nif &#39;clusterResourceRestoreScope&#39; is anyting other than &#39;noGroupKinds&#39;.\nSee https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#clusterresourceconflictpolicy\nfor more information on each policy option. Possible values: [&#34;USE_EXISTING_VERSION&#34;, &#34;USE_BACKUP_VERSION&#34;] When `null`, the `cluster_resource_conflict_policy` field will be omitted from the resulting object.\n  - `namespaced_resource_restore_mode` (`string`): Defines the behavior for handling the situation where sets of namespaced resources\nbeing restored already exist in the target cluster.\nThis MUST be set to a value other than &#39;NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED&#39;\nif the &#39;namespacedResourceRestoreScope&#39; is anything other than &#39;noNamespaces&#39;.\nSee https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#namespacedresourcerestoremode\nfor more information on each mode. Possible values: [&#34;DELETE_AND_RESTORE&#34;, &#34;FAIL_ON_CONFLICT&#34;] When `null`, the `namespaced_resource_restore_mode` field will be omitted from the resulting object.\n  - `no_namespaces` (`bool`): Do not restore any namespaced resources if set to &#34;True&#34;.\nSpecifying this field to &#34;False&#34; is not allowed. When `null`, the `no_namespaces` field will be omitted from the resulting object.\n  - `volume_data_restore_policy` (`string`): Specifies the mechanism to be used to restore volume data.\nThis should be set to a value other than &#39;NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED&#39;\nif the &#39;namespacedResourceRestoreScope&#39; is anything other than &#39;noNamespaces&#39;.\nIf not specified, it will be treated as &#39;NO_VOLUME_DATA_RESTORATION&#39;.\nSee https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy\nfor more information on each policy option. Possible values: [&#34;RESTORE_VOLUME_DATA_FROM_BACKUP&#34;, &#34;REUSE_VOLUME_HANDLE_FROM_BACKUP&#34;, &#34;NO_VOLUME_DATA_RESTORATION&#34;] When `null`, the `volume_data_restore_policy` field will be omitted from the resulting object.\n  - `cluster_resource_restore_scope` (`list[obj]`): Identifies the cluster-scoped resources to restore from the Backup. When `null`, the `cluster_resource_restore_scope` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.cluster_resource_restore_scope.new](#fn-restore_configcluster_resource_restore_scopenew) constructor.\n  - `excluded_namespaces` (`list[obj]`): A list of selected namespaces excluded from restoration.\nAll namespaces except those in this list will be restored. When `null`, the `excluded_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.excluded_namespaces.new](#fn-restore_configexcluded_namespacesnew) constructor.\n  - `selected_applications` (`list[obj]`): A list of selected ProtectedApplications to restore.\nThe listed ProtectedApplications and all the resources\nto which they refer will be restored. When `null`, the `selected_applications` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_applications.new](#fn-restore_configselected_applicationsnew) constructor.\n  - `selected_namespaces` (`list[obj]`): A list of selected namespaces to restore from the Backup.\nThe listed Namespaces and all resources contained in them will be restored. When `null`, the `selected_namespaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_namespaces.new](#fn-restore_configselected_namespacesnew) constructor.\n  - `transformation_rules` (`list[obj]`): A list of transformation rules to be applied against Kubernetes\nresources as they are selected for restoration from a Backup.\nRules are executed in order defined - this order matters,\nas changes made by a rule may impact the filtering logic of subsequent\nrules. An empty list means no transformation will occur. When `null`, the `transformation_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.new](#fn-restore_configtransformation_rulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `restore_config` sub block.\n', args=[]),
    new(
      all_namespaces=null,
      cluster_resource_conflict_policy=null,
      cluster_resource_restore_scope=null,
      excluded_namespaces=null,
      namespaced_resource_restore_mode=null,
      no_namespaces=null,
      selected_applications=null,
      selected_namespaces=null,
      transformation_rules=null,
      volume_data_restore_policy=null
    ):: std.prune(a={
      all_namespaces: all_namespaces,
      cluster_resource_conflict_policy: cluster_resource_conflict_policy,
      cluster_resource_restore_scope: cluster_resource_restore_scope,
      excluded_namespaces: excluded_namespaces,
      namespaced_resource_restore_mode: namespaced_resource_restore_mode,
      no_namespaces: no_namespaces,
      selected_applications: selected_applications,
      selected_namespaces: selected_namespaces,
      transformation_rules: transformation_rules,
      volume_data_restore_policy: volume_data_restore_policy,
    }),
    selected_applications:: {
      namespaced_names:: {
        '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.selected_applications.namespaced_names.new` constructs a new object with attributes and blocks configured for the `namespaced_names`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of a Kubernetes Resource.\n  - `namespace` (`string`): The namespace of a Kubernetes Resource.\n\n**Returns**:\n  - An attribute object that represents the `namespaced_names` sub block.\n', args=[]),
        new(
          name,
          namespace
        ):: std.prune(a={
          name: name,
          namespace: namespace,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.selected_applications.new` constructs a new object with attributes and blocks configured for the `selected_applications`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespaced_names` (`list[obj]`): A list of namespaced Kubernetes resources. When `null`, the `namespaced_names` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.selected_applications.namespaced_names.new](#fn-restore_configrestore_confignamespaced_namesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `selected_applications` sub block.\n', args=[]),
      new(
        namespaced_names=null
      ):: std.prune(a={
        namespaced_names: namespaced_names,
      }),
    },
    selected_namespaces:: {
      '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.selected_namespaces.new` constructs a new object with attributes and blocks configured for the `selected_namespaces`\nTerraform sub block.\n\n\n\n**Args**:\n  - `namespaces` (`list`): A list of Kubernetes Namespaces.\n\n**Returns**:\n  - An attribute object that represents the `selected_namespaces` sub block.\n', args=[]),
      new(
        namespaces
      ):: std.prune(a={
        namespaces: namespaces,
      }),
    },
    transformation_rules:: {
      field_actions:: {
        '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.transformation_rules.field_actions.new` constructs a new object with attributes and blocks configured for the `field_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `from_path` (`string`): A string containing a JSON Pointer value that references the\nlocation in the target document to move the value from. When `null`, the `from_path` field will be omitted from the resulting object.\n  - `op` (`string`): Specifies the operation to perform. Possible values: [&#34;REMOVE&#34;, &#34;MOVE&#34;, &#34;COPY&#34;, &#34;ADD&#34;, &#34;TEST&#34;, &#34;REPLACE&#34;]\n  - `path` (`string`): A string containing a JSON-Pointer value that references a\nlocation within the target document where the operation is performed. When `null`, the `path` field will be omitted from the resulting object.\n  - `value` (`string`): A string that specifies the desired value in string format\nto use for transformation. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `field_actions` sub block.\n', args=[]),
        new(
          op,
          from_path=null,
          path=null,
          value=null
        ):: std.prune(a={
          from_path: from_path,
          op: op,
          path: path,
          value: value,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.transformation_rules.new` constructs a new object with attributes and blocks configured for the `transformation_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): The description is a user specified string description\nof the transformation rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `field_actions` (`list[obj]`): A list of transformation rule actions to take against candidate\nresources. Actions are executed in order defined - this order\nmatters, as they could potentially interfere with each other and\nthe first operation could affect the outcome of the second operation. When `null`, the `field_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.field_actions.new](#fn-restore_configrestore_configfield_actionsnew) constructor.\n  - `resource_filter` (`list[obj]`): This field is used to specify a set of fields that should be used to\ndetermine which resources in backup should be acted upon by the\nsupplied transformation rule actions, and this will ensure that only\nspecific resources are affected by transformation rule actions. When `null`, the `resource_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.new](#fn-restore_configrestore_configresource_filternew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transformation_rules` sub block.\n', args=[]),
      new(
        description=null,
        field_actions=null,
        resource_filter=null
      ):: std.prune(a={
        description: description,
        field_actions: field_actions,
        resource_filter: resource_filter,
      }),
      resource_filter:: {
        group_kinds:: {
          '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.group_kinds.new` constructs a new object with attributes and blocks configured for the `group_kinds`\nTerraform sub block.\n\n\n\n**Args**:\n  - `resource_group` (`string`): API Group string of a Kubernetes resource, e.g.\n&#34;apiextensions.k8s.io&#34;, &#34;storage.k8s.io&#34;, etc.\nUse empty string for core group. When `null`, the `resource_group` field will be omitted from the resulting object.\n  - `resource_kind` (`string`): Kind of a Kubernetes resource, e.g.\n&#34;CustomResourceDefinition&#34;, &#34;StorageClass&#34;, etc. When `null`, the `resource_kind` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `group_kinds` sub block.\n', args=[]),
          new(
            resource_group=null,
            resource_kind=null
          ):: std.prune(a={
            resource_group: resource_group,
            resource_kind: resource_kind,
          }),
        },
        '#new':: d.fn(help='\n`google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.new` constructs a new object with attributes and blocks configured for the `resource_filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `json_path` (`string`): This is a JSONPath expression that matches specific fields of\ncandidate resources and it operates as a filtering parameter\n(resources that are not matched with this expression will not\nbe candidates for transformation). When `null`, the `json_path` field will be omitted from the resulting object.\n  - `namespaces` (`list`): (Filtering parameter) Any resource subject to transformation must\nbe contained within one of the listed Kubernetes Namespace in the\nBackup. If this field is not provided, no namespace filtering will\nbe performed (all resources in all Namespaces, including all\ncluster-scoped resources, will be candidates for transformation).\nTo mix cluster-scoped and namespaced resources in the same rule,\nuse an empty string (&#34;&#34;) as one of the target namespaces. When `null`, the `namespaces` field will be omitted from the resulting object.\n  - `group_kinds` (`list[obj]`): (Filtering parameter) Any resource subject to transformation must\nbelong to one of the listed &#34;types&#34;. If this field is not provided,\nno type filtering will be performed\n(all resources of all types matching previous filtering parameters\nwill be candidates for transformation). When `null`, the `group_kinds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_backup_restore_plan.restore_config.transformation_rules.resource_filter.group_kinds.new](#fn-restore_configrestore_configtransformation_rulesgroup_kindsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `resource_filter` sub block.\n', args=[]),
        new(
          group_kinds=null,
          json_path=null,
          namespaces=null
        ):: std.prune(a={
          group_kinds: group_kinds,
          json_path: json_path,
          namespaces: namespaces,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_backup_restore_plan.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBackupPlan':: d.fn(help='`google.string.withBackupPlan` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the backup_plan field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `backup_plan` field.\n', args=[]),
  withBackupPlan(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          backup_plan: value,
        },
      },
    },
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRestoreConfig':: d.fn(help='`google.list[obj].withRestoreConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestoreConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_config` field.\n', args=[]),
  withRestoreConfig(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          restore_config: value,
        },
      },
    },
  },
  '#withRestoreConfigMixin':: d.fn(help='`google.list[obj].withRestoreConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestoreConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_config` field.\n', args=[]),
  withRestoreConfigMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          restore_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_backup_restore_plan+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
