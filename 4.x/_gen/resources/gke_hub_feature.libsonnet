local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_feature', url='', help='`gke_hub_feature` represents the `google_gke_hub_feature` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  fleet_default_member_config:: {
    configmanagement:: {
      config_sync:: {
        git:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.git.new` constructs a new object with attributes and blocks configured for the `git`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_service_account_email` (`string`): The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.\n  - `https_proxy` (`string`): URL for the HTTPS Proxy to be used when communicating with the Git repo When `null`, the `https_proxy` field will be omitted from the resulting object.\n  - `policy_dir` (`string`): The path within the Git repository that represents the top level of the repo to sync When `null`, the `policy_dir` field will be omitted from the resulting object.\n  - `secret_type` (`string`): Type of secret configured for access to the Git repo\n  - `sync_branch` (`string`): The branch of the repository to sync from. Default: master When `null`, the `sync_branch` field will be omitted from the resulting object.\n  - `sync_repo` (`string`): The URL of the Git repository to use as the source of truth When `null`, the `sync_repo` field will be omitted from the resulting object.\n  - `sync_rev` (`string`): Git revision (tag or hash) to check out. Default HEAD When `null`, the `sync_rev` field will be omitted from the resulting object.\n  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15 When `null`, the `sync_wait_secs` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `git` sub block.\n', args=[]),
          new(
            secret_type,
            gcp_service_account_email=null,
            https_proxy=null,
            policy_dir=null,
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
        '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.new` constructs a new object with attributes and blocks configured for the `config_sync`\nTerraform sub block.\n\n\n\n**Args**:\n  - `source_format` (`string`): Specifies whether the Config Sync Repo is in hierarchical or unstructured mode When `null`, the `source_format` field will be omitted from the resulting object.\n  - `git` (`list[obj]`): Git repo configuration for the cluster When `null`, the `git` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.git.new](#fn-fleet_default_member_configfleet_default_member_configconfigmanagementgitnew) constructor.\n  - `oci` (`list[obj]`): OCI repo configuration for the cluster When `null`, the `oci` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.oci.new](#fn-fleet_default_member_configfleet_default_member_configconfigmanagementocinew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config_sync` sub block.\n', args=[]),
        new(
          git=null,
          oci=null,
          source_format=null
        ):: std.prune(a={
          git: git,
          oci: oci,
          source_format: source_format,
        }),
        oci:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.oci.new` constructs a new object with attributes and blocks configured for the `oci`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gcp_service_account_email` (`string`): The Google Cloud Service Account Email used for auth when secretType is gcpServiceAccount When `null`, the `gcp_service_account_email` field will be omitted from the resulting object.\n  - `policy_dir` (`string`): The absolute path of the directory that contains the local resources. Default: the root directory of the image When `null`, the `policy_dir` field will be omitted from the resulting object.\n  - `secret_type` (`string`): Type of secret configured for access to the Git repo\n  - `sync_repo` (`string`): The OCI image repository URL for the package to sync from When `null`, the `sync_repo` field will be omitted from the resulting object.\n  - `sync_wait_secs` (`string`): Period in seconds between consecutive syncs. Default: 15 When `null`, the `sync_wait_secs` field will be omitted from the resulting object.\n  - `version` (`string`): Version of ACM installed When `null`, the `version` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `oci` sub block.\n', args=[]),
          new(
            secret_type,
            gcp_service_account_email=null,
            policy_dir=null,
            sync_repo=null,
            sync_wait_secs=null,
            version=null
          ):: std.prune(a={
            gcp_service_account_email: gcp_service_account_email,
            policy_dir: policy_dir,
            secret_type: secret_type,
            sync_repo: sync_repo,
            sync_wait_secs: sync_wait_secs,
            version: version,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.configmanagement.new` constructs a new object with attributes and blocks configured for the `configmanagement`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): Version of ACM installed When `null`, the `version` field will be omitted from the resulting object.\n  - `config_sync` (`list[obj]`): ConfigSync configuration for the cluster When `null`, the `config_sync` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.config_sync.new](#fn-fleet_default_member_configfleet_default_member_configconfig_syncnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `configmanagement` sub block.\n', args=[]),
      new(
        config_sync=null,
        version=null
      ):: std.prune(a={
        config_sync: config_sync,
        version: version,
      }),
    },
    mesh:: {
      '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.mesh.new` constructs a new object with attributes and blocks configured for the `mesh`\nTerraform sub block.\n\n\n\n**Args**:\n  - `management` (`string`): Whether to automatically manage Service Mesh Possible values: [&#34;MANAGEMENT_UNSPECIFIED&#34;, &#34;MANAGEMENT_AUTOMATIC&#34;, &#34;MANAGEMENT_MANUAL&#34;]\n\n**Returns**:\n  - An attribute object that represents the `mesh` sub block.\n', args=[]),
      new(
        management
      ):: std.prune(a={
        management: management,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.new` constructs a new object with attributes and blocks configured for the `fleet_default_member_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `configmanagement` (`list[obj]`): Config Management spec When `null`, the `configmanagement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.configmanagement.new](#fn-fleet_default_member_configconfigmanagementnew) constructor.\n  - `mesh` (`list[obj]`): Service Mesh spec When `null`, the `mesh` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.mesh.new](#fn-fleet_default_member_configmeshnew) constructor.\n  - `policycontroller` (`list[obj]`): Policy Controller spec When `null`, the `policycontroller` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.new](#fn-fleet_default_member_configpolicycontrollernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fleet_default_member_config` sub block.\n', args=[]),
    new(
      configmanagement=null,
      mesh=null,
      policycontroller=null
    ):: std.prune(a={
      configmanagement: configmanagement,
      mesh: mesh,
      policycontroller: policycontroller,
    }),
    policycontroller:: {
      '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.new` constructs a new object with attributes and blocks configured for the `policycontroller`\nTerraform sub block.\n\n\n\n**Args**:\n  - `version` (`string`): Configures the version of Policy Controller When `null`, the `version` field will be omitted from the resulting object.\n  - `policy_controller_hub_config` (`list[obj]`): Configuration of Policy Controller When `null`, the `policy_controller_hub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.new](#fn-fleet_default_member_configfleet_default_member_configpolicy_controller_hub_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policycontroller` sub block.\n', args=[]),
      new(
        policy_controller_hub_config=null,
        version=null
      ):: std.prune(a={
        policy_controller_hub_config: policy_controller_hub_config,
        version: version,
      }),
      policy_controller_hub_config:: {
        deployment_configs:: {
          container_resources:: {
            limits:: {
              '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits.new` constructs a new object with attributes and blocks configured for the `limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu` (`string`): CPU requirement expressed in Kubernetes resource units. When `null`, the `cpu` field will be omitted from the resulting object.\n  - `memory` (`string`): Memory requirement expressed in Kubernetes resource units. When `null`, the `memory` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `limits` sub block.\n', args=[]),
              new(
                cpu=null,
                memory=null
              ):: std.prune(a={
                cpu: cpu,
                memory: memory,
              }),
            },
            '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.new` constructs a new object with attributes and blocks configured for the `container_resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `limits` (`list[obj]`): Limits describes the maximum amount of compute resources allowed for use by the running container. When `null`, the `limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.limits.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configdeployment_configslimitsnew) constructor.\n  - `requests` (`list[obj]`): Requests describes the amount of compute resources reserved for the container by the kube-scheduler. When `null`, the `requests` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.requests.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configdeployment_configsrequestsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `container_resources` sub block.\n', args=[]),
            new(
              limits=null,
              requests=null
            ):: std.prune(a={
              limits: limits,
              requests: requests,
            }),
            requests:: {
              '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.requests.new` constructs a new object with attributes and blocks configured for the `requests`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu` (`string`): CPU requirement expressed in Kubernetes resource units. When `null`, the `cpu` field will be omitted from the resulting object.\n  - `memory` (`string`): Memory requirement expressed in Kubernetes resource units. When `null`, the `memory` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `requests` sub block.\n', args=[]),
              new(
                cpu=null,
                memory=null
              ):: std.prune(a={
                cpu: cpu,
                memory: memory,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.new` constructs a new object with attributes and blocks configured for the `deployment_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `component` (`string`): Set the `component` field on the resulting object.\n  - `pod_affinity` (`string`): Pod affinity configuration. Possible values: [&#34;AFFINITY_UNSPECIFIED&#34;, &#34;NO_AFFINITY&#34;, &#34;ANTI_AFFINITY&#34;] When `null`, the `pod_affinity` field will be omitted from the resulting object.\n  - `replica_count` (`number`): Pod replica count. When `null`, the `replica_count` field will be omitted from the resulting object.\n  - `container_resources` (`list[obj]`): Container resource requirements. When `null`, the `container_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.container_resources.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configcontainer_resourcesnew) constructor.\n  - `pod_toleration` (`list[obj]`): Pod tolerations of node taints. When `null`, the `pod_toleration` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.pod_toleration.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configpod_tolerationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `deployment_configs` sub block.\n', args=[]),
          new(
            component,
            container_resources=null,
            pod_affinity=null,
            pod_toleration=null,
            replica_count=null
          ):: std.prune(a={
            component: component,
            container_resources: container_resources,
            pod_affinity: pod_affinity,
            pod_toleration: pod_toleration,
            replica_count: replica_count,
          }),
          pod_toleration:: {
            '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.pod_toleration.new` constructs a new object with attributes and blocks configured for the `pod_toleration`\nTerraform sub block.\n\n\n\n**Args**:\n  - `effect` (`string`): Matches a taint effect. When `null`, the `effect` field will be omitted from the resulting object.\n  - `key` (`string`): Matches a taint key (not necessarily unique). When `null`, the `key` field will be omitted from the resulting object.\n  - `operator` (`string`): Matches a taint operator. When `null`, the `operator` field will be omitted from the resulting object.\n  - `value` (`string`): Matches a taint value. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pod_toleration` sub block.\n', args=[]),
            new(
              effect=null,
              key=null,
              operator=null,
              value=null
            ):: std.prune(a={
              effect: effect,
              key: key,
              operator: operator,
              value: value,
            }),
          },
        },
        monitoring:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.monitoring.new` constructs a new object with attributes and blocks configured for the `monitoring`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backends` (`list`): Specifies the list of backends Policy Controller will export to. An empty list would effectively disable metrics export. Possible values: [&#34;MONITORING_BACKEND_UNSPECIFIED&#34;, &#34;PROMETHEUS&#34;, &#34;CLOUD_MONITORING&#34;] When `null`, the `backends` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `monitoring` sub block.\n', args=[]),
          new(
            backends=null
          ):: std.prune(a={
            backends: backends,
          }),
        },
        '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.new` constructs a new object with attributes and blocks configured for the `policy_controller_hub_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audit_interval_seconds` (`number`): Interval for Policy Controller Audit scans (in seconds). When set to 0, this disables audit functionality altogether. When `null`, the `audit_interval_seconds` field will be omitted from the resulting object.\n  - `constraint_violation_limit` (`number`): The maximum number of audit violations to be stored in a constraint. If not set, the internal default of 20 will be used. When `null`, the `constraint_violation_limit` field will be omitted from the resulting object.\n  - `exemptable_namespaces` (`list`): The set of namespaces that are excluded from Policy Controller checks. Namespaces do not need to currently exist on the cluster. When `null`, the `exemptable_namespaces` field will be omitted from the resulting object.\n  - `install_spec` (`string`): Configures the mode of the Policy Controller installation Possible values: [&#34;INSTALL_SPEC_UNSPECIFIED&#34;, &#34;INSTALL_SPEC_NOT_INSTALLED&#34;, &#34;INSTALL_SPEC_ENABLED&#34;, &#34;INSTALL_SPEC_SUSPENDED&#34;, &#34;INSTALL_SPEC_DETACHED&#34;]\n  - `log_denies_enabled` (`bool`): Logs all denies and dry run failures. When `null`, the `log_denies_enabled` field will be omitted from the resulting object.\n  - `mutation_enabled` (`bool`): Enables the ability to mutate resources using Policy Controller. When `null`, the `mutation_enabled` field will be omitted from the resulting object.\n  - `referential_rules_enabled` (`bool`): Enables the ability to use Constraint Templates that reference to objects other than the object currently being evaluated. When `null`, the `referential_rules_enabled` field will be omitted from the resulting object.\n  - `deployment_configs` (`list[obj]`): Map of deployment configs to deployments (&#34;admission&#34;, &#34;audit&#34;, &#34;mutation&#34;). When `null`, the `deployment_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.deployment_configs.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerdeployment_configsnew) constructor.\n  - `monitoring` (`list[obj]`): Monitoring specifies the configuration of monitoring Policy Controller. When `null`, the `monitoring` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.monitoring.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollermonitoringnew) constructor.\n  - `policy_content` (`list[obj]`): Specifies the desired policy content on the cluster. When `null`, the `policy_content` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_contentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_controller_hub_config` sub block.\n', args=[]),
        new(
          install_spec,
          audit_interval_seconds=null,
          constraint_violation_limit=null,
          deployment_configs=null,
          exemptable_namespaces=null,
          log_denies_enabled=null,
          monitoring=null,
          mutation_enabled=null,
          policy_content=null,
          referential_rules_enabled=null
        ):: std.prune(a={
          audit_interval_seconds: audit_interval_seconds,
          constraint_violation_limit: constraint_violation_limit,
          deployment_configs: deployment_configs,
          exemptable_namespaces: exemptable_namespaces,
          install_spec: install_spec,
          log_denies_enabled: log_denies_enabled,
          monitoring: monitoring,
          mutation_enabled: mutation_enabled,
          policy_content: policy_content,
          referential_rules_enabled: referential_rules_enabled,
        }),
        policy_content:: {
          bundles:: {
            '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.bundles.new` constructs a new object with attributes and blocks configured for the `bundles`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bundle` (`string`): Set the `bundle` field on the resulting object.\n  - `exempted_namespaces` (`list`): The set of namespaces to be exempted from the bundle. When `null`, the `exempted_namespaces` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `bundles` sub block.\n', args=[]),
            new(
              bundle,
              exempted_namespaces=null
            ):: std.prune(a={
              bundle: bundle,
              exempted_namespaces: exempted_namespaces,
            }),
          },
          '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.new` constructs a new object with attributes and blocks configured for the `policy_content`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bundles` (`list[obj]`): Configures which bundles to install and their corresponding install specs. When `null`, the `bundles` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.bundles.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configbundlesnew) constructor.\n  - `template_library` (`list[obj]`): Configures the installation of the Template Library. When `null`, the `template_library` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.template_library.new](#fn-fleet_default_member_configfleet_default_member_configpolicycontrollerpolicy_controller_hub_configtemplate_librarynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `policy_content` sub block.\n', args=[]),
          new(
            bundles=null,
            template_library=null
          ):: std.prune(a={
            bundles: bundles,
            template_library: template_library,
          }),
          template_library:: {
            '#new':: d.fn(help='\n`google.gke_hub_feature.fleet_default_member_config.policycontroller.policy_controller_hub_config.policy_content.template_library.new` constructs a new object with attributes and blocks configured for the `template_library`\nTerraform sub block.\n\n\n\n**Args**:\n  - `installation` (`string`): Configures the manner in which the template library is installed on the cluster. Possible values: [&#34;INSTALATION_UNSPECIFIED&#34;, &#34;NOT_INSTALLED&#34;, &#34;ALL&#34;] When `null`, the `installation` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `template_library` sub block.\n', args=[]),
            new(
              installation=null
            ):: std.prune(a={
              installation: installation,
            }),
          },
        },
      },
    },
  },
  '#new':: d.fn(help="\n`google.gke_hub_feature.new` injects a new `google_gke_hub_feature` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_feature.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_feature` using the reference:\n\n    $._ref.google_gke_hub_feature.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_feature.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `labels` (`obj`): GCP labels for this Feature.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `fleet_default_member_config` (`list[obj]`): Optional. Fleet Default Membership Configuration. When `null`, the `fleet_default_member_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.new](#fn-fleet_default_member_confignew) constructor.\n  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    fleet_default_member_config=null,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      fleet_default_member_config=fleet_default_member_config,
      labels=labels,
      location=location,
      name=name,
      project=project,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_feature.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_feature`\nTerraform resource.\n\nUnlike [google.gke_hub_feature.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `labels` (`obj`): GCP labels for this Feature.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The full, unique name of this Feature resource When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `fleet_default_member_config` (`list[obj]`): Optional. Fleet Default Membership Configuration. When `null`, the `fleet_default_member_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.fleet_default_member_config.new](#fn-fleet_default_member_confignew) constructor.\n  - `spec` (`list[obj]`): Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused. When `null`, the `spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.new](#fn-specnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_feature` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    fleet_default_member_config=null,
    labels=null,
    name=null,
    project=null,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    fleet_default_member_config: fleet_default_member_config,
    labels: labels,
    location: location,
    name: name,
    project: project,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    clusterupgrade:: {
      gke_upgrade_overrides:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.new` constructs a new object with attributes and blocks configured for the `gke_upgrade_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `post_conditions` (`list[obj]`): Post conditions to override for the specified upgrade. When `null`, the `post_conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.post_conditions.new](#fn-specspecclusterupgradepost_conditionsnew) constructor.\n  - `upgrade` (`list[obj]`): Which upgrade to override. When `null`, the `upgrade` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.upgrade.new](#fn-specspecclusterupgradeupgradenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gke_upgrade_overrides` sub block.\n', args=[]),
        new(
          post_conditions=null,
          upgrade=null
        ):: std.prune(a={
          post_conditions: post_conditions,
          upgrade: upgrade,
        }),
        post_conditions:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.post_conditions.new` constructs a new object with attributes and blocks configured for the `post_conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `soaking` (`string`): Amount of time to &#34;soak&#34; after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.\n\n**Returns**:\n  - An attribute object that represents the `post_conditions` sub block.\n', args=[]),
          new(
            soaking
          ):: std.prune(a={
            soaking: soaking,
          }),
        },
        upgrade:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.upgrade.new` constructs a new object with attributes and blocks configured for the `upgrade`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the upgrade, e.g., &#34;k8s_control_plane&#34;. It should be a valid upgrade name. It must not exceet 99 characters.\n  - `version` (`string`): Version of the upgrade, e.g., &#34;1.22.1-gke.100&#34;. It should be a valid version. It must not exceet 99 characters.\n\n**Returns**:\n  - An attribute object that represents the `upgrade` sub block.\n', args=[]),
          new(
            name,
            version
          ):: std.prune(a={
            name: name,
            version: version,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature.spec.clusterupgrade.new` constructs a new object with attributes and blocks configured for the `clusterupgrade`\nTerraform sub block.\n\n\n\n**Args**:\n  - `upstream_fleets` (`list`): Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.\n  - `gke_upgrade_overrides` (`list[obj]`): Configuration overrides for individual upgrades. When `null`, the `gke_upgrade_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.clusterupgrade.gke_upgrade_overrides.new](#fn-specspecgke_upgrade_overridesnew) constructor.\n  - `post_conditions` (`list[obj]`): Post conditions to override for the specified upgrade. When `null`, the `post_conditions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.clusterupgrade.post_conditions.new](#fn-specspecpost_conditionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `clusterupgrade` sub block.\n', args=[]),
      new(
        upstream_fleets,
        gke_upgrade_overrides=null,
        post_conditions=null
      ):: std.prune(a={
        gke_upgrade_overrides: gke_upgrade_overrides,
        post_conditions: post_conditions,
        upstream_fleets: upstream_fleets,
      }),
      post_conditions:: {
        '#new':: d.fn(help='\n`google.gke_hub_feature.spec.clusterupgrade.post_conditions.new` constructs a new object with attributes and blocks configured for the `post_conditions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `soaking` (`string`): Amount of time to &#34;soak&#34; after a rollout has been finished before marking it COMPLETE. Cannot exceed 30 days.\n\n**Returns**:\n  - An attribute object that represents the `post_conditions` sub block.\n', args=[]),
        new(
          soaking
        ):: std.prune(a={
          soaking: soaking,
        }),
      },
    },
    fleetobservability:: {
      logging_config:: {
        default_config:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new` constructs a new object with attributes and blocks configured for the `default_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `default_config` sub block.\n', args=[]),
          new(
            mode=null
          ):: std.prune(a={
            mode: mode,
          }),
        },
        fleet_scope_logs_config:: {
          '#new':: d.fn(help='\n`google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new` constructs a new object with attributes and blocks configured for the `fleet_scope_logs_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mode` (`string`): Specified if fleet logging feature is enabled. Possible values: [&#34;MODE_UNSPECIFIED&#34;, &#34;COPY&#34;, &#34;MOVE&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fleet_scope_logs_config` sub block.\n', args=[]),
          new(
            mode=null
          ):: std.prune(a={
            mode: mode,
          }),
        },
        '#new':: d.fn(help='\n`google.gke_hub_feature.spec.fleetobservability.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_config` (`list[obj]`): Specified if applying the default routing config to logs not specified in other configs. When `null`, the `default_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.default_config.new](#fn-specspecfleetobservabilitydefault_confignew) constructor.\n  - `fleet_scope_logs_config` (`list[obj]`): Specified if applying the routing config to all logs for all fleet scopes. When `null`, the `fleet_scope_logs_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.fleet_scope_logs_config.new](#fn-specspecfleetobservabilityfleet_scope_logs_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          default_config=null,
          fleet_scope_logs_config=null
        ):: std.prune(a={
          default_config: default_config,
          fleet_scope_logs_config: fleet_scope_logs_config,
        }),
      },
      '#new':: d.fn(help='\n`google.gke_hub_feature.spec.fleetobservability.new` constructs a new object with attributes and blocks configured for the `fleetobservability`\nTerraform sub block.\n\n\n\n**Args**:\n  - `logging_config` (`list[obj]`): Specified if fleet logging feature is enabled for the entire fleet. If UNSPECIFIED, fleet logging feature is disabled for the entire fleet. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.logging_config.new](#fn-specspeclogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fleetobservability` sub block.\n', args=[]),
      new(
        logging_config=null
      ):: std.prune(a={
        logging_config: logging_config,
      }),
    },
    multiclusteringress:: {
      '#new':: d.fn(help='\n`google.gke_hub_feature.spec.multiclusteringress.new` constructs a new object with attributes and blocks configured for the `multiclusteringress`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_membership` (`string`): Fully-qualified Membership name which hosts the MultiClusterIngress CRD. Example: &#39;projects/foo-proj/locations/global/memberships/bar&#39;\n\n**Returns**:\n  - An attribute object that represents the `multiclusteringress` sub block.\n', args=[]),
      new(
        config_membership
      ):: std.prune(a={
        config_membership: config_membership,
      }),
    },
    '#new':: d.fn(help='\n`google.gke_hub_feature.spec.new` constructs a new object with attributes and blocks configured for the `spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `clusterupgrade` (`list[obj]`): Clusterupgrade feature spec. When `null`, the `clusterupgrade` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.clusterupgrade.new](#fn-specclusterupgradenew) constructor.\n  - `fleetobservability` (`list[obj]`): Fleet Observability feature spec. When `null`, the `fleetobservability` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.fleetobservability.new](#fn-specfleetobservabilitynew) constructor.\n  - `multiclusteringress` (`list[obj]`): Multicluster Ingress-specific spec. When `null`, the `multiclusteringress` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_feature.spec.multiclusteringress.new](#fn-specmulticlusteringressnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spec` sub block.\n', args=[]),
    new(
      clusterupgrade=null,
      fleetobservability=null,
      multiclusteringress=null
    ):: std.prune(a={
      clusterupgrade: clusterupgrade,
      fleetobservability: fleetobservability,
      multiclusteringress: multiclusteringress,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_feature.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withFleetDefaultMemberConfig':: d.fn(help='`google.list[obj].withFleetDefaultMemberConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet_default_member_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFleetDefaultMemberConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet_default_member_config` field.\n', args=[]),
  withFleetDefaultMemberConfig(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          fleet_default_member_config: value,
        },
      },
    },
  },
  '#withFleetDefaultMemberConfigMixin':: d.fn(help='`google.list[obj].withFleetDefaultMemberConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet_default_member_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFleetDefaultMemberConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet_default_member_config` field.\n', args=[]),
  withFleetDefaultMemberConfigMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          fleet_default_member_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSpec':: d.fn(help='`google.list[obj].withSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpec(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  '#withSpecMixin':: d.fn(help='`google.list[obj].withSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `spec` field.\n', args=[]),
  withSpecMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
