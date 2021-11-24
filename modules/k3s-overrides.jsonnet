local utils = import '../utils.libsonnet';
local vars = import '../vars.jsonnet';
local k = import 'github.com/jsonnet-libs/k8s-libsonnet/1.22/main.libsonnet';
local service = k.core.v1.service;
local servicePort = k.core.v1.servicePort;

{
  prometheus+:: {
    kubeControllerManagerPrometheusDiscoveryEndpoints:
      utils.newEndpoint('kube-controller-manager-prometheus-discovery', 'kube-system', vars.k3s.master_ip, 'http-metrics', 10252),

    kubeSchedulerPrometheusDiscoveryEndpoints:
      utils.newEndpoint('kube-scheduler-prometheus-discovery', 'kube-system', vars.k3s.master_ip, 'http-metrics', 10251),

    kubeControllerManagerPrometheusDiscoveryService:
      service.new('kube-controller-manager-prometheus-discovery',
                  {},
                  servicePort.newNamed('http-metrics', 10252, 10252)) +
      service.metadata.withNamespace('kube-system') +
      service.metadata.withLabels({ 'k8s-app': 'kube-controller-manager' }) +
      service.spec.withClusterIP('None'),

    kubeSchedulerPrometheusDiscoveryService:
      service.new('kube-scheduler-prometheus-discovery',
                  {},
                  servicePort.newNamed('http-metrics', 10251, 10251)) +
      service.metadata.withNamespace('kube-system') +
      service.metadata.withLabels({ 'k8s-app': 'kube-scheduler' }) +
      service.spec.withClusterIP('None'),
  },
}
