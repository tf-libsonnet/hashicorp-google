local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  approval_config:: {
    new(
      approval_required=null
    ):: std.prune(a={
      approval_required: approval_required,
    }),
  },
  build:: {
    artifacts:: {
      new(
        images=null,
        objects=null
      ):: std.prune(a={
        images: images,
        objects: objects,
      }),
      objects:: {
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
      new(
        secret_manager=null
      ):: std.prune(a={
        secret_manager: secret_manager,
      }),
      secret_manager:: {
        new(
          env,
          version_name
        ):: std.prune(a={
          env: env,
          version_name: version_name,
        }),
      },
    },
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
      new(
        kms_key_name,
        secret_env=null
      ):: std.prune(a={
        kms_key_name: kms_key_name,
        secret_env: secret_env,
      }),
    },
    source:: {
      new(
        repo_source=null,
        storage_source=null
      ):: std.prune(a={
        repo_source: repo_source,
        storage_source: storage_source,
      }),
      repo_source:: {
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
    new(
      topic,
      service_account_email=null
    ):: std.prune(a={
      service_account_email: service_account_email,
      topic: topic,
    }),
  },
  source_to_build:: {
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
    new(
      secret
    ):: std.prune(a={
      secret: secret,
    }),
  },
  withApprovalConfig(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          approval_config: value,
        },
      },
    },
  },
  withApprovalConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          approval_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBuild(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          build: value,
        },
      },
    },
  },
  withBuildMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          build+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withFilename(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          filename: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withGitFileSource(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          git_file_source: value,
        },
      },
    },
  },
  withGitFileSourceMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          git_file_source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGithub(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          github: value,
        },
      },
    },
  },
  withGithubMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          github+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withIgnoredFiles(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          ignored_files: value,
        },
      },
    },
  },
  withIncludeBuildLogs(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          include_build_logs: value,
        },
      },
    },
  },
  withIncludedFiles(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          included_files: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPubsubConfig(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          pubsub_config: value,
        },
      },
    },
  },
  withPubsubConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          pubsub_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withSourceToBuild(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          source_to_build: value,
        },
      },
    },
  },
  withSourceToBuildMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          source_to_build+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSubstitutions(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          substitutions: value,
        },
      },
    },
  },
  withTags(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTriggerTemplate(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          trigger_template: value,
        },
      },
    },
  },
  withTriggerTemplateMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          trigger_template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withWebhookConfig(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          webhook_config: value,
        },
      },
    },
  },
  withWebhookConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_trigger+: {
        [resourceLabel]+: {
          webhook_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
