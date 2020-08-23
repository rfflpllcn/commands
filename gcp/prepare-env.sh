echo "Creating Datastore/App Engine instance"
gcloud app create --region "us-central"
echo "Exporting GCLOUD_PROJECT"
export GCLOUD_PROJECT=$DEVSHELL_PROJECT_ID
echo "Installing Python libraries"
pip install --upgrade pip
pip install -r requirements.txt
echo "Creating Datastore entities"
python add_entities.py
echo "Project ID: $DEVSHELL_PROJECT_ID"