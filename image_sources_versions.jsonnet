{
  values+:: {
    common+: {
      // versions+:: {
      //   prometheus: '2.19.1',
      //   alertmanager: '0.21.0',
      //   kubeStateMetrics: '1.9.6',
      //   kubeRbacProxy: '0.5.0',
      //   addonResizer: '2.3',
      //   nodeExporter: '0.18.1',
      //   prometheusOperator: '0.40.0',
      //   prometheusAdapter: '0.7.0',
      //   grafana: '7.0.3',
      //   configmapReloader: 'latest',
      //   prometheusConfigReloader: '0.40.0',
      //   armExporter: 'latest',
      //   smtpRelay: 'v1.0.1',
      //   elasticExporter: '1.0.4rc1',
      // },

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
