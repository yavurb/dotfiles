function ztc --description "Run a test container"
    set -f db_name (pwd | xargs basename)
    echo "Setting up test container for $db_name"
    set -gx DB_DEVELOPMENT_URI "postgresql://postgres:postgres@localhost:5432/$db_name"

    docker compose -f test.yaml up postgres -d
end
