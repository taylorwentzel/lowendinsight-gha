FROM elixir:alpine

RUN set -xe && \
    mix local.rebar --force && \
    mix local.hex --force

COPY elixir-entrypoint /usr/local/bin/elixir-entrypoint

ENTRYPOINT ["/usr/local/bin/elixir-entrypoint"]