VENV_DIR := venv
PYTHON := $(VENV_DIR)/bin/python
PIP := $(VENV_DIR)/bin/pip

start: $(VENV_DIR)/bin/activate
	$(VENV_DIR)/bin/jupyter notebook notebooks/

env: $(VENV_DIR)/bin/activate
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

install: $(VENV_DIR)/bin/activate
	$(PIP) install -r requirements.txt

$(VENV_DIR)/bin/activate:
	python3 -m venv $(VENV_DIR)
	@echo "✅ Virtual environment created."

clean:
	rm -rf $(VENV_DIR)
	@echo "🧹 Cleaning up virtual environment..."
