.PHONY: install lint test dbt app all

install:
	uv sync --group dev

lint:
	uv run ruff check .

test:
	uv run pytest

dbt:
	uv run dbt build --project-dir dbt_neobank --profiles-dir dbt_neobank

app:
	uv run streamlit run app/streamlit_app.py

all: lint test dbt
