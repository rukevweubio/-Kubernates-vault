{{- define "my-repo.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "my-repo.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "my-repo.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "my-repo.serviceAccountName" -}}
{{ if .Values.serviceAccount.create }}{{ include "my-repo.fullname" . }}{{ else }}{{ .Values.serviceAccount.name }}{{ end }}
{{- end }}
