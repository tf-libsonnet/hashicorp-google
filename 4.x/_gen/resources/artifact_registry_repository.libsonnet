local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='artifact_registry_repository', url='', help='`artifact_registry_repository` represents the `google_artifact_registry_repository` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  cleanup_policies:: {
    condition:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.cleanup_policies.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `newer_than` (`string`): Match versions newer than a duration. When `null`, the `newer_than` field will be omitted from the resulting object.\n  - `older_than` (`string`): Match versions older than a duration. When `null`, the `older_than` field will be omitted from the resulting object.\n  - `package_name_prefixes` (`list`): Match versions by package prefix. Applied on any prefix match. When `null`, the `package_name_prefixes` field will be omitted from the resulting object.\n  - `tag_prefixes` (`list`): Match versions by tag prefix. Applied on any prefix match. When `null`, the `tag_prefixes` field will be omitted from the resulting object.\n  - `tag_state` (`string`): Match versions by tag status. Default value: &#34;ANY&#34; Possible values: [&#34;TAGGED&#34;, &#34;UNTAGGED&#34;, &#34;ANY&#34;] When `null`, the `tag_state` field will be omitted from the resulting object.\n  - `version_name_prefixes` (`list`): Match versions by version name prefix. Applied on any prefix match. When `null`, the `version_name_prefixes` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
      new(
        newer_than=null,
        older_than=null,
        package_name_prefixes=null,
        tag_prefixes=null,
        tag_state=null,
        version_name_prefixes=null
      ):: std.prune(a={
        newer_than: newer_than,
        older_than: older_than,
        package_name_prefixes: package_name_prefixes,
        tag_prefixes: tag_prefixes,
        tag_state: tag_state,
        version_name_prefixes: version_name_prefixes,
      }),
    },
    most_recent_versions:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.cleanup_policies.most_recent_versions.new` constructs a new object with attributes and blocks configured for the `most_recent_versions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `keep_count` (`number`): Minimum number of versions to keep. When `null`, the `keep_count` field will be omitted from the resulting object.\n  - `package_name_prefixes` (`list`): Match versions by package prefix. Applied on any prefix match. When `null`, the `package_name_prefixes` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `most_recent_versions` sub block.\n', args=[]),
      new(
        keep_count=null,
        package_name_prefixes=null
      ):: std.prune(a={
        keep_count: keep_count,
        package_name_prefixes: package_name_prefixes,
      }),
    },
    '#new':: d.fn(help='\n`google.artifact_registry_repository.cleanup_policies.new` constructs a new object with attributes and blocks configured for the `cleanup_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`string`): Policy action. Possible values: [&#34;DELETE&#34;, &#34;KEEP&#34;] When `null`, the `action` field will be omitted from the resulting object.\n  - `condition` (`list[obj]`): Policy condition for matching versions. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.cleanup_policies.condition.new](#fn-cleanup_policiesconditionnew) constructor.\n  - `most_recent_versions` (`list[obj]`): Policy condition for retaining a minimum number of versions. May only be\nspecified with a Keep action. When `null`, the `most_recent_versions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.cleanup_policies.most_recent_versions.new](#fn-cleanup_policiesmost_recent_versionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `cleanup_policies` sub block.\n', args=[]),
    new(
      action=null,
      condition=null,
      most_recent_versions=null
    ):: std.prune(a={
      action: action,
      condition: condition,
      most_recent_versions: most_recent_versions,
    }),
  },
  docker_config:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.docker_config.new` constructs a new object with attributes and blocks configured for the `docker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `immutable_tags` (`bool`): The repository which enabled this flag prevents all tags from being modified, moved or deleted. This does not prevent tags from being created. When `null`, the `immutable_tags` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `docker_config` sub block.\n', args=[]),
    new(
      immutable_tags=null
    ):: std.prune(a={
      immutable_tags: immutable_tags,
    }),
  },
  maven_config:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.maven_config.new` constructs a new object with attributes and blocks configured for the `maven_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `allow_snapshot_overwrites` (`bool`): The repository with this flag will allow publishing the same\nsnapshot versions. When `null`, the `allow_snapshot_overwrites` field will be omitted from the resulting object.\n  - `version_policy` (`string`): Version policy defines the versions that the registry will accept. Default value: &#34;VERSION_POLICY_UNSPECIFIED&#34; Possible values: [&#34;VERSION_POLICY_UNSPECIFIED&#34;, &#34;RELEASE&#34;, &#34;SNAPSHOT&#34;] When `null`, the `version_policy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `maven_config` sub block.\n', args=[]),
    new(
      allow_snapshot_overwrites=null,
      version_policy=null
    ):: std.prune(a={
      allow_snapshot_overwrites: allow_snapshot_overwrites,
      version_policy: version_policy,
    }),
  },
  '#new':: d.fn(help="\n`google.artifact_registry_repository.new` injects a new `google_artifact_registry_repository` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.artifact_registry_repository.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.artifact_registry_repository` using the reference:\n\n    $._ref.google_artifact_registry_repository.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_artifact_registry_repository.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cleanup_policy_dry_run` (`bool`): If true, the cleanup pipeline is prevented from deleting versions in this\nrepository. When `null`, the `cleanup_policy_dry_run` field will be omitted from the resulting object.\n  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.\n  - `format` (`string`): The format of packages that are stored in the repository. Supported formats\ncan be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).\nYou can only create alpha formats if you are a member of the\n[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).\n  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s\nused to encrypt the contents of the Repository. Has the form:\n\u0026#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key\u0026#39;.\nThis value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\nThis field may contain up to 64 entries. Label keys and values may be no\nlonger than 63 characters. Label keys must begin with a lowercase letter\nand may only contain lowercase letters, numeric characters, underscores,\nand dashes.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `mode` (`string`): The mode configures the repository to serve artifacts from different sources. Default value: \u0026#34;STANDARD_REPOSITORY\u0026#34; Possible values: [\u0026#34;STANDARD_REPOSITORY\u0026#34;, \u0026#34;VIRTUAL_REPOSITORY\u0026#34;, \u0026#34;REMOTE_REPOSITORY\u0026#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n\u0026#34;repo1\u0026#34;\n  - `cleanup_policies` (`list[obj]`): Cleanup policies for this repository. Cleanup policies indicate when\ncertain package versions can be automatically deleted.\nMap keys are policy IDs supplied by users during policy creation. They must\nunique within a repository and be under 128 characters in length. When `null`, the `cleanup_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.cleanup_policies.new](#fn-cleanup_policiesnew) constructor.\n  - `docker_config` (`list[obj]`): Docker repository config contains repository level configuration for the repositories of docker type. When `null`, the `docker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.docker_config.new](#fn-docker_confignew) constructor.\n  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.\nProvides additional configuration details for repositories of the maven\nformat type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-maven_confignew) constructor.\n  - `remote_repository_config` (`list[obj]`): Configuration specific for a Remote Repository. When `null`, the `remote_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.new](#fn-remote_repository_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_repository_config` (`list[obj]`): Configuration specific for a Virtual Repository. When `null`, the `virtual_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.virtual_repository_config.new](#fn-virtual_repository_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    format,
    repository_id,
    cleanup_policies=null,
    cleanup_policy_dry_run=null,
    description=null,
    docker_config=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    mode=null,
    project=null,
    remote_repository_config=null,
    timeouts=null,
    virtual_repository_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_artifact_registry_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      cleanup_policies=cleanup_policies,
      cleanup_policy_dry_run=cleanup_policy_dry_run,
      description=description,
      docker_config=docker_config,
      format=format,
      kms_key_name=kms_key_name,
      labels=labels,
      location=location,
      maven_config=maven_config,
      mode=mode,
      project=project,
      remote_repository_config=remote_repository_config,
      repository_id=repository_id,
      timeouts=timeouts,
      virtual_repository_config=virtual_repository_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.artifact_registry_repository.newAttrs` constructs a new object with attributes and blocks configured for the `artifact_registry_repository`\nTerraform resource.\n\nUnlike [google.artifact_registry_repository.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cleanup_policy_dry_run` (`bool`): If true, the cleanup pipeline is prevented from deleting versions in this\nrepository. When `null`, the `cleanup_policy_dry_run` field will be omitted from the resulting object.\n  - `description` (`string`): The user-provided description of the repository. When `null`, the `description` field will be omitted from the resulting object.\n  - `format` (`string`): The format of packages that are stored in the repository. Supported formats\ncan be found [here](https://cloud.google.com/artifact-registry/docs/supported-formats).\nYou can only create alpha formats if you are a member of the\n[alpha user group](https://cloud.google.com/artifact-registry/docs/supported-formats#alpha-access).\n  - `kms_key_name` (`string`): The Cloud KMS resource name of the customer managed encryption key that’s\nused to encrypt the contents of the Repository. Has the form:\n&#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;.\nThis value may not be changed after the Repository has been created. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels with user-defined metadata.\nThis field may contain up to 64 entries. Label keys and values may be no\nlonger than 63 characters. Label keys must begin with a lowercase letter\nand may only contain lowercase letters, numeric characters, underscores,\nand dashes.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The name of the location this repository is located in. When `null`, the `location` field will be omitted from the resulting object.\n  - `mode` (`string`): The mode configures the repository to serve artifacts from different sources. Default value: &#34;STANDARD_REPOSITORY&#34; Possible values: [&#34;STANDARD_REPOSITORY&#34;, &#34;VIRTUAL_REPOSITORY&#34;, &#34;REMOTE_REPOSITORY&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `repository_id` (`string`): The last part of the repository name, for example:\n&#34;repo1&#34;\n  - `cleanup_policies` (`list[obj]`): Cleanup policies for this repository. Cleanup policies indicate when\ncertain package versions can be automatically deleted.\nMap keys are policy IDs supplied by users during policy creation. They must\nunique within a repository and be under 128 characters in length. When `null`, the `cleanup_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.cleanup_policies.new](#fn-cleanup_policiesnew) constructor.\n  - `docker_config` (`list[obj]`): Docker repository config contains repository level configuration for the repositories of docker type. When `null`, the `docker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.docker_config.new](#fn-docker_confignew) constructor.\n  - `maven_config` (`list[obj]`): MavenRepositoryConfig is maven related repository details.\nProvides additional configuration details for repositories of the maven\nformat type. When `null`, the `maven_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.maven_config.new](#fn-maven_confignew) constructor.\n  - `remote_repository_config` (`list[obj]`): Configuration specific for a Remote Repository. When `null`, the `remote_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.new](#fn-remote_repository_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.timeouts.new](#fn-timeoutsnew) constructor.\n  - `virtual_repository_config` (`list[obj]`): Configuration specific for a Virtual Repository. When `null`, the `virtual_repository_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.virtual_repository_config.new](#fn-virtual_repository_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `artifact_registry_repository` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    format,
    repository_id,
    cleanup_policies=null,
    cleanup_policy_dry_run=null,
    description=null,
    docker_config=null,
    kms_key_name=null,
    labels=null,
    location=null,
    maven_config=null,
    mode=null,
    project=null,
    remote_repository_config=null,
    timeouts=null,
    virtual_repository_config=null
  ):: std.prune(a={
    cleanup_policies: cleanup_policies,
    cleanup_policy_dry_run: cleanup_policy_dry_run,
    description: description,
    docker_config: docker_config,
    format: format,
    kms_key_name: kms_key_name,
    labels: labels,
    location: location,
    maven_config: maven_config,
    mode: mode,
    project: project,
    remote_repository_config: remote_repository_config,
    repository_id: repository_id,
    timeouts: timeouts,
    virtual_repository_config: virtual_repository_config,
  }),
  remote_repository_config:: {
    apt_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.apt_repository.new` constructs a new object with attributes and blocks configured for the `apt_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`list[obj]`): One of the publicly available Apt repositories supported by Artifact Registry. When `null`, the `public_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.apt_repository.public_repository.new](#fn-remote_repository_configremote_repository_configpublic_repositorynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `apt_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
      public_repository:: {
        '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.apt_repository.public_repository.new` constructs a new object with attributes and blocks configured for the `public_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository_base` (`string`): A common public repository base for Apt, e.g. &#39;&#34;debian/dists/buster&#34;&#39; Possible values: [&#34;DEBIAN&#34;, &#34;UBUNTU&#34;]\n  - `repository_path` (`string`): Specific repository from the base.\n\n**Returns**:\n  - An attribute object that represents the `public_repository` sub block.\n', args=[]),
        new(
          repository_base,
          repository_path
        ):: std.prune(a={
          repository_base: repository_base,
          repository_path: repository_path,
        }),
      },
    },
    docker_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.docker_repository.new` constructs a new object with attributes and blocks configured for the `docker_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;DOCKER_HUB&#34; Possible values: [&#34;DOCKER_HUB&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `docker_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
    },
    maven_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.maven_repository.new` constructs a new object with attributes and blocks configured for the `maven_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;MAVEN_CENTRAL&#34; Possible values: [&#34;MAVEN_CENTRAL&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `maven_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
    },
    '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.new` constructs a new object with attributes and blocks configured for the `remote_repository_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): The description of the remote source. When `null`, the `description` field will be omitted from the resulting object.\n  - `apt_repository` (`list[obj]`): Specific settings for an Apt remote repository. When `null`, the `apt_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.apt_repository.new](#fn-remote_repository_configapt_repositorynew) constructor.\n  - `docker_repository` (`list[obj]`): Specific settings for a Docker remote repository. When `null`, the `docker_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.docker_repository.new](#fn-remote_repository_configdocker_repositorynew) constructor.\n  - `maven_repository` (`list[obj]`): Specific settings for a Maven remote repository. When `null`, the `maven_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.maven_repository.new](#fn-remote_repository_configmaven_repositorynew) constructor.\n  - `npm_repository` (`list[obj]`): Specific settings for an Npm remote repository. When `null`, the `npm_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.npm_repository.new](#fn-remote_repository_confignpm_repositorynew) constructor.\n  - `python_repository` (`list[obj]`): Specific settings for a Python remote repository. When `null`, the `python_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.python_repository.new](#fn-remote_repository_configpython_repositorynew) constructor.\n  - `upstream_credentials` (`list[obj]`): The credentials used to access the remote repository. When `null`, the `upstream_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.upstream_credentials.new](#fn-remote_repository_configupstream_credentialsnew) constructor.\n  - `yum_repository` (`list[obj]`): Specific settings for an Yum remote repository. When `null`, the `yum_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.yum_repository.new](#fn-remote_repository_configyum_repositorynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `remote_repository_config` sub block.\n', args=[]),
    new(
      apt_repository=null,
      description=null,
      docker_repository=null,
      maven_repository=null,
      npm_repository=null,
      python_repository=null,
      upstream_credentials=null,
      yum_repository=null
    ):: std.prune(a={
      apt_repository: apt_repository,
      description: description,
      docker_repository: docker_repository,
      maven_repository: maven_repository,
      npm_repository: npm_repository,
      python_repository: python_repository,
      upstream_credentials: upstream_credentials,
      yum_repository: yum_repository,
    }),
    npm_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.npm_repository.new` constructs a new object with attributes and blocks configured for the `npm_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;NPMJS&#34; Possible values: [&#34;NPMJS&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `npm_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
    },
    python_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.python_repository.new` constructs a new object with attributes and blocks configured for the `python_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`string`): Address of the remote repository. Default value: &#34;PYPI&#34; Possible values: [&#34;PYPI&#34;] When `null`, the `public_repository` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `python_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
    },
    upstream_credentials:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.upstream_credentials.new` constructs a new object with attributes and blocks configured for the `upstream_credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username_password_credentials` (`list[obj]`): Use username and password to access the remote repository. When `null`, the `username_password_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.upstream_credentials.username_password_credentials.new](#fn-remote_repository_configremote_repository_configusername_password_credentialsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `upstream_credentials` sub block.\n', args=[]),
      new(
        username_password_credentials=null
      ):: std.prune(a={
        username_password_credentials: username_password_credentials,
      }),
      username_password_credentials:: {
        '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.upstream_credentials.username_password_credentials.new` constructs a new object with attributes and blocks configured for the `username_password_credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password_secret_version` (`string`): The Secret Manager key version that holds the password to access the\nremote repository. Must be in the format of\n&#39;projects/{project}/secrets/{secret}/versions/{version}&#39;. When `null`, the `password_secret_version` field will be omitted from the resulting object.\n  - `username` (`string`): The username to access the remote repository. When `null`, the `username` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `username_password_credentials` sub block.\n', args=[]),
        new(
          password_secret_version=null,
          username=null
        ):: std.prune(a={
          password_secret_version: password_secret_version,
          username: username,
        }),
      },
    },
    yum_repository:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.yum_repository.new` constructs a new object with attributes and blocks configured for the `yum_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_repository` (`list[obj]`): One of the publicly available Yum repositories supported by Artifact Registry. When `null`, the `public_repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.remote_repository_config.yum_repository.public_repository.new](#fn-remote_repository_configremote_repository_configpublic_repositorynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `yum_repository` sub block.\n', args=[]),
      new(
        public_repository=null
      ):: std.prune(a={
        public_repository: public_repository,
      }),
      public_repository:: {
        '#new':: d.fn(help='\n`google.artifact_registry_repository.remote_repository_config.yum_repository.public_repository.new` constructs a new object with attributes and blocks configured for the `public_repository`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repository_base` (`string`): A common public repository base for Yum. Possible values: [&#34;CENTOS&#34;, &#34;CENTOS_DEBUG&#34;, &#34;CENTOS_VAULT&#34;, &#34;CENTOS_STREAM&#34;, &#34;ROCKY&#34;, &#34;EPEL&#34;]\n  - `repository_path` (`string`): Specific repository from the base, e.g. &#39;&#34;centos/8-stream/BaseOS/x86_64/os&#34;&#39;\n\n**Returns**:\n  - An attribute object that represents the `public_repository` sub block.\n', args=[]),
        new(
          repository_base,
          repository_path
        ):: std.prune(a={
          repository_base: repository_base,
          repository_path: repository_path,
        }),
      },
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  virtual_repository_config:: {
    '#new':: d.fn(help='\n`google.artifact_registry_repository.virtual_repository_config.new` constructs a new object with attributes and blocks configured for the `virtual_repository_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `upstream_policies` (`list[obj]`): Policies that configure the upstream artifacts distributed by the Virtual\nRepository. Upstream policies cannot be set on a standard repository. When `null`, the `upstream_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.artifact_registry_repository.virtual_repository_config.upstream_policies.new](#fn-virtual_repository_configupstream_policiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `virtual_repository_config` sub block.\n', args=[]),
    new(
      upstream_policies=null
    ):: std.prune(a={
      upstream_policies: upstream_policies,
    }),
    upstream_policies:: {
      '#new':: d.fn(help='\n`google.artifact_registry_repository.virtual_repository_config.upstream_policies.new` constructs a new object with attributes and blocks configured for the `upstream_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `priority` (`number`): Entries with a greater priority value take precedence in the pull order. When `null`, the `priority` field will be omitted from the resulting object.\n  - `repository` (`string`): A reference to the repository resource, for example:\n&#34;projects/p1/locations/us-central1/repository/repo1&#34;. When `null`, the `repository` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `upstream_policies` sub block.\n', args=[]),
      new(
        priority=null,
        repository=null
      ):: std.prune(a={
        priority: priority,
        repository: repository,
      }),
    },
  },
  '#withCleanupPolicies':: d.fn(help='`google.list[obj].withCleanupPolicies` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cleanup_policies field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCleanupPoliciesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cleanup_policies` field.\n', args=[]),
  withCleanupPolicies(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          cleanup_policies: value,
        },
      },
    },
  },
  '#withCleanupPoliciesMixin':: d.fn(help='`google.list[obj].withCleanupPoliciesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cleanup_policies field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCleanupPolicies](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cleanup_policies` field.\n', args=[]),
  withCleanupPoliciesMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          cleanup_policies+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCleanupPolicyDryRun':: d.fn(help='`google.bool.withCleanupPolicyDryRun` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the cleanup_policy_dry_run field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `cleanup_policy_dry_run` field.\n', args=[]),
  withCleanupPolicyDryRun(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          cleanup_policy_dry_run: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDockerConfig':: d.fn(help='`google.list[obj].withDockerConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the docker_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDockerConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `docker_config` field.\n', args=[]),
  withDockerConfig(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          docker_config: value,
        },
      },
    },
  },
  '#withDockerConfigMixin':: d.fn(help='`google.list[obj].withDockerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the docker_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDockerConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `docker_config` field.\n', args=[]),
  withDockerConfigMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          docker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFormat':: d.fn(help='`google.string.withFormat` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the format field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `format` field.\n', args=[]),
  withFormat(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          format: value,
        },
      },
    },
  },
  '#withKmsKeyName':: d.fn(help='`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the kms_key_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `kms_key_name` field.\n', args=[]),
  withKmsKeyName(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMavenConfig':: d.fn(help='`google.list[obj].withMavenConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maven_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMavenConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maven_config` field.\n', args=[]),
  withMavenConfig(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config: value,
        },
      },
    },
  },
  '#withMavenConfigMixin':: d.fn(help='`google.list[obj].withMavenConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the maven_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMavenConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `maven_config` field.\n', args=[]),
  withMavenConfigMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          maven_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMode':: d.fn(help='`google.string.withMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mode` field.\n', args=[]),
  withMode(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          mode: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRemoteRepositoryConfig':: d.fn(help='`google.list[obj].withRemoteRepositoryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the remote_repository_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRemoteRepositoryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `remote_repository_config` field.\n', args=[]),
  withRemoteRepositoryConfig(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          remote_repository_config: value,
        },
      },
    },
  },
  '#withRemoteRepositoryConfigMixin':: d.fn(help='`google.list[obj].withRemoteRepositoryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the remote_repository_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRemoteRepositoryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `remote_repository_config` field.\n', args=[]),
  withRemoteRepositoryConfigMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          remote_repository_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRepositoryId':: d.fn(help='`google.string.withRepositoryId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the repository_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `repository_id` field.\n', args=[]),
  withRepositoryId(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          repository_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVirtualRepositoryConfig':: d.fn(help='`google.list[obj].withVirtualRepositoryConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_repository_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVirtualRepositoryConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_repository_config` field.\n', args=[]),
  withVirtualRepositoryConfig(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          virtual_repository_config: value,
        },
      },
    },
  },
  '#withVirtualRepositoryConfigMixin':: d.fn(help='`google.list[obj].withVirtualRepositoryConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the virtual_repository_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualRepositoryConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `virtual_repository_config` field.\n', args=[]),
  withVirtualRepositoryConfigMixin(resourceLabel, value): {
    resource+: {
      google_artifact_registry_repository+: {
        [resourceLabel]+: {
          virtual_repository_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
