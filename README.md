# Data Discovery Tool

This is a fork of LibreChat, integrated with the ClickHouse MCP.

## Setup Instructions

1. Clone the repository
1. Create the `.env` file, `cp .env.sample .env`
1. Fill in the environment variables in the `.env` file. You'll need an API key for an LLM provider (OpenAI, Anthropic, etc), along with credentials for a ClickHouse instance. ClickHouse Cloud has a free tier when you can quickly get access to a test instance.
1. `make up`

## Agent Configuration

1. Create an account
1. Create a new Agent and configure it to use the desired LLM provider.
1. In the "Tools" section of the agent, add the list databases, list tables, and run select query tools from the ClickHouse MCP.
1. Optionally, add instructions to the agent to guide it in how it should respond to questions.
