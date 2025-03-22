# Tiltfile

# --- Configuration ---

# Define the Kubernetes namespace to deploy to.
k8s_namespace = 'todos-k8s'

# --- Namespace ---
k8s_yaml('k8s-yamls/namespace.yaml')

# Deploy MongoDB from the YAML file.
k8s_yaml('k8s-yamls/mongodb.yaml')

# Deploy Redis from the YAML file.
k8s_yaml('k8s-yamls/redis.yaml')

# Build the application's Docker image.
docker_build(
    'todos-api-image',
    '.',
    dockerfile='Dockerfile' # Assuming you have a Dockerfile in the root directory
)

# Deploy the application from the YAML file.
k8s_yaml('k8s-yamls/app.yaml')


# --- Live Updates ---

# Configure live updates for the application.
k8s_resource('todos-api', port_forwards=['8080:8080'])
