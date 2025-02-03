{{/*
Generate a fullname for the chart by concatenating the release name and chart name.
*/}}
{{- define "test-nginx.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate labels for resources.
*/}}
{{- define "test-nginx.labels" -}}
app.kubernetes.io/name: {{ include "test-nginx.name" . }}
helm.sh/chart: {{ include "test-nginx.chart" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Generate the chart name.
*/}}
{{- define "test-nginx.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Generate the chart version.
*/}}
{{- define "test-nginx.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version -}}
{{- end -}}
