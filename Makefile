VENV_DIR := venv

start:
	. $(VENV_DIR)/bin/activate && jupyter notebook notebooks/

env:
	python3 -m venv $(VENV_DIR)
	. $(VENV_DIR)/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

install:
	source $(VENV_DIR)/bin/activate && pip install -r requirements.txt

clean:
	rm -rf $(VENV_DIR)
	@echo "🧹 Cleaning up virtual environment..."