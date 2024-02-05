local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_feature_membership', url='', help='`gke_hub_feature_membership` represents the `google_gke_hub_feature_membership` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  configmanagement:: {
    binauthz:: {
      '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.binauthz.new` constructs a new object with attributes and blocks configured for the `binauthz`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Whether binauthz is enabled in this cluster. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `binauthz` sub block.\n', args=[]),
      new(
        enabled=null
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    config_sync:: {
      git:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.config_sync.git.new` constructs a new object with attributes and blocks configured for the `git`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_service_account_email` (`string`): The GCP Service Account Email used for auth when secretType is gcpServiceAccount. When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.\n  - `https_proxy` (`string`): URL for the HTTPS proxy to be used when communicating with the Git repo. When `null`, the `https_proxy` field will be omitted from the resulting object.\n  - `policy_dir` (`string`): The path within the Git repository that represents the top level of the repo to sync. Default: the root directory of the repository. When `null`, the `policy_dir` field will be omitted from the resulting object.\n  - `secret_type` (`string`): Type of secret configured for access to the Git repo. Must be one of ssh, cookiefile, gcenode, token, gcpserviceaccount or none. The validation of this is case-sensitive. When `null`, the `secret_type` field will be omitted from the resulting object.\n  - `sync_branch` (`string`): The branch of the repository to sync from. Default: master. When `null`, the `sync_branch` field will be omitted from the resulting object.\n  - `sync_repo` (`string`): The URL of the Git repository to use as the source of truth. When `null`, the `sync_repo` field will be omitted from the resulting object.\n  - `sync_rev` (`string`): Git revision (tag or hash) to check out. Default HEAD. When `null`, the `sync_rev` field will be omitted from the resulting object.\n  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15. When `null`, the `sync_wait_secs` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `git` sub block.\n', args=[]),
        new(
          gcp_service_account_email=null,
          https_proxy=null,
          policy_dir=null,
          secret_type=null,
          sync_branch=null,
          sync_repo=null,
          sync_rev=null,
          sync_wait_secs=null
        ):: std.prune(a={
          gcp_service_account_email: gcp_service_account_email,
          https_proxy: https_proxy,
          policy_dir: policy_dir,
          secret_type: secret_type,
          sync_branch: sync_branch,
          sync_repo: sync_repo,
          sync_rev: sync_rev,
          sync_wait_secs: sync_wait_secs,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.config_sync.new` constructs a new object with attributes and blocks configured for the `config_sync`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metrics_gcp_service_account_email` (`string`): The Email of the Google Cloud Service Account (GSA) used for exporting Config Sync metrics to Cloud Monitoring. The GSA should have the Monitoring Metric Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes ServiceAccount `default` in the namespace `config-management-monitoring` should be bound to the GSA. When `null`, the `metrics_gcp_service_account_email` field will be omitted from the resulting object.\n  - `prevent_drift` (`bool`): Set to true to enable the Config Sync admission webhook to prevent drifts. If set to `false`, disables the Config Sync admission webhook and does not prevent drifts. When `null`, the `prevent_drift` field will be omitted from the resulting object.\n  - `source_format` (`string`): Specifies whether the Config Sync Repo is in &#34;hierarchical&#34; or &#34;unstructured&#34; mode. When `null`, the `source_format` field will be omitted from the resulting object.\n  - `git` (`list[obj]`): Set the `git` field on the resulting object. When `null`, the `git` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.git.new](#fn-configmanagementconfigmanagementgitnew) constructor.\n  - `oci` (`list[obj]`): Set the `oci` field on the resulting object. When `null`, the `oci` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.oci.new](#fn-configmanagementconfigmanagementocinew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config_sync` sub block.\n', args=[]),
      new(
        git=null,
        metrics_gcp_service_account_email=null,
        oci=null,
        prevent_drift=null,
        source_format=null
      ):: std.prune(a={
        git: git,
        metrics_gcp_service_account_email: metrics_gcp_service_account_email,
        oci: oci,
        prevent_drift: prevent_drift,
        source_format: source_format,
      }),
      oci:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.config_sync.oci.new` constructs a new object with attributes and blocks configured for the `oci`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_service_account_email` (`string`): The GCP Service Account Email used for auth when secret_type is gcpserviceaccount.  When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.\n  - `policy_dir` (`string`): The absolute path of the directory that contains the local resources. Default: the root directory of the image. When `null`, the `policy_dir` field will be omitted from the resulting object.\n  - `secret_type` (`string`): Type of secret configured for access to the OCI Image. Must be one of gcenode, gcpserviceaccount or none. The validation of this is case-sensitive. When `null`, the `secret_type` field will be omitted from the resulting object.\n  - `sync_repo` (`string`): The OCI image repository URL for the package to sync from. e.g. LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME. When `null`, the `sync_repo` field will be omitted from the resulting object.\n  - `sync_wait_secs` (`string`): Period in seconds(int64 format) between consecutive syncs. Default: 15. When `null`, the `sync_wait_secs` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oci` sub block.\n', args=[]),
        new(
          gcp_service_account_email=null,
          policy_dir=null,
          secret_type=null,
          sync_repo=null,
          sync_wait_secs=null
        ):: std.prune(a={
          gcp_service_account_email: gcp_service_account_email,
          policy_dir: policy_dir,
          secret_type: secret_type,
          sync_repo: sync_repo,
          sync_wait_secs: sync_wait_secs,
        }),
      },
    },
    hierarchy_controller:: {
      '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.hierarchy_controller.new` constructs a new object with attributes and blocks configured for the `hierarchy_controller`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_hierarchical_resource_quota` (`bool`): Whether hierarchical resource quota is enabled in this cluster. When `null`, the `enable_hierarchical_resource_quota` field will be omitted from the resulting object.\n  - `enable_pod_tree_labels` (`bool`): Whether pod tree labels are enabled in this cluster. When `null`, the `enable_pod_tree_labels` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether Hierarchy Controller is enabled in this cluster. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hierarchy_controller` sub block.\n', args=[]),
      new(
        enable_hierarchical_resource_quota=null,
        enable_pod_tree_labels=null,
        enabled=null
      ):: std.prune(a={
        enable_hierarchical_resource_quota: enable_hierarchical_resource_quota,
        enable_pod_tree_labels: enable_pod_tree_labels,
        enabled: enabled,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.new` constructs a new object with attributes and blocks configured for the `configmanagement`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): Optional. Version of ACM to install. Defaults to the latest version. When `null`, the `version` field will be omitted from the resulting object.\n  - `binauthz` (`list[obj]`): **DEPRECATED** Binauthz configuration for the cluster. This field will be ignored and should not be set. When `null`, the `binauthz` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.binauthz.new](#fn-configmanagementbinauthznew) constructor.\n  - `config_sync` (`list[obj]`): Config Sync configuration for the cluster. When `null`, the `config_sync` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.config_sync.new](#fn-configmanagementconfig_syncnew) constructor.\n  - `hierarchy_controller` (`list[obj]`): Hierarchy Controller configuration for the cluster. When `null`, the `hierarchy_controller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.hierarchy_controller.new](#fn-configmanagementhierarchy_controllernew) constructor.\n  - `policy_controller` (`list[obj]`): Policy Controller configuration for the cluster. When `null`, the `policy_controller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.policy_controller.new](#fn-configmanagementpolicy_controllernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `configmanagement` sub block.\n', args=[]),
    new(
      binauthz=null,
      config_sync=null,
      hierarchy_controller=null,
      policy_controller=null,
      version=null
    ):: std.prune(a={
      binauthz: binauthz,
      config_sync: config_sync,
      hierarchy_controller: hierarchy_controller,
      policy_controller: policy_controller,
      version: version,
    }),
    policy_controller:: {
      monitoring:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.policy_controller.monitoring.new` constructs a new object with attributes and blocks configured for the `monitoring`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backends` (`list`):  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. When `null`, the `backends` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `monitoring` sub block.\n', args=[]),
        new(
          backends=null
        ):: std.prune(a={
          backends: backends,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature_membership.configmanagement.policy_controller.new` constructs a new object with attributes and blocks configured for the `policy_controller`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audit_interval_seconds` (`string`): Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether. When `null`, the `audit_interval_seconds` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Enables the installation of Policy Controller. If false, the rest of PolicyController fields take no effect. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `exemptable_namespaces` (`list`): The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. When `null`, the `exemptable_namespaces` field will be omitted from the resulting object.\n  - `log_denies_enabled` (`bool`): Logs all denies and dry run failures. When `null`, the `log_denies_enabled` field will be omitted from the resulting object.\n  - `mutation_enabled` (`bool`): Enable or disable mutation in policy controller. If true, mutation CRDs, webhook and controller deployment will be deployed to the cluster. When `null`, the `mutation_enabled` field will be omitted from the resulting object.\n  - `referential_rules_enabled` (`bool`): Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. When `null`, the `referential_rules_enabled` field will be omitted from the resulting object.\n  - `template_library_installed` (`bool`): Installs the default template library along with Policy Controller. When `null`, the `template_library_installed` field will be omitted from the resulting object.\n  - `monitoring` (`list[obj]`): Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;]. Default: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;] When `null`, the `monitoring` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.policy_controller.monitoring.new](#fn-configmanagementconfigmanagementmonitoringnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_controller` sub block.\n', args=[]),
      new(
        audit_interval_seconds=null,
        enabled=null,
        exemptable_namespaces=null,
        log_denies_enabled=null,
        monitoring=null,
        mutation_enabled=null,
        referential_rules_enabled=null,
        template_library_installed=null
      ):: std.prune(a={
        audit_interval_seconds: audit_interval_seconds,
        enabled: enabled,
        exemptable_namespaces: exemptable_namespaces,
        log_denies_enabled: log_denies_enabled,
        monitoring: monitoring,
        mutation_enabled: mutation_enabled,
        referential_rules_enabled: referential_rules_enabled,
        template_library_installed: template_library_installed,
      }),
    },
  },
  mesh:: {
    '#new':: d.fn(help='\n`google.gke_hub_feature_membership.mesh.new` constructs a new object with attributes and blocks configured for the `mesh`\nTerraform sub block.\n\n\n\n**Args**:\n  - `control_plane` (`string`): **DEPRECATED** Whether to automatically manage Service Mesh control planes. Possible values: CONTROL_PLANE_MANAGEMENT_UNSPECIFIED, AUTOMATIC, MANUAL When `null`, the `control_plane` field will be omitted from the resulting object.\n  - `management` (`string`): Whether to automatically manage Service Mesh. Possible values: MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC, MANAGEMENT_MANUAL When `null`, the `management` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `mesh` sub block.\n', args=[]),
    new(
      control_plane=null,
      management=null
    ):: std.prune(a={
      control_plane: control_plane,
      management: management,
    }),
  },
  '#new':: d.fn(help="\n`google.gke_hub_feature_membership.new` injects a new `google_gke_hub_feature_membership` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_feature_membership.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_feature_membership` using the reference:\n\n    $._ref.google_gke_hub_feature_membership.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_feature_membership.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `feature` (`string`): The name of the feature\n  - `location` (`string`): The location of the feature\n  - `membership` (`string`): The name of the membership\n  - `membership_location` (`string`): The location of the membership When `null`, the `membership_location` field will be omitted from the resulting object.\n  - `project` (`string`): The project of the feature When `null`, the `project` field will be omitted from the resulting object.\n  - `configmanagement` (`list[obj]`): Config Management-specific spec. When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.new](#fn-configmanagementnew) constructor.\n  - `mesh` (`list[obj]`): Manage Mesh Features When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.mesh.new](#fn-meshnew) constructor.\n  - `policycontroller` (`list[obj]`): Policy Controller-specific spec. When `null`, the `policycontroller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.new](#fn-policycontrollernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    feature,
    location,
    membership,
    configmanagement=null,
    membership_location=null,
    mesh=null,
    policycontroller=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      configmanagement=configmanagement,
      feature=feature,
      location=location,
      membership=membership,
      membership_location=membership_location,
      mesh=mesh,
      policycontroller=policycontroller,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_feature_membership.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_feature_membership`\nTerraform resource.\n\nUnlike [google.gke_hub_feature_membership.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `feature` (`string`): The name of the feature\n  - `location` (`string`): The location of the feature\n  - `membership` (`string`): The name of the membership\n  - `membership_location` (`string`): The location of the membership When `null`, the `membership_location` field will be omitted from the resulting object.\n  - `project` (`string`): The project of the feature When `null`, the `project` field will be omitted from the resulting object.\n  - `configmanagement` (`list[obj]`): Config Management-specific spec. When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.configmanagement.new](#fn-configmanagementnew) constructor.\n  - `mesh` (`list[obj]`): Manage Mesh Features When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.mesh.new](#fn-meshnew) constructor.\n  - `policycontroller` (`list[obj]`): Policy Controller-specific spec. When `null`, the `policycontroller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.new](#fn-policycontrollernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_feature_membership` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    feature,
    location,
    membership,
    configmanagement=null,
    membership_location=null,
    mesh=null,
    policycontroller=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    configmanagement: configmanagement,
    feature: feature,
    location: location,
    membership: membership,
    membership_location: membership_location,
    mesh: mesh,
    policycontroller: policycontroller,
    project: project,
    timeouts: timeouts,
  }),
  policycontroller:: {
    '#new':: d.fn(help='\n`google.gke_hub_feature_membership.policycontroller.new` constructs a new object with attributes and blocks configured for the `policycontroller`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): Optional. Version of Policy Controller to install. Defaults to the latest version. When `null`, the `version` field will be omitted from the resulting object.\n  - `policy_controller_hub_config` (`list[obj]`): Policy Controller configuration for the cluster. When `null`, the `policy_controller_hub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.new](#fn-policycontrollerpolicy_controller_hub_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policycontroller` sub block.\n', args=[]),
    new(
      policy_controller_hub_config=null,
      version=null
    ):: std.prune(a={
      policy_controller_hub_config: policy_controller_hub_config,
      version: version,
    }),
    policy_controller_hub_config:: {
      monitoring:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.monitoring.new` constructs a new object with attributes and blocks configured for the `monitoring`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backends` (`list`):  Specifies the list of backends Policy Controller will export to. Specifying an empty value `[]` disables metrics export. When `null`, the `backends` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `monitoring` sub block.\n', args=[]),
        new(
          backends=null
        ):: std.prune(a={
          backends: backends,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.new` constructs a new object with attributes and blocks configured for the `policy_controller_hub_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audit_interval_seconds` (`number`): Sets the interval for Policy Controller Audit Scans (in seconds). When set to 0, this disables audit functionality altogether. When `null`, the `audit_interval_seconds` field will be omitted from the resulting object.\n  - `constraint_violation_limit` (`number`): The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used. When `null`, the `constraint_violation_limit` field will be omitted from the resulting object.\n  - `exemptable_namespaces` (`list`): The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. When `null`, the `exemptable_namespaces` field will be omitted from the resulting object.\n  - `install_spec` (`string`): Configures the mode of the Policy Controller installation. Possible values: INSTALL_SPEC_UNSPECIFIED, INSTALL_SPEC_NOT_INSTALLED, INSTALL_SPEC_ENABLED, INSTALL_SPEC_SUSPENDED, INSTALL_SPEC_DETACHED When `null`, the `install_spec` field will be omitted from the resulting object.\n  - `log_denies_enabled` (`bool`): Logs all denies and dry run failures. When `null`, the `log_denies_enabled` field will be omitted from the resulting object.\n  - `mutation_enabled` (`bool`): Enables the ability to mutate resources using Policy Controller. When `null`, the `mutation_enabled` field will be omitted from the resulting object.\n  - `referential_rules_enabled` (`bool`): Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. When `null`, the `referential_rules_enabled` field will be omitted from the resulting object.\n  - `monitoring` (`list[obj]`): Specifies the backends Policy Controller should export metrics to. For example, to specify metrics should be exported to Cloud Monitoring and Prometheus, specify backends: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;]. Default: [&#34;cloudmonitoring&#34;, &#34;prometheus&#34;] When `null`, the `monitoring` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.monitoring.new](#fn-policycontrollerpolicycontrollermonitoringnew) constructor.\n  - `policy_content` (`list[obj]`): Specifies the desired policy content on the cluster. When `null`, the `policy_content` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.policy_content.new](#fn-policycontrollerpolicycontrollerpolicy_contentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_controller_hub_config` sub block.\n', args=[]),
      new(
        audit_interval_seconds=null,
        constraint_violation_limit=null,
        exemptable_namespaces=null,
        install_spec=null,
        log_denies_enabled=null,
        monitoring=null,
        mutation_enabled=null,
        policy_content=null,
        referential_rules_enabled=null
      ):: std.prune(a={
        audit_interval_seconds: audit_interval_seconds,
        constraint_violation_limit: constraint_violation_limit,
        exemptable_namespaces: exemptable_namespaces,
        install_spec: install_spec,
        log_denies_enabled: log_denies_enabled,
        monitoring: monitoring,
        mutation_enabled: mutation_enabled,
        policy_content: policy_content,
        referential_rules_enabled: referential_rules_enabled,
      }),
      policy_content:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.policy_content.new` constructs a new object with attributes and blocks configured for the `policy_content`\nTerraform sub block.\n\n\n\n**Args**:\n  - `template_library` (`list[obj]`): Configures the installation of the Template Library. When `null`, the `template_library` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.policy_content.template_library.new](#fn-policycontrollerpolicycontrollerpolicy_controller_hub_configtemplate_librarynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_content` sub block.\n', args=[]),
        new(
          template_library=null
        ):: std.prune(a={
          template_library: template_library,
        }),
        template_library:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature_membership.policycontroller.policy_controller_hub_config.policy_content.template_library.new` constructs a new object with attributes and blocks configured for the `template_library`\nTerraform sub block.\n\n\n\n**Args**:\n  - `installation` (`string`): Configures the manner in which the template library is installed on the cluster. Possible values: INSTALLATION_UNSPECIFIED, NOT_INSTALLED, ALL When `null`, the `installation` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `template_library` sub block.\n', args=[]),
          new(
            installation=null
          ):: std.prune(a={
            installation: installation,
          }),
        },
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_feature_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withConfigmanagement':: d.fn(help='`google.list[obj].withConfigmanagement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the configmanagement field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigmanagementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `configmanagement` field.\n', args=[]),
  withConfigmanagement(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          configmanagement: value,
        },
      },
    },
  },
  '#withConfigmanagementMixin':: d.fn(help='`google.list[obj].withConfigmanagementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the configmanagement field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfigmanagement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `configmanagement` field.\n', args=[]),
  withConfigmanagementMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          configmanagement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFeature':: d.fn(help='`google.string.withFeature` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the feature field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `feature` field.\n', args=[]),
  withFeature(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          feature: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMembership':: d.fn(help='`google.string.withMembership` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership` field.\n', args=[]),
  withMembership(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          membership: value,
        },
      },
    },
  },
  '#withMembershipLocation':: d.fn(help='`google.string.withMembershipLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership_location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership_location` field.\n', args=[]),
  withMembershipLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          membership_location: value,
        },
      },
    },
  },
  '#withMesh':: d.fn(help='`google.list[obj].withMesh` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mesh field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMeshMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mesh` field.\n', args=[]),
  withMesh(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          mesh: value,
        },
      },
    },
  },
  '#withMeshMixin':: d.fn(help='`google.list[obj].withMeshMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mesh field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMesh](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mesh` field.\n', args=[]),
  withMeshMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          mesh+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPolicycontroller':: d.fn(help='`google.list[obj].withPolicycontroller` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the policycontroller field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPolicycontrollerMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `policycontroller` field.\n', args=[]),
  withPolicycontroller(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          policycontroller: value,
        },
      },
    },
  },
  '#withPolicycontrollerMixin':: d.fn(help='`google.list[obj].withPolicycontrollerMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the policycontroller field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPolicycontroller](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `policycontroller` field.\n', args=[]),
  withPolicycontrollerMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          policycontroller+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
