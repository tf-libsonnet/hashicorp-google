local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_workflow_template', url='', help='`dataproc_workflow_template` represents the `google_dataproc_workflow_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  jobs:: {
    hadoop_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.hadoop_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.hadoop_job.new` constructs a new object with attributes and blocks configured for the `hadoop_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted in the working directory of Hadoop drivers and tasks. Supported file types: .jar, .tar, .tar.gz, .tgz, or .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as `-libjars` or `-Dfoo=bar`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Optional. HCFS (Hadoop Compatible Filesystem) URIs of files to be copied to the working directory of Hadoop drivers and distributed tasks. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. Jar file URIs to add to the CLASSPATHs of the Hadoop driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_class` (`string`): The name of the driver&#39;s main class. The jar file containing the class must be in the default CLASSPATH or specified in `jar_file_uris`. When `null`, the `main_class` field will be omitted from the resulting object.\n  - `main_jar_file_uri` (`string`): The HCFS URI of the jar file containing the main class. Examples: &#39;gs://foo-bucket/analytics-binaries/extract-useful-metrics-mr.jar&#39; &#39;hdfs:/tmp/test-samples/custom-wordcount.jar&#39; &#39;file:///home/usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar&#39; When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure Hadoop. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.hadoop_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hadoop_job` sub block.\n', args=[]),
      new(
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        main_class=null,
        main_jar_file_uri=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_class: main_class,
        main_jar_file_uri: main_jar_file_uri,
        properties: properties,
      }),
    },
    hive_job:: {
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.hive_job.new` constructs a new object with attributes and blocks configured for the `hive_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `continue_on_failure` (`bool`): Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATH of the Hive server and Hadoop MapReduce (MR) tasks. Can contain Hive SerDes and UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names and values, used to configure Hive. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/hive/conf/hive-site.xml, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains Hive queries. When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Optional. Mapping of query variable names to values (equivalent to the Hive command: `SET name=&#34;value&#34;;`). When `null`, the `script_variables` field will be omitted from the resulting object.\n  - `query_list` (`list[obj]`): A list of queries. When `null`, the `query_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.hive_job.query_list.new](#fn-jobsquery_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hive_job` sub block.\n', args=[]),
      new(
        continue_on_failure=null,
        jar_file_uris=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        continue_on_failure: continue_on_failure,
        jar_file_uris: jar_file_uris,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.hive_job.query_list.new` constructs a new object with attributes and blocks configured for the `query_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `queries` (`list`): Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: &#34;hiveJob&#34;: { &#34;queryList&#34;: { &#34;queries&#34;: [ &#34;query1&#34;, &#34;query2&#34;, &#34;query3;query4&#34;, ] } }\n\n**Returns**:\n  - An attribute object that represents the `query_list` sub block.\n', args=[]),
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.new` constructs a new object with attributes and blocks configured for the `jobs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Optional. The labels to associate with this job. Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: p{Ll}p{Lo}{0,62} Label values must be between 1 and 63 characters long, and must conform to the following regular expression: [p{Ll}p{Lo}p{N}_-]{0,63} No more than 32 labels can be associated with a given job. When `null`, the `labels` field will be omitted from the resulting object.\n  - `prerequisite_step_ids` (`list`): Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow. When `null`, the `prerequisite_step_ids` field will be omitted from the resulting object.\n  - `step_id` (`string`): Required. The step id. The id must be unique among all jobs within the template. The step id is used as prefix for job id, as job `goog-dataproc-workflow-step-id` label, and in prerequisiteStepIds field from other steps. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.\n  - `hadoop_job` (`list[obj]`): Optional. Job is a Hadoop job. When `null`, the `hadoop_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.hadoop_job.new](#fn-hadoop_jobnew) constructor.\n  - `hive_job` (`list[obj]`): Optional. Job is a Hive job. When `null`, the `hive_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.hive_job.new](#fn-hive_jobnew) constructor.\n  - `pig_job` (`list[obj]`): Optional. Job is a Pig job. When `null`, the `pig_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.pig_job.new](#fn-pig_jobnew) constructor.\n  - `presto_job` (`list[obj]`): Optional. Job is a Presto job. When `null`, the `presto_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.presto_job.new](#fn-presto_jobnew) constructor.\n  - `pyspark_job` (`list[obj]`): Optional. Job is a PySpark job. When `null`, the `pyspark_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.pyspark_job.new](#fn-pyspark_jobnew) constructor.\n  - `scheduling` (`list[obj]`): Optional. Job scheduling configuration. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.scheduling.new](#fn-schedulingnew) constructor.\n  - `spark_job` (`list[obj]`): Optional. Job is a Spark job. When `null`, the `spark_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_job.new](#fn-spark_jobnew) constructor.\n  - `spark_r_job` (`list[obj]`): Optional. Job is a SparkR job. When `null`, the `spark_r_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_r_job.new](#fn-spark_r_jobnew) constructor.\n  - `spark_sql_job` (`list[obj]`): Optional. Job is a SparkSql job. When `null`, the `spark_sql_job` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_sql_job.new](#fn-spark_sql_jobnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `jobs` sub block.\n', args=[]),
    new(
      step_id,
      hadoop_job=null,
      hive_job=null,
      labels=null,
      pig_job=null,
      prerequisite_step_ids=null,
      presto_job=null,
      pyspark_job=null,
      scheduling=null,
      spark_job=null,
      spark_r_job=null,
      spark_sql_job=null
    ):: std.prune(a={
      hadoop_job: hadoop_job,
      hive_job: hive_job,
      labels: labels,
      pig_job: pig_job,
      prerequisite_step_ids: prerequisite_step_ids,
      presto_job: presto_job,
      pyspark_job: pyspark_job,
      scheduling: scheduling,
      spark_job: spark_job,
      spark_r_job: spark_r_job,
      spark_sql_job: spark_sql_job,
      step_id: step_id,
    }),
    pig_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.pig_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.pig_job.new` constructs a new object with attributes and blocks configured for the `pig_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `continue_on_failure` (`bool`): Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATH of the Pig Client and Hadoop MapReduce (MR) tasks. Can contain Pig UDFs. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure Pig. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/hadoop/conf/*-site.xml, /etc/pig/conf/pig.properties, and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains the Pig queries. When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Optional. Mapping of query variable names to values (equivalent to the Pig command: `name=[value]`). When `null`, the `script_variables` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.pig_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n  - `query_list` (`list[obj]`): A list of queries. When `null`, the `query_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.pig_job.query_list.new](#fn-jobsquery_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pig_job` sub block.\n', args=[]),
      new(
        continue_on_failure=null,
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        continue_on_failure: continue_on_failure,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.pig_job.query_list.new` constructs a new object with attributes and blocks configured for the `query_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `queries` (`list`): Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: &#34;hiveJob&#34;: { &#34;queryList&#34;: { &#34;queries&#34;: [ &#34;query1&#34;, &#34;query2&#34;, &#34;query3;query4&#34;, ] } }\n\n**Returns**:\n  - An attribute object that represents the `query_list` sub block.\n', args=[]),
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    presto_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.presto_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.presto_job.new` constructs a new object with attributes and blocks configured for the `presto_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_tags` (`list`): Optional. Presto client tags to attach to this query When `null`, the `client_tags` field will be omitted from the resulting object.\n  - `continue_on_failure` (`bool`): Optional. Whether to continue executing queries if a query fails. The default value is `false`. Setting to `true` can be useful when executing independent parallel queries. When `null`, the `continue_on_failure` field will be omitted from the resulting object.\n  - `output_format` (`string`): Optional. The format in which query output will be displayed. See the Presto documentation for supported output formats When `null`, the `output_format` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names to values. Used to set Presto [session properties](https://prestodb.io/docs/current/sql/set-session.html) Equivalent to using the --session flag in the Presto CLI When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.presto_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n  - `query_list` (`list[obj]`): A list of queries. When `null`, the `query_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.presto_job.query_list.new](#fn-jobsquery_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `presto_job` sub block.\n', args=[]),
      new(
        client_tags=null,
        continue_on_failure=null,
        logging_config=null,
        output_format=null,
        properties=null,
        query_file_uri=null,
        query_list=null
      ):: std.prune(a={
        client_tags: client_tags,
        continue_on_failure: continue_on_failure,
        logging_config: logging_config,
        output_format: output_format,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
      }),
      query_list:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.presto_job.query_list.new` constructs a new object with attributes and blocks configured for the `query_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `queries` (`list`): Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: &#34;hiveJob&#34;: { &#34;queryList&#34;: { &#34;queries&#34;: [ &#34;query1&#34;, &#34;query2&#34;, &#34;query3;query4&#34;, ] } }\n\n**Returns**:\n  - An attribute object that represents the `query_list` sub block.\n', args=[]),
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
    pyspark_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.pyspark_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.pyspark_job.new` constructs a new object with attributes and blocks configured for the `pyspark_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Python driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_python_file_uri` (`string`): Required. The HCFS URI of the main Python file to use as the driver. Must be a .py file.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure PySpark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `python_file_uris` (`list`): Optional. HCFS file URIs of Python files to pass to the PySpark framework. Supported file types: .py, .egg, and .zip. When `null`, the `python_file_uris` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.pyspark_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `pyspark_job` sub block.\n', args=[]),
      new(
        main_python_file_uri,
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        python_file_uris=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_python_file_uri: main_python_file_uri,
        properties: properties,
        python_file_uris: python_file_uris,
      }),
    },
    scheduling:: {
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_failures_per_hour` (`number`): Optional. Maximum number of times per hour a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. A job may be reported as thrashing if driver exits with non-zero code 4 times within 10 minute window. Maximum value is 10. When `null`, the `max_failures_per_hour` field will be omitted from the resulting object.\n  - `max_failures_total` (`number`): Optional. Maximum number of times in total a driver may be restarted as a result of driver exiting with non-zero code before job is reported failed. Maximum value is 240. When `null`, the `max_failures_total` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `scheduling` sub block.\n', args=[]),
      new(
        max_failures_per_hour=null,
        max_failures_total=null
      ):: std.prune(a={
        max_failures_per_hour: max_failures_per_hour,
        max_failures_total: max_failures_total,
      }),
    },
    spark_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_job.new` constructs a new object with attributes and blocks configured for the `spark_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to add to the CLASSPATHs of the Spark driver and tasks. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `main_class` (`string`): The name of the driver&#39;s main class. The jar file that contains the class must be in the default CLASSPATH or specified in `jar_file_uris`. When `null`, the `main_class` field will be omitted from the resulting object.\n  - `main_jar_file_uri` (`string`): The HCFS URI of the jar file that contains the main class. When `null`, the `main_jar_file_uri` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure Spark. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spark_job` sub block.\n', args=[]),
      new(
        archive_uris=null,
        args=null,
        file_uris=null,
        jar_file_uris=null,
        logging_config=null,
        main_class=null,
        main_jar_file_uri=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        main_class: main_class,
        main_jar_file_uri: main_jar_file_uri,
        properties: properties,
      }),
    },
    spark_r_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_r_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_r_job.new` constructs a new object with attributes and blocks configured for the `spark_r_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `archive_uris` (`list`): Optional. HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip. When `null`, the `archive_uris` field will be omitted from the resulting object.\n  - `args` (`list`): Optional. The arguments to pass to the driver. Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission. When `null`, the `args` field will be omitted from the resulting object.\n  - `file_uris` (`list`): Optional. HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks. When `null`, the `file_uris` field will be omitted from the resulting object.\n  - `main_r_file_uri` (`string`): Required. The HCFS URI of the main R file to use as the driver. Must be a .R file.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure SparkR. Properties that conflict with values set by the Dataproc API may be overwritten. Can include properties set in /etc/spark/conf/spark-defaults.conf and classes in user code. When `null`, the `properties` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_r_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spark_r_job` sub block.\n', args=[]),
      new(
        main_r_file_uri,
        archive_uris=null,
        args=null,
        file_uris=null,
        logging_config=null,
        properties=null
      ):: std.prune(a={
        archive_uris: archive_uris,
        args: args,
        file_uris: file_uris,
        logging_config: logging_config,
        main_r_file_uri: main_r_file_uri,
        properties: properties,
      }),
    },
    spark_sql_job:: {
      logging_config:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_sql_job.logging_config.new` constructs a new object with attributes and blocks configured for the `logging_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `driver_log_levels` (`obj`): The per-package log levels for the driver. This may include &#34;root&#34; package name to configure rootLogger. Examples: &#39;com.google = FATAL&#39;, &#39;root = INFO&#39;, &#39;org.apache = DEBUG&#39; When `null`, the `driver_log_levels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging_config` sub block.\n', args=[]),
        new(
          driver_log_levels=null
        ):: std.prune(a={
          driver_log_levels: driver_log_levels,
        }),
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_sql_job.new` constructs a new object with attributes and blocks configured for the `spark_sql_job`\nTerraform sub block.\n\n\n\n**Args**:\n  - `jar_file_uris` (`list`): Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH. When `null`, the `jar_file_uris` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. A mapping of property names to values, used to configure Spark SQL&#39;s SparkConf. Properties that conflict with values set by the Dataproc API may be overwritten. When `null`, the `properties` field will be omitted from the resulting object.\n  - `query_file_uri` (`string`): The HCFS URI of the script that contains SQL queries. When `null`, the `query_file_uri` field will be omitted from the resulting object.\n  - `script_variables` (`obj`): Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET `name=&#34;value&#34;;`). When `null`, the `script_variables` field will be omitted from the resulting object.\n  - `logging_config` (`list[obj]`): Optional. The runtime log config for job execution. When `null`, the `logging_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_sql_job.logging_config.new](#fn-jobslogging_confignew) constructor.\n  - `query_list` (`list[obj]`): A list of queries. When `null`, the `query_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.spark_sql_job.query_list.new](#fn-jobsquery_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `spark_sql_job` sub block.\n', args=[]),
      new(
        jar_file_uris=null,
        logging_config=null,
        properties=null,
        query_file_uri=null,
        query_list=null,
        script_variables=null
      ):: std.prune(a={
        jar_file_uris: jar_file_uris,
        logging_config: logging_config,
        properties: properties,
        query_file_uri: query_file_uri,
        query_list: query_list,
        script_variables: script_variables,
      }),
      query_list:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.jobs.spark_sql_job.query_list.new` constructs a new object with attributes and blocks configured for the `query_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `queries` (`list`): Required. The queries to execute. You do not need to end a query expression with a semicolon. Multiple queries can be specified in one string by separating each with a semicolon. Here is an example of a Dataproc API snippet that uses a QueryList to specify a HiveJob: &#34;hiveJob&#34;: { &#34;queryList&#34;: { &#34;queries&#34;: [ &#34;query1&#34;, &#34;query2&#34;, &#34;query3;query4&#34;, ] } }\n\n**Returns**:\n  - An attribute object that represents the `query_list` sub block.\n', args=[]),
        new(
          queries
        ):: std.prune(a={
          queries: queries,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.dataproc_workflow_template.new` injects a new `google_dataproc_workflow_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataproc_workflow_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataproc_workflow_template` using the reference:\n\n    $._ref.google_dataproc_workflow_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataproc_workflow_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dag_timeout` (`string`): Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes (\u0026#34;600s\u0026#34;) to 24 hours (\u0026#34;86400s\u0026#34;). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted. When `null`, the `dag_timeout` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`number`): Output only. The current version of this workflow template. When `null`, the `version` field will be omitted from the resulting object.\n  - `jobs` (`list[obj]`): Required. The Directed Acyclic Graph of Jobs to submit. When `null`, the `jobs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.new](#fn-jobsnew) constructor.\n  - `parameters` (`list[obj]`): Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.parameters.new](#fn-parametersnew) constructor.\n  - `placement` (`list[obj]`): Required. WorkflowTemplate scheduling information. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.new](#fn-placementnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    dag_timeout=null,
    jobs=null,
    labels=null,
    parameters=null,
    placement=null,
    project=null,
    timeouts=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_workflow_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      dag_timeout=dag_timeout,
      jobs=jobs,
      labels=labels,
      location=location,
      name=name,
      parameters=parameters,
      placement=placement,
      project=project,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataproc_workflow_template.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_workflow_template`\nTerraform resource.\n\nUnlike [google.dataproc_workflow_template.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dag_timeout` (`string`): Optional. Timeout duration for the DAG of jobs, expressed in seconds (see [JSON representation of duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). The timeout duration must be from 10 minutes (&#34;600s&#34;) to 24 hours (&#34;86400s&#34;). The timer begins when the first job is submitted. If the workflow is running at the end of the timeout period, any remaining jobs are cancelled, the workflow is ended, and if the workflow was running on a [managed cluster](/dataproc/docs/concepts/workflows/using-workflows#configuring_or_selecting_a_cluster), the cluster is deleted. When `null`, the `dag_timeout` field will be omitted from the resulting object.\n  - `labels` (`obj`): Optional. The labels to associate with this template. These labels will be propagated to all jobs and clusters created by the workflow instance. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a template. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Output only. The resource name of the workflow template, as described in https://cloud.google.com/apis/design/resource_names. * For `projects.regions.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/regions/{region}/workflowTemplates/{template_id}` * For `projects.locations.workflowTemplates`, the resource name of the template has the following format: `projects/{project_id}/locations/{location}/workflowTemplates/{template_id}`\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `version` (`number`): Output only. The current version of this workflow template. When `null`, the `version` field will be omitted from the resulting object.\n  - `jobs` (`list[obj]`): Required. The Directed Acyclic Graph of Jobs to submit. When `null`, the `jobs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.jobs.new](#fn-jobsnew) constructor.\n  - `parameters` (`list[obj]`): Optional. Template parameters whose values are substituted into the template. Values for parameters must be provided when the template is instantiated. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.parameters.new](#fn-parametersnew) constructor.\n  - `placement` (`list[obj]`): Required. WorkflowTemplate scheduling information. When `null`, the `placement` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.new](#fn-placementnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_workflow_template` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    dag_timeout=null,
    jobs=null,
    labels=null,
    parameters=null,
    placement=null,
    project=null,
    timeouts=null,
    version=null
  ):: std.prune(a={
    dag_timeout: dag_timeout,
    jobs: jobs,
    labels: labels,
    location: location,
    name: name,
    parameters: parameters,
    placement: placement,
    project: project,
    timeouts: timeouts,
    version: version,
  }),
  parameters:: {
    '#new':: d.fn(help='\n`google.dataproc_workflow_template.parameters.new` constructs a new object with attributes and blocks configured for the `parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): Optional. Brief description of the parameter. Must not exceed 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `fields` (`list`): Required. Paths to all fields that the parameter replaces. A field is allowed to appear in at most one parameter&#39;s list of field paths. A field path is similar in syntax to a google.protobuf.FieldMask. For example, a field path that references the zone field of a workflow template&#39;s cluster selector would be specified as `placement.clusterSelector.zone`. Also, field paths can reference fields using the following syntax: * Values in maps can be referenced by key: * labels[&#39;key&#39;] * placement.clusterSelector.clusterLabels[&#39;key&#39;] * placement.managedCluster.labels[&#39;key&#39;] * placement.clusterSelector.clusterLabels[&#39;key&#39;] * jobs[&#39;step-id&#39;].labels[&#39;key&#39;] * Jobs in the jobs list can be referenced by step-id: * jobs[&#39;step-id&#39;].hadoopJob.mainJarFileUri * jobs[&#39;step-id&#39;].hiveJob.queryFileUri * jobs[&#39;step-id&#39;].pySparkJob.mainPythonFileUri * jobs[&#39;step-id&#39;].hadoopJob.jarFileUris[0] * jobs[&#39;step-id&#39;].hadoopJob.archiveUris[0] * jobs[&#39;step-id&#39;].hadoopJob.fileUris[0] * jobs[&#39;step-id&#39;].pySparkJob.pythonFileUris[0] * Items in repeated fields can be referenced by a zero-based index: * jobs[&#39;step-id&#39;].sparkJob.args[0] * Other examples: * jobs[&#39;step-id&#39;].hadoopJob.properties[&#39;key&#39;] * jobs[&#39;step-id&#39;].hadoopJob.args[0] * jobs[&#39;step-id&#39;].hiveJob.scriptVariables[&#39;key&#39;] * jobs[&#39;step-id&#39;].hadoopJob.mainJarFileUri * placement.clusterSelector.zone It may not be possible to parameterize maps and repeated fields in their entirety since only individual map values and individual items in repeated fields can be referenced. For example, the following field paths are invalid: - placement.clusterSelector.clusterLabels - jobs[&#39;step-id&#39;].sparkJob.args\n  - `name` (`string`): Required. Parameter name. The parameter name is used as the key, and paired with the parameter value, which are passed to the template when the template is instantiated. The name must contain only capital letters (A-Z), numbers (0-9), and underscores (_), and must not start with a number. The maximum length is 40 characters.\n  - `validation` (`list[obj]`): Optional. Validation rules to be applied to this parameter&#39;s value. When `null`, the `validation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.parameters.validation.new](#fn-validationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `parameters` sub block.\n', args=[]),
    new(
      fields,
      name,
      description=null,
      validation=null
    ):: std.prune(a={
      description: description,
      fields: fields,
      name: name,
      validation: validation,
    }),
    validation:: {
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.parameters.validation.new` constructs a new object with attributes and blocks configured for the `validation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `regex` (`list[obj]`): Validation based on regular expressions. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.parameters.validation.regex.new](#fn-parametersregexnew) constructor.\n  - `values` (`list[obj]`): Validation based on a list of allowed values. When `null`, the `values` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.parameters.validation.values.new](#fn-parametersvaluesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `validation` sub block.\n', args=[]),
      new(
        regex=null,
        values=null
      ):: std.prune(a={
        regex: regex,
        values: values,
      }),
      regex:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.parameters.validation.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `regexes` (`list`): Required. RE2 regular expressions used to validate the parameter&#39;s value. The value must match the regex in its entirety (substring matches are not sufficient).\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
        new(
          regexes
        ):: std.prune(a={
          regexes: regexes,
        }),
      },
      values:: {
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.parameters.validation.values.new` constructs a new object with attributes and blocks configured for the `values`\nTerraform sub block.\n\n\n\n**Args**:\n  - `values` (`list`): Required. List of allowed values for the parameter.\n\n**Returns**:\n  - An attribute object that represents the `values` sub block.\n', args=[]),
        new(
          values
        ):: std.prune(a={
          values: values,
        }),
      },
    },
  },
  placement:: {
    cluster_selector:: {
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.cluster_selector.new` constructs a new object with attributes and blocks configured for the `cluster_selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_labels` (`obj`): Required. The cluster labels. Cluster must have all labels to match.\n  - `zone` (`string`): Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster. If unspecified, the zone of the first cluster matching the selector is used. When `null`, the `zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cluster_selector` sub block.\n', args=[]),
      new(
        cluster_labels,
        zone=null
      ):: std.prune(a={
        cluster_labels: cluster_labels,
        zone: zone,
      }),
    },
    managed_cluster:: {
      config:: {
        autoscaling_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `policy` (`string`): Optional. The autoscaling policy used by the cluster. Only resource names including projectid and location (region) are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]` * `projects/[project_id]/locations/[dataproc_region]/autoscalingPolicies/[policy_id]` Note that the policy must be in the same project and Dataproc region. When `null`, the `policy` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_config` sub block.\n', args=[]),
          new(
            policy=null
          ):: std.prune(a={
            policy: policy,
          }),
        },
        encryption_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `gce_pd_kms_key_name` (`string`): Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster. When `null`, the `gce_pd_kms_key_name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
          new(
            gce_pd_kms_key_name=null
          ):: std.prune(a={
            gce_pd_kms_key_name: gce_pd_kms_key_name,
          }),
        },
        endpoint_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.endpoint_config.new` constructs a new object with attributes and blocks configured for the `endpoint_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_http_port_access` (`bool`): Optional. If true, enable http access to specific ports on the cluster from external sources. Defaults to false. When `null`, the `enable_http_port_access` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `endpoint_config` sub block.\n', args=[]),
          new(
            enable_http_port_access=null
          ):: std.prune(a={
            enable_http_port_access: enable_http_port_access,
          }),
        },
        gce_cluster_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.new` constructs a new object with attributes and blocks configured for the `gce_cluster_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `internal_ip_only` (`bool`): Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This `internal_ip_only` restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses. When `null`, the `internal_ip_only` field will be omitted from the resulting object.\n  - `metadata` (`obj`): The Compute Engine metadata entries to add to all instances (see [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)). When `null`, the `metadata` field will be omitted from the resulting object.\n  - `network` (`string`): Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither `network_uri` nor `subnetwork_uri` is specified, the &#34;default&#34; network of the project is used, if it exists. Cannot be a &#34;Custom Subnet Network&#34; (see [Using Subnetworks](https://cloud.google.com/compute/docs/subnetworks) for more information). A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default` * `projects/[project_id]/regions/global/default` * `default` When `null`, the `network` field will be omitted from the resulting object.\n  - `private_ipv6_google_access` (`string`): Optional. The type of IPv6 access for a cluster. Possible values: PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, INHERIT_FROM_SUBNETWORK, OUTBOUND, BIDIRECTIONAL When `null`, the `private_ipv6_google_access` field will be omitted from the resulting object.\n  - `service_account` (`string`): Optional. The [Dataproc service account](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see [VM Data Plane identity](https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `service_account_scopes` (`list`): Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: * https://www.googleapis.com/auth/cloud.useraccounts.readonly * https://www.googleapis.com/auth/devstorage.read_write * https://www.googleapis.com/auth/logging.write If no scopes are specified, the following defaults are also provided: * https://www.googleapis.com/auth/bigquery * https://www.googleapis.com/auth/bigtable.admin.table * https://www.googleapis.com/auth/bigtable.data * https://www.googleapis.com/auth/devstorage.full_control When `null`, the `service_account_scopes` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0` * `projects/[project_id]/regions/us-east1/subnetworks/sub0` * `sub0` When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `tags` (`list`): The Compute Engine tags to add to all instances (see [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). When `null`, the `tags` field will be omitted from the resulting object.\n  - `zone` (`string`): Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the &#34;global&#34; region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]` * `projects/[project_id]/zones/[zone]` * `us-central1-f` When `null`, the `zone` field will be omitted from the resulting object.\n  - `node_group_affinity` (`list[obj]`): Optional. Node Group Affinity for sole-tenant clusters. When `null`, the `node_group_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.node_group_affinity.new](#fn-placementmanaged_clusterconfignode_group_affinitynew) constructor.\n  - `reservation_affinity` (`list[obj]`): Optional. Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.reservation_affinity.new](#fn-placementmanaged_clusterconfigreservation_affinitynew) constructor.\n  - `shielded_instance_config` (`list[obj]`): Optional. Shielded Instance Config for clusters using Compute Engine Shielded VMs. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.shielded_instance_config.new](#fn-placementmanaged_clusterconfigshielded_instance_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `gce_cluster_config` sub block.\n', args=[]),
          new(
            internal_ip_only=null,
            metadata=null,
            network=null,
            node_group_affinity=null,
            private_ipv6_google_access=null,
            reservation_affinity=null,
            service_account=null,
            service_account_scopes=null,
            shielded_instance_config=null,
            subnetwork=null,
            tags=null,
            zone=null
          ):: std.prune(a={
            internal_ip_only: internal_ip_only,
            metadata: metadata,
            network: network,
            node_group_affinity: node_group_affinity,
            private_ipv6_google_access: private_ipv6_google_access,
            reservation_affinity: reservation_affinity,
            service_account: service_account,
            service_account_scopes: service_account_scopes,
            shielded_instance_config: shielded_instance_config,
            subnetwork: subnetwork,
            tags: tags,
            zone: zone,
          }),
          node_group_affinity:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.node_group_affinity.new` constructs a new object with attributes and blocks configured for the `node_group_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `node_group` (`string`): Required. The URI of a sole-tenant [node group resource](https://cloud.google.com/compute/docs/reference/rest/v1/nodeGroups) that the cluster will be created on. A full URL, partial URI, or node group name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1` * `projects/[project_id]/zones/us-central1-a/nodeGroups/node-group-1` * `node-group-1`\n\n**Returns**:\n  - An attribute object that represents the `node_group_affinity` sub block.\n', args=[]),
            new(
              node_group
            ):: std.prune(a={
              node_group: node_group,
            }),
          },
          reservation_affinity:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `consume_reservation_type` (`string`): Optional. Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION When `null`, the `consume_reservation_type` field will be omitted from the resulting object.\n  - `key` (`string`): Optional. Corresponds to the label key of reservation resource. When `null`, the `key` field will be omitted from the resulting object.\n  - `values` (`list`): Optional. Corresponds to the label values of reservation resource. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `reservation_affinity` sub block.\n', args=[]),
            new(
              consume_reservation_type=null,
              key=null,
              values=null
            ):: std.prune(a={
              consume_reservation_type: consume_reservation_type,
              key: key,
              values: values,
            }),
          },
          shielded_instance_config:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_integrity_monitoring` (`bool`): Optional. Defines whether instances have integrity monitoring enabled. Integrity monitoring compares the most recent boot measurements to the integrity policy baseline and returns a pair of pass/fail results depending on whether they match or not. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.\n  - `enable_secure_boot` (`bool`): Optional. Defines whether the instances have Secure Boot enabled. Secure Boot helps ensure that the system only runs authentic software by verifying the digital signature of all boot components, and halting the boot process if signature verification fails. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.\n  - `enable_vtpm` (`bool`): Optional. Defines whether the instance have the vTPM enabled. Virtual Trusted Platform Module protects objects like keys, certificates and enables Measured Boot by performing the measurements needed to create a known good boot baseline, called the integrity policy baseline. When `null`, the `enable_vtpm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `shielded_instance_config` sub block.\n', args=[]),
            new(
              enable_integrity_monitoring=null,
              enable_secure_boot=null,
              enable_vtpm=null
            ):: std.prune(a={
              enable_integrity_monitoring: enable_integrity_monitoring,
              enable_secure_boot: enable_secure_boot,
              enable_vtpm: enable_vtpm,
            }),
          },
        },
        initialization_actions:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.initialization_actions.new` constructs a new object with attributes and blocks configured for the `initialization_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `executable_file` (`string`): Required. Cloud Storage URI of executable file. When `null`, the `executable_file` field will be omitted from the resulting object.\n  - `execution_timeout` (`string`): Optional. Amount of time executable has to complete. Default is 10 minutes (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). Cluster creation fails with an explanatory error message (the name of the executable that caused the error and the exceeded timeout period) if the executable is not completed at end of the timeout period. When `null`, the `execution_timeout` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `initialization_actions` sub block.\n', args=[]),
          new(
            executable_file=null,
            execution_timeout=null
          ):: std.prune(a={
            executable_file: executable_file,
            execution_timeout: execution_timeout,
          }),
        },
        lifecycle_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.lifecycle_config.new` constructs a new object with attributes and blocks configured for the `lifecycle_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_delete_time` (`string`): Optional. The time when cluster will be auto-deleted (see JSON representation of [Timestamp](https://developers.google.com/protocol-buffers/docs/proto3#json)). When `null`, the `auto_delete_time` field will be omitted from the resulting object.\n  - `auto_delete_ttl` (`string`): Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). When `null`, the `auto_delete_ttl` field will be omitted from the resulting object.\n  - `idle_delete_ttl` (`string`): Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json)). When `null`, the `idle_delete_ttl` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `lifecycle_config` sub block.\n', args=[]),
          new(
            auto_delete_time=null,
            auto_delete_ttl=null,
            idle_delete_ttl=null
          ):: std.prune(a={
            auto_delete_time: auto_delete_time,
            auto_delete_ttl: auto_delete_ttl,
            idle_delete_ttl: idle_delete_ttl,
          }),
        },
        master_config:: {
          accelerators:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.master_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. When `null`, the `accelerator_count` field will be omitted from the resulting object.\n  - `accelerator_type` (`string`): Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accelerators` sub block.\n', args=[]),
            new(
              accelerator_count=null,
              accelerator_type=null
            ):: std.prune(a={
              accelerator_count: accelerator_count,
              accelerator_type: accelerator_type,
            }),
          },
          disk_config:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.master_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Optional. Size in GB of the boot disk (default is 500GB). When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): Optional. Type of the boot disk (default is &#34;pd-standard&#34;). Valid values: &#34;pd-balanced&#34; (Persistent Disk Balanced Solid State Drive), &#34;pd-ssd&#34; (Persistent Disk Solid State Drive), or &#34;pd-standard&#34; (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
            new(
              boot_disk_size_gb=null,
              boot_disk_type=null,
              num_local_ssds=null
            ):: std.prune(a={
              boot_disk_size_gb: boot_disk_size_gb,
              boot_disk_type: boot_disk_type,
              num_local_ssds: num_local_ssds,
            }),
          },
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.master_config.new` constructs a new object with attributes and blocks configured for the `master_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. When `null`, the `image` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -&gt; Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `num_instances` (`number`): Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `preemptibility` (`string`): Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE When `null`, the `preemptibility` field will be omitted from the resulting object.\n  - `accelerators` (`list[obj]`): Optional. The Compute Engine accelerator configuration for these instances. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.master_config.accelerators.new](#fn-placementmanaged_clusterconfigacceleratorsnew) constructor.\n  - `disk_config` (`list[obj]`): Optional. Disk option config settings. When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.master_config.disk_config.new](#fn-placementmanaged_clusterconfigdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `master_config` sub block.\n', args=[]),
          new(
            accelerators=null,
            disk_config=null,
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
        '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.new` constructs a new object with attributes and blocks configured for the `config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `staging_bucket` (`string`): Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster&#39;s staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging bucket](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). **This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.** When `null`, the `staging_bucket` field will be omitted from the resulting object.\n  - `temp_bucket` (`string`): Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster&#39;s temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. **This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.** When `null`, the `temp_bucket` field will be omitted from the resulting object.\n  - `autoscaling_config` (`list[obj]`): Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.autoscaling_config.new](#fn-placementmanaged_clusterautoscaling_confignew) constructor.\n  - `encryption_config` (`list[obj]`): Optional. Encryption settings for the cluster. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.encryption_config.new](#fn-placementmanaged_clusterencryption_confignew) constructor.\n  - `endpoint_config` (`list[obj]`): Optional. Port/endpoint configuration for this cluster When `null`, the `endpoint_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.endpoint_config.new](#fn-placementmanaged_clusterendpoint_confignew) constructor.\n  - `gce_cluster_config` (`list[obj]`): Optional. The shared Compute Engine config settings for all instances in a cluster. When `null`, the `gce_cluster_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.gce_cluster_config.new](#fn-placementmanaged_clustergce_cluster_confignew) constructor.\n  - `initialization_actions` (`list[obj]`): Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node&#39;s `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ &#34;${ROLE}&#34; == &#39;Master&#39; ]]; then ... master specific actions ... else ... worker specific actions ... fi When `null`, the `initialization_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.initialization_actions.new](#fn-placementmanaged_clusterinitialization_actionsnew) constructor.\n  - `lifecycle_config` (`list[obj]`): Optional. Lifecycle setting for the cluster. When `null`, the `lifecycle_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.lifecycle_config.new](#fn-placementmanaged_clusterlifecycle_confignew) constructor.\n  - `master_config` (`list[obj]`): Optional. The Compute Engine config settings for the master instance in a cluster. When `null`, the `master_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.master_config.new](#fn-placementmanaged_clustermaster_confignew) constructor.\n  - `secondary_worker_config` (`list[obj]`): Optional. The Compute Engine config settings for additional worker instances in a cluster. When `null`, the `secondary_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.new](#fn-placementmanaged_clustersecondary_worker_confignew) constructor.\n  - `security_config` (`list[obj]`): Optional. Security settings for the cluster. When `null`, the `security_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.security_config.new](#fn-placementmanaged_clustersecurity_confignew) constructor.\n  - `software_config` (`list[obj]`): Optional. The config settings for software inside the cluster. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.software_config.new](#fn-placementmanaged_clustersoftware_confignew) constructor.\n  - `worker_config` (`list[obj]`): Optional. The Compute Engine config settings for worker instances in a cluster. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.new](#fn-placementmanaged_clusterworker_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config` sub block.\n', args=[]),
        new(
          autoscaling_config=null,
          encryption_config=null,
          endpoint_config=null,
          gce_cluster_config=null,
          initialization_actions=null,
          lifecycle_config=null,
          master_config=null,
          secondary_worker_config=null,
          security_config=null,
          software_config=null,
          staging_bucket=null,
          temp_bucket=null,
          worker_config=null
        ):: std.prune(a={
          autoscaling_config: autoscaling_config,
          encryption_config: encryption_config,
          endpoint_config: endpoint_config,
          gce_cluster_config: gce_cluster_config,
          initialization_actions: initialization_actions,
          lifecycle_config: lifecycle_config,
          master_config: master_config,
          secondary_worker_config: secondary_worker_config,
          security_config: security_config,
          software_config: software_config,
          staging_bucket: staging_bucket,
          temp_bucket: temp_bucket,
          worker_config: worker_config,
        }),
        secondary_worker_config:: {
          accelerators:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. When `null`, the `accelerator_count` field will be omitted from the resulting object.\n  - `accelerator_type` (`string`): Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accelerators` sub block.\n', args=[]),
            new(
              accelerator_count=null,
              accelerator_type=null
            ):: std.prune(a={
              accelerator_count: accelerator_count,
              accelerator_type: accelerator_type,
            }),
          },
          disk_config:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Optional. Size in GB of the boot disk (default is 500GB). When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): Optional. Type of the boot disk (default is &#34;pd-standard&#34;). Valid values: &#34;pd-balanced&#34; (Persistent Disk Balanced Solid State Drive), &#34;pd-ssd&#34; (Persistent Disk Solid State Drive), or &#34;pd-standard&#34; (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
            new(
              boot_disk_size_gb=null,
              boot_disk_type=null,
              num_local_ssds=null
            ):: std.prune(a={
              boot_disk_size_gb: boot_disk_size_gb,
              boot_disk_type: boot_disk_type,
              num_local_ssds: num_local_ssds,
            }),
          },
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.new` constructs a new object with attributes and blocks configured for the `secondary_worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. When `null`, the `image` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -&gt; Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `num_instances` (`number`): Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `preemptibility` (`string`): Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE When `null`, the `preemptibility` field will be omitted from the resulting object.\n  - `accelerators` (`list[obj]`): Optional. The Compute Engine accelerator configuration for these instances. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.accelerators.new](#fn-placementmanaged_clusterconfigacceleratorsnew) constructor.\n  - `disk_config` (`list[obj]`): Optional. Disk option config settings. When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.secondary_worker_config.disk_config.new](#fn-placementmanaged_clusterconfigdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `secondary_worker_config` sub block.\n', args=[]),
          new(
            accelerators=null,
            disk_config=null,
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
        security_config:: {
          kerberos_config:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.security_config.kerberos_config.new` constructs a new object with attributes and blocks configured for the `kerberos_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cross_realm_trust_admin_server` (`string`): Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_admin_server` field will be omitted from the resulting object.\n  - `cross_realm_trust_kdc` (`string`): Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. When `null`, the `cross_realm_trust_kdc` field will be omitted from the resulting object.\n  - `cross_realm_trust_realm` (`string`): Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. When `null`, the `cross_realm_trust_realm` field will be omitted from the resulting object.\n  - `cross_realm_trust_shared_password` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster Kerberos realm and the remote trusted realm, in a cross realm trust relationship. When `null`, the `cross_realm_trust_shared_password` field will be omitted from the resulting object.\n  - `enable_kerberos` (`bool`): Optional. Flag to indicate whether to Kerberize the cluster (default: false). Set this field to true to enable Kerberos on a cluster. When `null`, the `enable_kerberos` field will be omitted from the resulting object.\n  - `kdc_db_key` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. When `null`, the `kdc_db_key` field will be omitted from the resulting object.\n  - `key_password` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `key_password` field will be omitted from the resulting object.\n  - `keystore` (`string`): Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `keystore` field will be omitted from the resulting object.\n  - `keystore_password` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided keystore. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `keystore_password` field will be omitted from the resulting object.\n  - `kms_key` (`string`): Optional. The uri of the KMS key used to encrypt various sensitive files. When `null`, the `kms_key` field will be omitted from the resulting object.\n  - `realm` (`string`): Optional. The name of the on-cluster Kerberos realm. If not specified, the uppercased domain of hostnames will be the realm. When `null`, the `realm` field will be omitted from the resulting object.\n  - `root_principal_password` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the root principal password. When `null`, the `root_principal_password` field will be omitted from the resulting object.\n  - `tgt_lifetime_hours` (`number`): Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifies 0, then default value 10 will be used. When `null`, the `tgt_lifetime_hours` field will be omitted from the resulting object.\n  - `truststore` (`string`): Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. When `null`, the `truststore` field will be omitted from the resulting object.\n  - `truststore_password` (`string`): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. When `null`, the `truststore_password` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `kerberos_config` sub block.\n', args=[]),
            new(
              cross_realm_trust_admin_server=null,
              cross_realm_trust_kdc=null,
              cross_realm_trust_realm=null,
              cross_realm_trust_shared_password=null,
              enable_kerberos=null,
              kdc_db_key=null,
              key_password=null,
              keystore=null,
              keystore_password=null,
              kms_key=null,
              realm=null,
              root_principal_password=null,
              tgt_lifetime_hours=null,
              truststore=null,
              truststore_password=null
            ):: std.prune(a={
              cross_realm_trust_admin_server: cross_realm_trust_admin_server,
              cross_realm_trust_kdc: cross_realm_trust_kdc,
              cross_realm_trust_realm: cross_realm_trust_realm,
              cross_realm_trust_shared_password: cross_realm_trust_shared_password,
              enable_kerberos: enable_kerberos,
              kdc_db_key: kdc_db_key,
              key_password: key_password,
              keystore: keystore,
              keystore_password: keystore_password,
              kms_key: kms_key,
              realm: realm,
              root_principal_password: root_principal_password,
              tgt_lifetime_hours: tgt_lifetime_hours,
              truststore: truststore,
              truststore_password: truststore_password,
            }),
          },
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.security_config.new` constructs a new object with attributes and blocks configured for the `security_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kerberos_config` (`list[obj]`): Optional. Kerberos related configuration. When `null`, the `kerberos_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.security_config.kerberos_config.new](#fn-placementmanaged_clusterconfigkerberos_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `security_config` sub block.\n', args=[]),
          new(
            kerberos_config=null
          ):: std.prune(a={
            kerberos_config: kerberos_config,
          }),
        },
        software_config:: {
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image_version` (`string`): Optional. The version of software inside the cluster. It must be one of the supported [Dataproc Versions](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as &#34;1.2&#34; (including a subminor version, such as &#34;1.2.29&#34;), or the [&#34;preview&#34; version](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version. When `null`, the `image_version` field will be omitted from the resulting object.\n  - `optional_components` (`list`): Optional. The set of components to activate on the cluster. When `null`, the `optional_components` field will be omitted from the resulting object.\n  - `properties` (`obj`): Optional. The properties to set on daemon config files. Property keys are specified in `prefix:property` format, for example `core:hadoop.tmp.dir`. The following are supported prefixes and their mappings: * capacity-scheduler: `capacity-scheduler.xml` * core: `core-site.xml` * distcp: `distcp-default.xml` * hdfs: `hdfs-site.xml` * hive: `hive-site.xml` * mapred: `mapred-site.xml` * pig: `pig.properties` * spark: `spark-defaults.conf` * yarn: `yarn-site.xml` For more information, see [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties). When `null`, the `properties` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `software_config` sub block.\n', args=[]),
          new(
            image_version=null,
            optional_components=null,
            properties=null
          ):: std.prune(a={
            image_version: image_version,
            optional_components: optional_components,
            properties: properties,
          }),
        },
        worker_config:: {
          accelerators:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.accelerators.new` constructs a new object with attributes and blocks configured for the `accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the accelerator cards of this type exposed to this instance. When `null`, the `accelerator_count` field will be omitted from the resulting object.\n  - `accelerator_type` (`string`): Full URL, partial URI, or short name of the accelerator type resource to expose to this instance. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `projects/[project_id]/zones/us-east1-a/acceleratorTypes/nvidia-tesla-k80` * `nvidia-tesla-k80` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the accelerator type resource, for example, `nvidia-tesla-k80`. When `null`, the `accelerator_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `accelerators` sub block.\n', args=[]),
            new(
              accelerator_count=null,
              accelerator_type=null
            ):: std.prune(a={
              accelerator_count: accelerator_count,
              accelerator_type: accelerator_type,
            }),
          },
          disk_config:: {
            '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.disk_config.new` constructs a new object with attributes and blocks configured for the `disk_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boot_disk_size_gb` (`number`): Optional. Size in GB of the boot disk (default is 500GB). When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.\n  - `boot_disk_type` (`string`): Optional. Type of the boot disk (default is &#34;pd-standard&#34;). Valid values: &#34;pd-balanced&#34; (Persistent Disk Balanced Solid State Drive), &#34;pd-ssd&#34; (Persistent Disk Solid State Drive), or &#34;pd-standard&#34; (Persistent Disk Hard Disk Drive). See [Disk types](https://cloud.google.com/compute/docs/disks#disk-types). When `null`, the `boot_disk_type` field will be omitted from the resulting object.\n  - `num_local_ssds` (`number`): Optional. Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and [HDFS](https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries. When `null`, the `num_local_ssds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `disk_config` sub block.\n', args=[]),
            new(
              boot_disk_size_gb=null,
              boot_disk_type=null,
              num_local_ssds=null
            ):: std.prune(a={
              boot_disk_size_gb: boot_disk_size_gb,
              boot_disk_type: boot_disk_type,
              num_local_ssds: num_local_ssds,
            }),
          },
          '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `image` (`string`): Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id]` * `projects/[project_id]/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name]` * `projects/[project_id]/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default. When `null`, the `image` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`. When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `min_cpu_platform` (`string`): Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc -&gt; Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu). When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `num_instances` (`number`): Optional. The number of VM instances in the instance group. For [HA cluster](/dataproc/docs/concepts/configuring-clusters/high-availability) [master_config](#FIELDS.master_config) groups, **must be set to 3**. For standard cluster [master_config](#FIELDS.master_config) groups, **must be set to 1**. When `null`, the `num_instances` field will be omitted from the resulting object.\n  - `preemptibility` (`string`): Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE When `null`, the `preemptibility` field will be omitted from the resulting object.\n  - `accelerators` (`list[obj]`): Optional. The Compute Engine accelerator configuration for these instances. When `null`, the `accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.accelerators.new](#fn-placementmanaged_clusterconfigacceleratorsnew) constructor.\n  - `disk_config` (`list[obj]`): Optional. Disk option config settings. When `null`, the `disk_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.worker_config.disk_config.new](#fn-placementmanaged_clusterconfigdisk_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `worker_config` sub block.\n', args=[]),
          new(
            accelerators=null,
            disk_config=null,
            image=null,
            machine_type=null,
            min_cpu_platform=null,
            num_instances=null,
            preemptibility=null
          ):: std.prune(a={
            accelerators: accelerators,
            disk_config: disk_config,
            image: image,
            machine_type: machine_type,
            min_cpu_platform: min_cpu_platform,
            num_instances: num_instances,
            preemptibility: preemptibility,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.managed_cluster.new` constructs a new object with attributes and blocks configured for the `managed_cluster`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_name` (`string`): Required. The cluster name prefix. A unique cluster name will be formed by appending a random suffix. The name must contain only lower-case letters (a-z), numbers (0-9), and hyphens (-). Must begin with a letter. Cannot begin or end with hyphen. Must consist of between 2 and 35 characters.\n  - `labels` (`obj`): Optional. The labels to associate with this cluster. Label keys must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: p{Ll}p{Lo}{0,62} Label values must be between 1 and 63 characters long, and must conform to the following PCRE regular expression: [p{Ll}p{Lo}p{N}_-]{0,63} No more than 32 labels can be associated with a given cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `config` (`list[obj]`): Required. The cluster configuration. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.config.new](#fn-placementconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `managed_cluster` sub block.\n', args=[]),
      new(
        cluster_name,
        config=null,
        labels=null
      ):: std.prune(a={
        cluster_name: cluster_name,
        config: config,
        labels: labels,
      }),
    },
    '#new':: d.fn(help='\n`google.dataproc_workflow_template.placement.new` constructs a new object with attributes and blocks configured for the `placement`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster_selector` (`list[obj]`): Optional. A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted. When `null`, the `cluster_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.cluster_selector.new](#fn-cluster_selectornew) constructor.\n  - `managed_cluster` (`list[obj]`): A cluster that is managed by the workflow. When `null`, the `managed_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_workflow_template.placement.managed_cluster.new](#fn-managed_clusternew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `placement` sub block.\n', args=[]),
    new(
      cluster_selector=null,
      managed_cluster=null
    ):: std.prune(a={
      cluster_selector: cluster_selector,
      managed_cluster: managed_cluster,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataproc_workflow_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDagTimeout':: d.fn(help='`google.string.withDagTimeout` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dag_timeout field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dag_timeout` field.\n', args=[]),
  withDagTimeout(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          dag_timeout: value,
        },
      },
    },
  },
  '#withJobs':: d.fn(help='`google.list[obj].withJobs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the jobs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withJobsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `jobs` field.\n', args=[]),
  withJobs(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          jobs: value,
        },
      },
    },
  },
  '#withJobsMixin':: d.fn(help='`google.list[obj].withJobsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the jobs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withJobs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `jobs` field.\n', args=[]),
  withJobsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          jobs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParameters':: d.fn(help='`google.list[obj].withParameters` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parameters field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withParametersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parameters` field.\n', args=[]),
  withParameters(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  '#withParametersMixin':: d.fn(help='`google.list[obj].withParametersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the parameters field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withParameters](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `parameters` field.\n', args=[]),
  withParametersMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPlacement':: d.fn(help='`google.list[obj].withPlacement` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPlacementMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement` field.\n', args=[]),
  withPlacement(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          placement: value,
        },
      },
    },
  },
  '#withPlacementMixin':: d.fn(help='`google.list[obj].withPlacementMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the placement field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPlacement](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `placement` field.\n', args=[]),
  withPlacementMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          placement+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.number.withVersion` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_dataproc_workflow_template+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}
