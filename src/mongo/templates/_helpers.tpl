{* {{/*
Return Mongo postgres user password
*/}}
{{- define "mongo.Password" -}}
{{- if .Values.global -}}
    {{- if .Values.global.mongo -}}
        {{- if .Values.global.mongo.password -}}
            {{- .Values.global.mongo.password -}}
        {{- else -}}
            {{- ternary (randAlphaNum 10) .Values.mongo.password (empty .Values.mongo.password ) -}}
        {{- end -}}
    {{- else -}}
        {{- ternary (randAlphaNum 10) .Values.mongo.password (empty .Values.mongo.password ) -}}
    {{- end -}}
{{- else -}}
    {{- ternary (randAlphaNum 10) .Values.mongo.password (empty .Values.mongo.password ) -}}
{{- end -}}
{{- end -}} *}
