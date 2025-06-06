# Data Discovery Tool

This is a fork of [LibreChat](https://github.com/danny-avila/LibreChat), integrated with the [ClickHouse MCP](https://github.com/ClickHouse/mcp-clickhouse).

## Setup Instructions

1. Clone the repository
1. `cp docker-compose.override.yml.example docker-compose.override.yml`
1. Create the `.env` file, `cp .env.example .env`
1. Fill in the environment variables in the `.env` file. You'll need an API key for an LLM provider (OpenAI, Anthropic, etc), along with credentials for a ClickHouse instance. ClickHouse Cloud has a free tier when you can quickly get access to a test instance. At a minimum, you'll want to fill in:
    1. `CLICKHOUSE_HOST`
    1. `CLICKHOUSE_PORT`
    1. `CLICKHOUSE_USER`
    1. `CLICKHOUSE_PASSWORD`
    1. One of the LLM provider API keys (`OPENAI_API_KEY`, `ANTHROPIC_API_KEY`, etc).
1. `make up`

## Agent Configuration

1. Create an account
1. Create a new Agent and configure it to use the desired LLM provider.
1. In the "Tools" section of the agent, add the list databases, list tables, and run select query tools from the ClickHouse MCP.
1. Optionally, add instructions to the agent to guide it in how it should respond to questions.
