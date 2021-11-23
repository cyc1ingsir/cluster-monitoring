{
  values+:: {
    common+: {
      versions+:: {
        prometheus: 'v2.19.1',
        alertmanager: 'v0.21.0',
        kubeStateMetrics: '1.9.6',
        kubeRbacProxy: 'v0.5.0',
        addonResizer: '2.3',
        nodeExporter: 'v0.18.1',
        prometheusOperator: 'v0.40.0',
        prometheusAdapter: 'v0.7.0',
        grafana: '7.0.3',
        configmapReloader: 'latest',
        prometheusConfigReloader: 'v0.40.0',
        armExporter: 'latest',
        smtpRelay: 'v1.0.1',
        elasticExporter: '1.0.4rc1',
      },

      imageRepos+:: {
        prometheus: 'prom/prometheus',
        alertmanager: 'prom/alertmanager',
        kubeStateMetrics: 'carlosedp/kube-state-metrics',
        kubeRbacProxy: 'carlosedp/kube-rbac-proxy',
        addonResizer: 'carlosedp/addon-resizer',
        nodeExporter: 'prom/node-exporter',
        prometheusOperator: 'carlosedp/prometheus-operator',
        prometheusAdapter: 'directxman12/k8s-prometheus-adapter',
        grafana: 'grafana/grafana',
        configmapReloader: 'carlosedp/configmap-reload',
        prometheusConfigReloader: 'carlosedp/prometheus-config-reloader',
        armExporter: 'carlosedp/arm_exporter',
        smtpRelay: 'carlosedp/docker-smtp',
        elasticExporter: 'carlosedp/elasticsearch-exporter',
      },
    },
  },
}
