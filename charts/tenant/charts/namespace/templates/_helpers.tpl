{{- define "groups.admin.name" -}}
{{ .Values.global.tenant }}-admins
{{- end }}

{{- define "groups.team.name" -}}
{{ .Values.global.tenant }}-team
{{- end }}

{{- define "namespace.suffix" -}}
{{ eq .Values.type "runtime" | ternary .Values.environment .Values.type}}
{{- end }}

{{- define "namespace.name" -}}
{{ .Values.global.tenant }}-{{ include "namespace.suffix" . }}
{{- end }}
