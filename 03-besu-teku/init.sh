#/bin/sh

log_info() {
  echo "$1"
}

log_error() {
  log_info "ERROR: $1"
  exit 1
}

# Validations
test -n $BESU_CONFIG_FILE || log_error "Missing value for environment variable BESU_CONFIG_FILE"
test -n $JWT_SECRET_FILE || log_error "Missing value for environment variable JWT_SECRET_FILE"

echo "Generating JWT secret if not available"
test -s $JWT_SECRET_FILE || openssl rand -hex 32 | tr -d "\n" > $JWT_SECRET_FILE

PUBLIC_IP=$(curl https://ifconfig.me)
log_info "Public IP $PUBLIC_IP"
test -n $PUBLIC_IP || log_error "Public ip is empty"
echo "p2p-host=\"$PUBLIC_IP\"" > $BESU_CONFIG_FILE
