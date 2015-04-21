{% from "mailcatcher/map.jinja" import mailcatcher with context %}


mailcatcher-dependencies:
  pkg.installed:
    - names:
      {% for dependency in mailcatcher.dependencies %}
      - {{ dependency }}
      {% endfor %}


mailcatcher-gem:
  gem.installed:
    - name: mailcatcher
    - require:
      - pkg: mailcatcher-dependencies
