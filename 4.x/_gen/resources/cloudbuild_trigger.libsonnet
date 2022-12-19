local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloudbuild_trigger', url='', help='`cloudbuild_trigger` represents the `google_cloudbuild_trigger` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  approval_config:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.approval_config.new` constructs a new object with attributes and blocks configured for the `approval_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `approval_required` (`bool`): Whether or not approval is needed. If this is set on a build, it will become pending when run, \nand will need to be explicitly approved to start. When `null`, the `approval_required` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `approval_config` sub block.\n', args=[]),
    new(
      approval_required=null
    ):: std.prune(a={
      approval_required: approval_required,
    }),
  },
  build:: {
    artifacts:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.artifacts.new` constructs a new object with attributes and blocks configured for the `artifacts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `images` (`list`): A list of images to be pushed upon the successful completion of all build steps.\n\nThe images will be pushed using the builder service account&#39;s credentials.\n\nThe digests of the pushed images will be stored in the Build resource&#39;s results field.\n\nIf any of the images fail to be pushed, the build is marked FAILURE. When `null`, the `images` field will be omitted from the resulting object.\n  - `objects` (`list[obj]`): A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.\n\nFiles in the workspace matching specified paths globs will be uploaded to the\nCloud Storage location using the builder service account&#39;s credentials.\n\nThe location and generation of the uploaded objects will be stored in the Build resource&#39;s results field.\n\nIf any objects fail to be pushed, the build is marked FAILURE. When `null`, the `objects` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.artifacts.objects.new](#fn-artifactsobjectsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `artifacts` sub block.\n', args=[]),
      new(
        images=null,
        objects=null
      ):: std.prune(a={
        images: images,
        objects: objects,
      }),
      objects:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.artifacts.objects.new` constructs a new object with attributes and blocks configured for the `objects`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location` (`string`): Cloud Storage bucket and optional object path, in the form &#34;gs://bucket/path/to/somewhere/&#34;.\n\nFiles in the workspace matching any path pattern will be uploaded to Cloud Storage with\nthis location as a prefix. When `null`, the `location` field will be omitted from the resulting object.\n  - `paths` (`list`): Path globs used to match files in the build&#39;s workspace. When `null`, the `paths` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `objects` sub block.\n', args=[]),
        new(
          location=null,
          paths=null
        ):: std.prune(a={
          location: location,
          paths: paths,
        }),
      },
    },
    available_secrets:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.available_secrets.new` constructs a new object with attributes and blocks configured for the `available_secrets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_manager` (`list[obj]`): Pairs a secret environment variable with a SecretVersion in Secret Manager. When `null`, the `secret_manager` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.available_secrets.secret_manager.new](#fn-available_secretssecret_managernew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `available_secrets` sub block.\n', args=[]),
      new(
        secret_manager=null
      ):: std.prune(a={
        secret_manager: secret_manager,
      }),
      secret_manager:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.available_secrets.secret_manager.new` constructs a new object with attributes and blocks configured for the `secret_manager`\nTerraform sub block.\n\n\n\n**Args**:\n  - `env` (`string`): Environment variable name to associate with the secret. Secret environment\nvariables must be unique across all of a build&#39;s secrets, and must be used\nby at least one build step.\n  - `version_name` (`string`): Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*\n\n**Returns**:\n  - An attribute object that represents the `secret_manager` sub block.\n', args=[]),
        new(
          env,
          version_name
        ):: std.prune(a={
          env: env,
          version_name: version_name,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.new` constructs a new object with attributes and blocks configured for the `build`\nTerraform sub block.\n\n\n\n**Args**:\n  - `images` (`list`): A list of images to be pushed upon the successful completion of all build steps.\nThe images are pushed using the builder service account&#39;s credentials.\nThe digests of the pushed images will be stored in the Build resource&#39;s results field.\nIf any of the images fail to be pushed, the build status is marked FAILURE. When `null`, the `images` field will be omitted from the resulting object.\n  - `logs_bucket` (`string`): Google Cloud Storage bucket where logs should be written. \nLogs file names will be of the format ${logsBucket}/log-${build_id}.txt. When `null`, the `logs_bucket` field will be omitted from the resulting object.\n  - `queue_ttl` (`string`): TTL in queue for this build. If provided and the build is enqueued longer than this value, \nthe build will expire and the build status will be EXPIRED.\nThe TTL starts ticking from createTime.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `queue_ttl` field will be omitted from the resulting object.\n  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags for annotation of a Build. These are not docker tags. When `null`, the `tags` field will be omitted from the resulting object.\n  - `timeout` (`string`): Amount of time that this build should be allowed to run, to second granularity.\nIf this amount of time elapses, work on the build will cease and the build status will be TIMEOUT.\nThis timeout must be equal to or greater than the sum of the timeouts for build steps within the build.\nThe expected format is the number of seconds followed by s.\nDefault time is ten minutes (600s). When `null`, the `timeout` field will be omitted from the resulting object.\n  - `artifacts` (`list[obj]`): Artifacts produced by the build that should be uploaded upon successful completion of all build steps. When `null`, the `artifacts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.artifacts.new](#fn-buildartifactsnew) constructor.\n  - `available_secrets` (`list[obj]`): Secrets and secret environment variables. When `null`, the `available_secrets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.available_secrets.new](#fn-buildavailable_secretsnew) constructor.\n  - `options` (`list[obj]`): Special options for this build. When `null`, the `options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.options.new](#fn-buildoptionsnew) constructor.\n  - `secret` (`list[obj]`): Secrets to decrypt using Cloud Key Management Service. When `null`, the `secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.secret.new](#fn-buildsecretnew) constructor.\n  - `source` (`list[obj]`): The location of the source files to build.\n\nOne of &#39;storageSource&#39; or &#39;repoSource&#39; must be provided. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.new](#fn-buildsourcenew) constructor.\n  - `step` (`list[obj]`): The operations to be performed on the workspace. When `null`, the `step` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.step.new](#fn-buildstepnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `build` sub block.\n', args=[]),
    new(
      artifacts=null,
      available_secrets=null,
      images=null,
      logs_bucket=null,
      options=null,
      queue_ttl=null,
      secret=null,
      source=null,
      step=null,
      substitutions=null,
      tags=null,
      timeout=null
    ):: std.prune(a={
      artifacts: artifacts,
      available_secrets: available_secrets,
      images: images,
      logs_bucket: logs_bucket,
      options: options,
      queue_ttl: queue_ttl,
      secret: secret,
      source: source,
      step: step,
      substitutions: substitutions,
      tags: tags,
      timeout: timeout,
    }),
    options:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.options.new` constructs a new object with attributes and blocks configured for the `options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_size_gb` (`number`): Requested disk size for the VM that runs the build. Note that this is NOT &#34;disk free&#34;;\nsome of the space will be used by the operating system and build utilities.\nAlso note that this is the minimum disk size that will be allocated for the build --\nthe build may run with a larger disk than requested. At present, the maximum disk size\nis 1000GB; builds that request more than the maximum are rejected with an error. When `null`, the `disk_size_gb` field will be omitted from the resulting object.\n  - `dynamic_substitutions` (`bool`): Option to specify whether or not to apply bash style string operations to the substitutions.\n\nNOTE this is always enabled for triggered builds and cannot be overridden in the build configuration file. When `null`, the `dynamic_substitutions` field will be omitted from the resulting object.\n  - `env` (`list`): A list of global environment variable definitions that will exist for all build steps\nin this build. If a variable is defined in both globally and in a build step,\nthe variable will use the build step value.\n\nThe elements are of the form &#34;KEY=VALUE&#34; for the environment variable &#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.\n  - `log_streaming_option` (`string`): Option to define build log streaming behavior to Google Cloud Storage. Possible values: [&#34;STREAM_DEFAULT&#34;, &#34;STREAM_ON&#34;, &#34;STREAM_OFF&#34;] When `null`, the `log_streaming_option` field will be omitted from the resulting object.\n  - `logging` (`string`): Option to specify the logging mode, which determines if and where build logs are stored. Possible values: [&#34;LOGGING_UNSPECIFIED&#34;, &#34;LEGACY&#34;, &#34;GCS_ONLY&#34;, &#34;STACKDRIVER_ONLY&#34;, &#34;CLOUD_LOGGING_ONLY&#34;, &#34;NONE&#34;] When `null`, the `logging` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Compute Engine machine type on which to run the build. Possible values: [&#34;UNSPECIFIED&#34;, &#34;N1_HIGHCPU_8&#34;, &#34;N1_HIGHCPU_32&#34;, &#34;E2_HIGHCPU_8&#34;, &#34;E2_HIGHCPU_32&#34;] When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `requested_verify_option` (`string`): Requested verifiability options. Possible values: [&#34;NOT_VERIFIED&#34;, &#34;VERIFIED&#34;] When `null`, the `requested_verify_option` field will be omitted from the resulting object.\n  - `secret_env` (`list`): A list of global environment variables, which are encrypted using a Cloud Key Management\nService crypto key. These values must be specified in the build&#39;s Secret. These variables\nwill be available to all build steps in this build. When `null`, the `secret_env` field will be omitted from the resulting object.\n  - `source_provenance_hash` (`list`): Requested hash for SourceProvenance. Possible values: [&#34;NONE&#34;, &#34;SHA256&#34;, &#34;MD5&#34;] When `null`, the `source_provenance_hash` field will be omitted from the resulting object.\n  - `substitution_option` (`string`): Option to specify behavior when there is an error in the substitution checks.\n\nNOTE this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden\nin the build configuration file. Possible values: [&#34;MUST_MATCH&#34;, &#34;ALLOW_LOOSE&#34;] When `null`, the `substitution_option` field will be omitted from the resulting object.\n  - `worker_pool` (`string`): Option to specify a WorkerPool for the build. Format projects/{project}/workerPools/{workerPool}\n\nThis field is experimental. When `null`, the `worker_pool` field will be omitted from the resulting object.\n  - `volumes` (`list[obj]`): Global list of volumes to mount for ALL build steps\n\nEach volume is created as an empty volume prior to starting the build process.\nUpon completion of the build, volumes and their contents are discarded. Global\nvolume names and paths cannot conflict with the volumes defined a build step.\n\nUsing a global volume in a build with only one step is not valid as it is indicative\nof a build request with an incorrect configuration. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.options.volumes.new](#fn-optionsvolumesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `options` sub block.\n', args=[]),
      new(
        disk_size_gb=null,
        dynamic_substitutions=null,
        env=null,
        log_streaming_option=null,
        logging=null,
        machine_type=null,
        requested_verify_option=null,
        secret_env=null,
        source_provenance_hash=null,
        substitution_option=null,
        volumes=null,
        worker_pool=null
      ):: std.prune(a={
        disk_size_gb: disk_size_gb,
        dynamic_substitutions: dynamic_substitutions,
        env: env,
        log_streaming_option: log_streaming_option,
        logging: logging,
        machine_type: machine_type,
        requested_verify_option: requested_verify_option,
        secret_env: secret_env,
        source_provenance_hash: source_provenance_hash,
        substitution_option: substitution_option,
        volumes: volumes,
        worker_pool: worker_pool,
      }),
      volumes:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.options.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the volume to mount.\n\nVolume names must be unique per build step and must be valid names for Docker volumes.\nEach named volume must be used by at least two build steps. When `null`, the `name` field will be omitted from the resulting object.\n  - `path` (`string`): Path at which to mount the volume.\n\nPaths must be absolute and cannot conflict with other volume paths on the same\nbuild step or with certain reserved volume paths. When `null`, the `path` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `volumes` sub block.\n', args=[]),
        new(
          name=null,
          path=null
        ):: std.prune(a={
          name: name,
          path: path,
        }),
      },
    },
    secret:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.secret.new` constructs a new object with attributes and blocks configured for the `secret`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Cloud KMS key name to use to decrypt these envs.\n  - `secret_env` (`obj`): Map of environment variable name to its encrypted value.\nSecret environment variables must be unique across all of a build&#39;s secrets, \nand must be used by at least one build step. Values can be at most 64 KB in size. \nThere can be at most 100 secret values across all of a build&#39;s secrets. When `null`, the `secret_env` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `secret` sub block.\n', args=[]),
      new(
        kms_key_name,
        secret_env=null
      ):: std.prune(a={
        kms_key_name: kms_key_name,
        secret_env: secret_env,
      }),
    },
    source:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `repo_source` (`list[obj]`): Location of the source in a Google Cloud Source Repository. When `null`, the `repo_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.repo_source.new](#fn-sourcerepo_sourcenew) constructor.\n  - `storage_source` (`list[obj]`): Location of the source in an archive file in Google Cloud Storage. When `null`, the `storage_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.source.storage_source.new](#fn-sourcestorage_sourcenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
      new(
        repo_source=null,
        storage_source=null
      ):: std.prune(a={
        repo_source: repo_source,
        storage_source: storage_source,
      }),
      repo_source:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.source.repo_source.new` constructs a new object with attributes and blocks configured for the `repo_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `branch_name` (`string`): Regex matching branches to build. Exactly one a of branch name, tag, or commit SHA must be provided.\nThe syntax of the regular expressions accepted is the syntax accepted by RE2 and \ndescribed at https://github.com/google/re2/wiki/Syntax When `null`, the `branch_name` field will be omitted from the resulting object.\n  - `commit_sha` (`string`): Explicit commit SHA to build. Exactly one a of branch name, tag, or commit SHA must be provided. When `null`, the `commit_sha` field will be omitted from the resulting object.\n  - `dir` (`string`): Directory, relative to the source root, in which to run the build.\nThis must be a relative path. If a step&#39;s dir is specified and is an absolute path, \nthis value is ignored for that step&#39;s execution. When `null`, the `dir` field will be omitted from the resulting object.\n  - `invert_regex` (`bool`): Only trigger a build if the revision regex does NOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.\n  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. \nIf omitted, the project ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `repo_name` (`string`): Name of the Cloud Source Repository.\n  - `substitutions` (`obj`): Substitutions to use in a triggered build. Should only be used with triggers.run When `null`, the `substitutions` field will be omitted from the resulting object.\n  - `tag_name` (`string`): Regex matching tags to build. Exactly one a of branch name, tag, or commit SHA must be provided.\nThe syntax of the regular expressions accepted is the syntax accepted by RE2 and \ndescribed at https://github.com/google/re2/wiki/Syntax When `null`, the `tag_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `repo_source` sub block.\n', args=[]),
        new(
          repo_name,
          branch_name=null,
          commit_sha=null,
          dir=null,
          invert_regex=null,
          project_id=null,
          substitutions=null,
          tag_name=null
        ):: std.prune(a={
          branch_name: branch_name,
          commit_sha: commit_sha,
          dir: dir,
          invert_regex: invert_regex,
          project_id: project_id,
          repo_name: repo_name,
          substitutions: substitutions,
          tag_name: tag_name,
        }),
      },
      storage_source:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.source.storage_source.new` constructs a new object with attributes and blocks configured for the `storage_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `bucket` (`string`): Google Cloud Storage bucket containing the source.\n  - `generation` (`string`): Google Cloud Storage generation for the object. \nIf the generation is omitted, the latest generation will be used When `null`, the `generation` field will be omitted from the resulting object.\n  - `object` (`string`): Google Cloud Storage object containing the source.\nThis object must be a gzipped archive file (.tar.gz) containing source to build.\n\n**Returns**:\n  - An attribute object that represents the `storage_source` sub block.\n', args=[]),
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
    },
    step:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.step.new` constructs a new object with attributes and blocks configured for the `step`\nTerraform sub block.\n\n\n\n**Args**:\n  - `args` (`list`): A list of arguments that will be presented to the step when it is started.\n\nIf the image used to run the step&#39;s container has an entrypoint, the args\nare used as arguments to that entrypoint. If the image does not define an\nentrypoint, the first element in args is used as the entrypoint, and the\nremainder will be used as arguments. When `null`, the `args` field will be omitted from the resulting object.\n  - `dir` (`string`): Working directory to use when running this step&#39;s container.\n\nIf this value is a relative path, it is relative to the build&#39;s working\ndirectory. If this value is absolute, it may be outside the build&#39;s working\ndirectory, in which case the contents of the path may not be persisted\nacross build step executions, unless a &#39;volume&#39; for that path is specified.\n\nIf the build specifies a &#39;RepoSource&#39; with &#39;dir&#39; and a step with a\n&#39;dir&#39;,\nwhich specifies an absolute path, the &#39;RepoSource&#39; &#39;dir&#39; is ignored\nfor the step&#39;s execution. When `null`, the `dir` field will be omitted from the resulting object.\n  - `entrypoint` (`string`): Entrypoint to be used instead of the build step image&#39;s\ndefault entrypoint.\nIf unset, the image&#39;s default entrypoint is used When `null`, the `entrypoint` field will be omitted from the resulting object.\n  - `env` (`list`): A list of environment variable definitions to be used when\nrunning a step.\n\nThe elements are of the form &#34;KEY=VALUE&#34; for the environment variable\n&#34;KEY&#34; being given the value &#34;VALUE&#34;. When `null`, the `env` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the container image that will run this particular build step.\n\nIf the image is available in the host&#39;s Docker daemon&#39;s cache, it will be\nrun directly. If not, the host will attempt to pull the image first, using\nthe builder service account&#39;s credentials if necessary.\n\nThe Docker daemon&#39;s cache will already have the latest versions of all of\nthe officially supported build steps (see https://github.com/GoogleCloudPlatform/cloud-builders \nfor images and examples).\nThe Docker daemon will also have cached many of the layers for some popular\nimages, like &#34;ubuntu&#34;, &#34;debian&#34;, but they will be refreshed at the time\nyou attempt to use them.\n\nIf you built an image in a previous build step, it will be stored in the\nhost&#39;s Docker daemon&#39;s cache and is available to use as the name for a\nlater build step.\n  - `script` (`string`): A shell script to be executed in the step. \nWhen script is provided, the user cannot specify the entrypoint or args. When `null`, the `script` field will be omitted from the resulting object.\n  - `secret_env` (`list`): A list of environment variables which are encrypted using\na Cloud Key\nManagement Service crypto key. These values must be specified in\nthe build&#39;s &#39;Secret&#39;. When `null`, the `secret_env` field will be omitted from the resulting object.\n  - `timeout` (`string`): Time limit for executing this build step. If not defined,\nthe step has no\ntime limit and will be allowed to continue to run until either it\ncompletes or the build itself times out. When `null`, the `timeout` field will be omitted from the resulting object.\n  - `timing` (`string`): Output only. Stores timing information for executing this\nbuild step. When `null`, the `timing` field will be omitted from the resulting object.\n  - `wait_for` (`list`): The ID(s) of the step(s) that this build step depends on.\n\nThis build step will not start until all the build steps in &#39;wait_for&#39;\nhave completed successfully. If &#39;wait_for&#39; is empty, this build step\nwill start when all previous build steps in the &#39;Build.Steps&#39; list\nhave completed successfully. When `null`, the `wait_for` field will be omitted from the resulting object.\n  - `volumes` (`list[obj]`): List of volumes to mount into the build step.\n\nEach volume is created as an empty volume prior to execution of the\nbuild step. Upon completion of the build, volumes and their contents\nare discarded.\n\nUsing a named volume in only one step is not valid as it is\nindicative of a build request with an incorrect configuration. When `null`, the `volumes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.step.volumes.new](#fn-stepvolumesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `step` sub block.\n', args=[]),
      new(
        name,
        args=null,
        dir=null,
        entrypoint=null,
        env=null,
        script=null,
        secret_env=null,
        timeout=null,
        timing=null,
        volumes=null,
        wait_for=null
      ):: std.prune(a={
        args: args,
        dir: dir,
        entrypoint: entrypoint,
        env: env,
        name: name,
        script: script,
        secret_env: secret_env,
        timeout: timeout,
        timing: timing,
        volumes: volumes,
        wait_for: wait_for,
      }),
      volumes:: {
        '#new':: d.fn(help='\n`google.cloudbuild_trigger.build.step.volumes.new` constructs a new object with attributes and blocks configured for the `volumes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the volume to mount.\n\nVolume names must be unique per build step and must be valid names for\nDocker volumes. Each named volume must be used by at least two build steps.\n  - `path` (`string`): Path at which to mount the volume.\n\nPaths must be absolute and cannot conflict with other volume paths on\nthe same build step or with certain reserved volume paths.\n\n**Returns**:\n  - An attribute object that represents the `volumes` sub block.\n', args=[]),
        new(
          name,
          path
        ):: std.prune(a={
          name: name,
          path: path,
        }),
      },
    },
  },
  git_file_source:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.git_file_source.new` constructs a new object with attributes and blocks configured for the `git_file_source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): The path of the file, with the repo root as the root of the path.\n  - `repo_type` (`string`): The type of the repo, since it may not be explicit from the repo field (e.g from a URL). \nValues can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: [&#34;UNKNOWN&#34;, &#34;CLOUD_SOURCE_REPOSITORIES&#34;, &#34;GITHUB&#34;, &#34;BITBUCKET_SERVER&#34;]\n  - `revision` (`string`): The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the \nfilename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions \nIf unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path. When `null`, the `revision` field will be omitted from the resulting object.\n  - `uri` (`string`): The URI of the repo (optional). If unspecified, the repo from which the trigger \ninvocation originated is assumed to be the repo from which to read the specified path. When `null`, the `uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `git_file_source` sub block.\n', args=[]),
    new(
      path,
      repo_type,
      revision=null,
      uri=null
    ):: std.prune(a={
      path: path,
      repo_type: repo_type,
      revision: revision,
      uri: uri,
    }),
  },
  github:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.github.new` constructs a new object with attributes and blocks configured for the `github`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the repository. For example: The name for\nhttps://github.com/googlecloudplatform/cloud-builders is &#34;cloud-builders&#34;. When `null`, the `name` field will be omitted from the resulting object.\n  - `owner` (`string`): Owner of the repository. For example: The owner for\nhttps://github.com/googlecloudplatform/cloud-builders is &#34;googlecloudplatform&#34;. When `null`, the `owner` field will be omitted from the resulting object.\n  - `pull_request` (`list[obj]`): filter to match changes in pull requests. Specify only one of &#39;pull_request&#39; or &#39;push&#39;. When `null`, the `pull_request` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.pull_request.new](#fn-githubpull_requestnew) constructor.\n  - `push` (`list[obj]`): filter to match changes in refs, like branches or tags. Specify only one of &#39;pull_request&#39; or &#39;push&#39;. When `null`, the `push` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.push.new](#fn-githubpushnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `github` sub block.\n', args=[]),
    new(
      name=null,
      owner=null,
      pull_request=null,
      push=null
    ):: std.prune(a={
      name: name,
      owner: owner,
      pull_request: pull_request,
      push: push,
    }),
    pull_request:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.github.pull_request.new` constructs a new object with attributes and blocks configured for the `pull_request`\nTerraform sub block.\n\n\n\n**Args**:\n  - `branch` (`string`): Regex of branches to match.\n  - `comment_control` (`string`): Whether to block builds on a &#34;/gcbrun&#34; comment from a repository owner or collaborator. Possible values: [&#34;COMMENTS_DISABLED&#34;, &#34;COMMENTS_ENABLED&#34;, &#34;COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY&#34;] When `null`, the `comment_control` field will be omitted from the resulting object.\n  - `invert_regex` (`bool`): If true, branches that do NOT match the git_ref will trigger a build. When `null`, the `invert_regex` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pull_request` sub block.\n', args=[]),
      new(
        branch,
        comment_control=null,
        invert_regex=null
      ):: std.prune(a={
        branch: branch,
        comment_control: comment_control,
        invert_regex: invert_regex,
      }),
    },
    push:: {
      '#new':: d.fn(help='\n`google.cloudbuild_trigger.github.push.new` constructs a new object with attributes and blocks configured for the `push`\nTerraform sub block.\n\n\n\n**Args**:\n  - `branch` (`string`): Regex of branches to match.  Specify only one of branch or tag. When `null`, the `branch` field will be omitted from the resulting object.\n  - `invert_regex` (`bool`): When true, only trigger a build if the revision regex does NOT match the git_ref regex. When `null`, the `invert_regex` field will be omitted from the resulting object.\n  - `tag` (`string`): Regex of tags to match.  Specify only one of branch or tag. When `null`, the `tag` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `push` sub block.\n', args=[]),
      new(
        branch=null,
        invert_regex=null,
        tag=null
      ):: std.prune(a={
        branch: branch,
        invert_regex: invert_regex,
        tag: tag,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.cloudbuild_trigger.new` injects a new `google_cloudbuild_trigger` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloudbuild_trigger.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloudbuild_trigger` using the reference:\n\n    $._ref.google_cloudbuild_trigger.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloudbuild_trigger.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Human-readable description of the trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the trigger is disabled or not. If true, the trigger will never result in a build. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filename` (`string`): Path, from the source root, to a file whose contents is used for the template. \nEither a filename or build template must be provided. Set this only when using trigger_template or github.\nWhen using Pub/Sub, Webhook or Manual set the file name using git_file_source instead. When `null`, the `filename` field will be omitted from the resulting object.\n  - `filter` (`string`): A Common Expression Language string. Used only with Pub/Sub and Webhook. When `null`, the `filter` field will be omitted from the resulting object.\n  - `ignored_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for \u0026#39;**\u0026#39;.\n\nIf ignoredFiles and changed files are both empty, then they are not\nused to determine whether or not to trigger a build.\n\nIf ignoredFiles is not empty, then we ignore any files that match any\nof the ignored_file globs. If the change has no files that are outside\nof the ignoredFiles globs, then we do not trigger a build. When `null`, the `ignored_files` field will be omitted from the resulting object.\n  - `include_build_logs` (`string`): Build logs will be sent back to GitHub as part of the checkrun\nresult.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or\nINCLUDE_BUILD_LOGS_WITH_STATUS Possible values: [\u0026#34;INCLUDE_BUILD_LOGS_UNSPECIFIED\u0026#34;, \u0026#34;INCLUDE_BUILD_LOGS_WITH_STATUS\u0026#34;] When `null`, the `include_build_logs` field will be omitted from the resulting object.\n  - `included_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for \u0026#39;**\u0026#39;.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is empty, then as far as this filter is concerned, we\nshould trigger the build.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is not empty, then we make sure that at least one of\nthose files matches a includedFiles glob. If not, then we do not trigger\na build. When `null`, the `included_files` field will be omitted from the resulting object.\n  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.\nIf not specified, \u0026#34;global\u0026#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the trigger. Must be unique within the project. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account used for all user-controlled operations including\ntriggers.patch, triggers.run, builds.create, and builds.cancel.\n\nIf no service account is set, then the standard Cloud Build service account\n([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.\n\nFormat: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL} When `null`, the `service_account` field will be omitted from the resulting object.\n  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags for annotation of a BuildTrigger When `null`, the `tags` field will be omitted from the resulting object.\n  - `approval_config` (`list[obj]`): Configuration for manual approval to start a build invocation of this BuildTrigger. \nBuilds created by this trigger will require approval before they execute. \nAny user with a Cloud Build Approver role for the project can approve a build. When `null`, the `approval_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.approval_config.new](#fn-cloudbuild_triggerapproval_confignew) constructor.\n  - `build` (`list[obj]`): Contents of the build template. Either a filename or build template must be provided. When `null`, the `build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.new](#fn-cloudbuild_triggerbuildnew) constructor.\n  - `git_file_source` (`list[obj]`): The file source describing the local or remote Build template. When `null`, the `git_file_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.git_file_source.new](#fn-cloudbuild_triggergit_file_sourcenew) constructor.\n  - `github` (`list[obj]`): Describes the configuration of a trigger that creates a build whenever a GitHub event is received.\n\nOne of \u0026#39;trigger_template\u0026#39;, \u0026#39;github\u0026#39;, \u0026#39;pubsub_config\u0026#39; or \u0026#39;webhook_config\u0026#39; must be provided. When `null`, the `github` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.new](#fn-cloudbuild_triggergithubnew) constructor.\n  - `pubsub_config` (`list[obj]`): PubsubConfig describes the configuration of a trigger that creates \na build whenever a Pub/Sub message is published.\n\nOne of \u0026#39;trigger_template\u0026#39;, \u0026#39;github\u0026#39;, \u0026#39;pubsub_config\u0026#39; \u0026#39;webhook_config\u0026#39; or \u0026#39;source_to_build\u0026#39; must be provided. When `null`, the `pubsub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.pubsub_config.new](#fn-cloudbuild_triggerpubsub_confignew) constructor.\n  - `source_to_build` (`list[obj]`): The repo and ref of the repository from which to build. \nThis field is used only for those triggers that do not respond to SCM events. \nTriggers that respond to such events build source at whatever commit caused the event. \nThis field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.\n\nOne of \u0026#39;trigger_template\u0026#39;, \u0026#39;github\u0026#39;, \u0026#39;pubsub_config\u0026#39; \u0026#39;webhook_config\u0026#39; or \u0026#39;source_to_build\u0026#39; must be provided. When `null`, the `source_to_build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.source_to_build.new](#fn-cloudbuild_triggersource_to_buildnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.timeouts.new](#fn-cloudbuild_triggertimeoutsnew) constructor.\n  - `trigger_template` (`list[obj]`): Template describing the types of source changes to trigger a build.\n\nBranch and tag names in trigger templates are interpreted as regular\nexpressions. Any branch or tag change that matches that regular\nexpression will trigger a build.\n\nOne of \u0026#39;trigger_template\u0026#39;, \u0026#39;github\u0026#39;, \u0026#39;pubsub_config\u0026#39;, \u0026#39;webhook_config\u0026#39; or \u0026#39;source_to_build\u0026#39; must be provided. When `null`, the `trigger_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.trigger_template.new](#fn-cloudbuild_triggertrigger_templatenew) constructor.\n  - `webhook_config` (`list[obj]`): WebhookConfig describes the configuration of a trigger that creates \na build whenever a webhook is sent to a trigger\u0026#39;s webhook URL.\n\nOne of \u0026#39;trigger_template\u0026#39;, \u0026#39;github\u0026#39;, \u0026#39;pubsub_config\u0026#39; \u0026#39;webhook_config\u0026#39; or \u0026#39;source_to_build\u0026#39; must be provided. When `null`, the `webhook_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.webhook_config.new](#fn-cloudbuild_triggerwebhook_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    approval_config=null,
    build=null,
    description=null,
    disabled=null,
    filename=null,
    filter=null,
    git_file_source=null,
    github=null,
    ignored_files=null,
    include_build_logs=null,
    included_files=null,
    location=null,
    name=null,
    project=null,
    pubsub_config=null,
    service_account=null,
    source_to_build=null,
    substitutions=null,
    tags=null,
    timeouts=null,
    trigger_template=null,
    webhook_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuild_trigger',
    label=resourceLabel,
    attrs=self.newAttrs(
      approval_config=approval_config,
      build=build,
      description=description,
      disabled=disabled,
      filename=filename,
      filter=filter,
      git_file_source=git_file_source,
      github=github,
      ignored_files=ignored_files,
      include_build_logs=include_build_logs,
      included_files=included_files,
      location=location,
      name=name,
      project=project,
      pubsub_config=pubsub_config,
      service_account=service_account,
      source_to_build=source_to_build,
      substitutions=substitutions,
      tags=tags,
      timeouts=timeouts,
      trigger_template=trigger_template,
      webhook_config=webhook_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloudbuild_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_trigger`\nTerraform resource.\n\nUnlike [google.cloudbuild_trigger.new](#fn-cloudbuild_triggernew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Human-readable description of the trigger. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): Whether the trigger is disabled or not. If true, the trigger will never result in a build. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `filename` (`string`): Path, from the source root, to a file whose contents is used for the template. \nEither a filename or build template must be provided. Set this only when using trigger_template or github.\nWhen using Pub/Sub, Webhook or Manual set the file name using git_file_source instead. When `null`, the `filename` field will be omitted from the resulting object.\n  - `filter` (`string`): A Common Expression Language string. Used only with Pub/Sub and Webhook. When `null`, the `filter` field will be omitted from the resulting object.\n  - `ignored_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for &#39;**&#39;.\n\nIf ignoredFiles and changed files are both empty, then they are not\nused to determine whether or not to trigger a build.\n\nIf ignoredFiles is not empty, then we ignore any files that match any\nof the ignored_file globs. If the change has no files that are outside\nof the ignoredFiles globs, then we do not trigger a build. When `null`, the `ignored_files` field will be omitted from the resulting object.\n  - `include_build_logs` (`string`): Build logs will be sent back to GitHub as part of the checkrun\nresult.  Values can be INCLUDE_BUILD_LOGS_UNSPECIFIED or\nINCLUDE_BUILD_LOGS_WITH_STATUS Possible values: [&#34;INCLUDE_BUILD_LOGS_UNSPECIFIED&#34;, &#34;INCLUDE_BUILD_LOGS_WITH_STATUS&#34;] When `null`, the `include_build_logs` field will be omitted from the resulting object.\n  - `included_files` (`list`): ignoredFiles and includedFiles are file glob matches using https://golang.org/pkg/path/filepath/#Match\nextended with support for &#39;**&#39;.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is empty, then as far as this filter is concerned, we\nshould trigger the build.\n\nIf any of the files altered in the commit pass the ignoredFiles filter\nand includedFiles is not empty, then we make sure that at least one of\nthose files matches a includedFiles glob. If not, then we do not trigger\na build. When `null`, the `included_files` field will be omitted from the resulting object.\n  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.\nIf not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the trigger. Must be unique within the project. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): The service account used for all user-controlled operations including\ntriggers.patch, triggers.run, builds.create, and builds.cancel.\n\nIf no service account is set, then the standard Cloud Build service account\n([PROJECT_NUM]@system.gserviceaccount.com) will be used instead.\n\nFormat: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT_ID_OR_EMAIL} When `null`, the `service_account` field will be omitted from the resulting object.\n  - `substitutions` (`obj`): Substitutions data for Build resource. When `null`, the `substitutions` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags for annotation of a BuildTrigger When `null`, the `tags` field will be omitted from the resulting object.\n  - `approval_config` (`list[obj]`): Configuration for manual approval to start a build invocation of this BuildTrigger. \nBuilds created by this trigger will require approval before they execute. \nAny user with a Cloud Build Approver role for the project can approve a build. When `null`, the `approval_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.approval_config.new](#fn-cloudbuild_triggerapproval_confignew) constructor.\n  - `build` (`list[obj]`): Contents of the build template. Either a filename or build template must be provided. When `null`, the `build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.build.new](#fn-cloudbuild_triggerbuildnew) constructor.\n  - `git_file_source` (`list[obj]`): The file source describing the local or remote Build template. When `null`, the `git_file_source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.git_file_source.new](#fn-cloudbuild_triggergit_file_sourcenew) constructor.\n  - `github` (`list[obj]`): Describes the configuration of a trigger that creates a build whenever a GitHub event is received.\n\nOne of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; or &#39;webhook_config&#39; must be provided. When `null`, the `github` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.github.new](#fn-cloudbuild_triggergithubnew) constructor.\n  - `pubsub_config` (`list[obj]`): PubsubConfig describes the configuration of a trigger that creates \na build whenever a Pub/Sub message is published.\n\nOne of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `pubsub_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.pubsub_config.new](#fn-cloudbuild_triggerpubsub_confignew) constructor.\n  - `source_to_build` (`list[obj]`): The repo and ref of the repository from which to build. \nThis field is used only for those triggers that do not respond to SCM events. \nTriggers that respond to such events build source at whatever commit caused the event. \nThis field is currently only used by Webhook, Pub/Sub, Manual, and Cron triggers.\n\nOne of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `source_to_build` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.source_to_build.new](#fn-cloudbuild_triggersource_to_buildnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.timeouts.new](#fn-cloudbuild_triggertimeoutsnew) constructor.\n  - `trigger_template` (`list[obj]`): Template describing the types of source changes to trigger a build.\n\nBranch and tag names in trigger templates are interpreted as regular\nexpressions. Any branch or tag change that matches that regular\nexpression will trigger a build.\n\nOne of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39;, &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `trigger_template` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.trigger_template.new](#fn-cloudbuild_triggertrigger_templatenew) constructor.\n  - `webhook_config` (`list[obj]`): WebhookConfig describes the configuration of a trigger that creates \na build whenever a webhook is sent to a trigger&#39;s webhook URL.\n\nOne of &#39;trigger_template&#39;, &#39;github&#39;, &#39;pubsub_config&#39; &#39;webhook_config&#39; or &#39;source_to_build&#39; must be provided. When `null`, the `webhook_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudbuild_trigger.webhook_config.new](#fn-cloudbuild_triggerwebhook_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudbuild_trigger` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    approval_config=null,
    build=null,
    description=null,
    disabled=null,
    filename=null,
    filter=null,
    git_file_source=null,
    github=null,
    ignored_files=null,
    include_build_logs=null,
    included_files=null,
    location=null,
    name=null,
    project=null,
    pubsub_config=null,
    service_account=null,
    source_to_build=null,
    substitutions=null,
    tags=null,
    timeouts=null,
    trigger_template=null,
    webhook_config=null
  ):: std.prune(a={
    approval_config: approval_config,
    build: build,
    description: description,
    disabled: disabled,
    filename: filename,
    filter: filter,
    git_file_source: git_file_source,
    github: github,
    ignored_files: ignored_files,
    include_build_logs: include_build_logs,
    included_files: included_files,
    location: location,
    name: name,
    project: project,
    pubsub_config: pubsub_config,
    service_account: service_account,
    source_to_build: source_to_build,
    substitutions: substitutions,
    tags: tags,
    timeouts: timeouts,
    trigger_template: trigger_template,
    webhook_config: webhook_config,
  }),
  pubsub_config:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.pubsub_config.new` constructs a new object with attributes and blocks configured for the `pubsub_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `service_account_email` (`string`): Service account that will make the push request. When `null`, the `service_account_email` field will be omitted from the resulting object.\n  - `topic` (`string`): The name of the topic from which this subscription is receiving messages.\n\n**Returns**:\n  - An attribute object that represents the `pubsub_config` sub block.\n', args=[]),
    new(
      topic,
      service_account_email=null
    ):: std.prune(a={
      service_account_email: service_account_email,
      topic: topic,
    }),
  },
  source_to_build:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.source_to_build.new` constructs a new object with attributes and blocks configured for the `source_to_build`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ref` (`string`): The branch or tag to use. Must start with &#34;refs/&#34; (required).\n  - `repo_type` (`string`): The type of the repo, since it may not be explicit from the repo field (e.g from a URL).\nValues can be UNKNOWN, CLOUD_SOURCE_REPOSITORIES, GITHUB, BITBUCKET_SERVER Possible values: [&#34;UNKNOWN&#34;, &#34;CLOUD_SOURCE_REPOSITORIES&#34;, &#34;GITHUB&#34;, &#34;BITBUCKET_SERVER&#34;]\n  - `uri` (`string`): The URI of the repo (required).\n\n**Returns**:\n  - An attribute object that represents the `source_to_build` sub block.\n', args=[]),
    new(
      ref,
      repo_type,
      uri
    ):: std.prune(a={
      ref: ref,
      repo_type: repo_type,
      uri: uri,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  trigger_template:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.trigger_template.new` constructs a new object with attributes and blocks configured for the `trigger_template`\nTerraform sub block.\n\n\n\n**Args**:\n  - `branch_name` (`string`): Name of the branch to build. Exactly one a of branch name, tag, or commit SHA must be provided.\nThis field is a regular expression. When `null`, the `branch_name` field will be omitted from the resulting object.\n  - `commit_sha` (`string`): Explicit commit SHA to build. Exactly one of a branch name, tag, or commit SHA must be provided. When `null`, the `commit_sha` field will be omitted from the resulting object.\n  - `dir` (`string`): Directory, relative to the source root, in which to run the build.\n\nThis must be a relative path. If a step&#39;s dir is specified and\nis an absolute path, this value is ignored for that step&#39;s\nexecution. When `null`, the `dir` field will be omitted from the resulting object.\n  - `invert_regex` (`bool`): Only trigger a build if the revision regex does NOT match the revision regex. When `null`, the `invert_regex` field will be omitted from the resulting object.\n  - `project_id` (`string`): ID of the project that owns the Cloud Source Repository. If\nomitted, the project ID requesting the build is assumed. When `null`, the `project_id` field will be omitted from the resulting object.\n  - `repo_name` (`string`): Name of the Cloud Source Repository. If omitted, the name &#34;default&#34; is assumed. When `null`, the `repo_name` field will be omitted from the resulting object.\n  - `tag_name` (`string`): Name of the tag to build. Exactly one of a branch name, tag, or commit SHA must be provided.\nThis field is a regular expression. When `null`, the `tag_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `trigger_template` sub block.\n', args=[]),
    new(
      branch_name=null,
      commit_sha=null,
      dir=null,
      invert_regex=null,
      project_id=null,
      repo_name=null,
      tag_name=null
    ):: std.prune(a={
      branch_name: branch_name,
      commit_sha: commit_sha,
      dir: dir,
      invert_regex: invert_regex,
      project_id: project_id,
      repo_name: repo_name,
      tag_name: tag_name,
    }),
  },
  webhook_config:: {
    '#new':: d.fn(help='\n`google.cloudbuild_trigger.webhook_config.new` constructs a new object with attributes and blocks configured for the `webhook_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret` (`string`): Resource name for the secret required as a URL parameter.\n\n**Returns**:\n  - An attribute object that represents the `webhook_config` sub block.\n', args=[]),
    new(
      secret
    ):: std.prune(a={
      secret: secret,
    }),
  },
  '#withApprovalConfig':: d.fn(help='`google.list[obj].withApprovalConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the approval_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withApprovalConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `approval_config` field.\n', args=[]),
  withApprovalConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          approval_config: value,
        },
      },
    },
  },
  '#withApprovalConfigMixin':: d.fn(help='`google.list[obj].withApprovalConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the approval_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withApprovalConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `approval_config` field.\n', args=[]),
  withApprovalConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          approval_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBuild':: d.fn(help='`google.list[obj].withBuild` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the build field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBuildMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `build` field.\n', args=[]),
  withBuild(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          build: value,
        },
      },
    },
  },
  '#withBuildMixin':: d.fn(help='`google.list[obj].withBuildMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the build field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBuild](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `build` field.\n', args=[]),
  withBuildMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          build+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisabled':: d.fn(help='`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the disabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `disabled` field.\n', args=[]),
  withDisabled(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  '#withFilename':: d.fn(help='`google.string.withFilename` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filename field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filename` field.\n', args=[]),
  withFilename(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          filename: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.string.withFilter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the filter field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withGitFileSource':: d.fn(help='`google.list[obj].withGitFileSource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_file_source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGitFileSourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_file_source` field.\n', args=[]),
  withGitFileSource(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          git_file_source: value,
        },
      },
    },
  },
  '#withGitFileSourceMixin':: d.fn(help='`google.list[obj].withGitFileSourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the git_file_source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGitFileSource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `git_file_source` field.\n', args=[]),
  withGitFileSourceMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          git_file_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withGithub':: d.fn(help='`google.list[obj].withGithub` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGithubMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github` field.\n', args=[]),
  withGithub(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          github: value,
        },
      },
    },
  },
  '#withGithubMixin':: d.fn(help='`google.list[obj].withGithubMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the github field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGithub](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `github` field.\n', args=[]),
  withGithubMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          github+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withIgnoredFiles':: d.fn(help='`google.list.withIgnoredFiles` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ignored_files field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ignored_files` field.\n', args=[]),
  withIgnoredFiles(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          ignored_files: value,
        },
      },
    },
  },
  '#withIncludeBuildLogs':: d.fn(help='`google.string.withIncludeBuildLogs` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the include_build_logs field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `include_build_logs` field.\n', args=[]),
  withIncludeBuildLogs(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          include_build_logs: value,
        },
      },
    },
  },
  '#withIncludedFiles':: d.fn(help='`google.list.withIncludedFiles` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the included_files field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `included_files` field.\n', args=[]),
  withIncludedFiles(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          included_files: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPubsubConfig':: d.fn(help='`google.list[obj].withPubsubConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pubsub_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPubsubConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pubsub_config` field.\n', args=[]),
  withPubsubConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          pubsub_config: value,
        },
      },
    },
  },
  '#withPubsubConfigMixin':: d.fn(help='`google.list[obj].withPubsubConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the pubsub_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPubsubConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `pubsub_config` field.\n', args=[]),
  withPubsubConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          pubsub_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withSourceToBuild':: d.fn(help='`google.list[obj].withSourceToBuild` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_to_build field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceToBuildMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_to_build` field.\n', args=[]),
  withSourceToBuild(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          source_to_build: value,
        },
      },
    },
  },
  '#withSourceToBuildMixin':: d.fn(help='`google.list[obj].withSourceToBuildMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_to_build field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceToBuild](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_to_build` field.\n', args=[]),
  withSourceToBuildMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          source_to_build+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSubstitutions':: d.fn(help='`google.obj.withSubstitutions` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the substitutions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `substitutions` field.\n', args=[]),
  withSubstitutions(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          substitutions: value,
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTriggerTemplate':: d.fn(help='`google.list[obj].withTriggerTemplate` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trigger_template field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTriggerTemplateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trigger_template` field.\n', args=[]),
  withTriggerTemplate(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          trigger_template: value,
        },
      },
    },
  },
  '#withTriggerTemplateMixin':: d.fn(help='`google.list[obj].withTriggerTemplateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the trigger_template field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTriggerTemplate](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `trigger_template` field.\n', args=[]),
  withTriggerTemplateMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          trigger_template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withWebhookConfig':: d.fn(help='`google.list[obj].withWebhookConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the webhook_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWebhookConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `webhook_config` field.\n', args=[]),
  withWebhookConfig(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          webhook_config: value,
        },
      },
    },
  },
  '#withWebhookConfigMixin':: d.fn(help='`google.list[obj].withWebhookConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the webhook_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWebhookConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `webhook_config` field.\n', args=[]),
  withWebhookConfigMixin(resourceLabel, value): {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          webhook_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
