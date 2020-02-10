# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import sngrep with context %}

sngrep-package-install-pkg-installed:
  pkg.installed:
    - name: {{ sngrep.pkg.name }}
