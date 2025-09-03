#!/bin/bash

# BMAD-METHOD Docker Runner Script

echo "🚀 BMAD-METHOD Docker Container Manager"
echo "======================================="

case "$1" in
  start)
    echo "Starting BMAD-METHOD container..."
    docker-compose up -d
    echo "✅ Container started on port 3333"
    echo "Run './run-bmad.sh shell' to enter the container"
    ;;
  
  stop)
    echo "Stopping BMAD-METHOD container..."
    docker-compose down
    echo "✅ Container stopped"
    ;;
  
  shell)
    echo "Entering BMAD-METHOD container..."
    docker exec -it bmad-method /bin/sh
    ;;
  
  install)
    echo "Installing BMAD-METHOD in workspace..."
    docker exec -it bmad-method sh -c "cd /workspace && npx bmad-method install"
    ;;
  
  logs)
    echo "Showing container logs..."
    docker-compose logs -f
    ;;
  
  status)
    echo "Container status:"
    docker ps --filter name=bmad-method --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
    ;;
  
  *)
    echo "Usage: $0 {start|stop|shell|install|logs|status}"
    echo ""
    echo "Commands:"
    echo "  start   - Start the BMAD-METHOD container"
    echo "  stop    - Stop the container"
    echo "  shell   - Enter the container shell"
    echo "  install - Run 'npx bmad-method install' in workspace"
    echo "  logs    - Show container logs"
    echo "  status  - Show container status"
    exit 1
    ;;
esac