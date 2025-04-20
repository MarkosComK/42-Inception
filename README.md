# Inception Project

This project involves setting up a small infrastructure composed of different services using Docker containers. The goal is to creating a WordPress website with MariaDB database and NGINX web server, all running in separate containers and connected via a Docker network.

## Project Structure

```
├── Makefile
├── secrets/
│   ├── credentials.txt
│   ├── db_password.txt
│   └── db_root_password.txt
└── srcs/
    ├── docker-compose.yml
    ├── .env
    └── requirements/
        ├── mariadb/
        │   ├── conf/
        │   ├── Dockerfile
        │   └── tools/
        ├── nginx/
        │   ├── conf/
        │   ├── Dockerfile
        │   └── tools/
        └── wordpress/
            ├── conf/
            ├── Dockerfile
            └── tools/
```

## Roadmap & Progress Tracking

### 1. Environment Setup (Est: 3-6 hours)
- [ ] Set up Virtual Machine
- [ ] Create project directory structure according to requirements
- [ ] Initialize Git repository
- [ ] Create initial Makefile structure

### 2. Docker Configuration (Est: 8-12 hours)
- [ ] Create docker-compose.yml file
- [ ] Set up .env file for environment variables
- [ ] Configure Docker network
- [ ] Set up Docker volumes for WordPress and MariaDB
- [ ] Configure secrets management
- [ ] Test basic Docker Compose functionality

### 3. NGINX Container (Est: 8-12 hours)
- [ ] Create Dockerfile using Alpine/Debian
- [ ] Configure NGINX for WordPress
- [ ] Set up TLSv1.2/TLSv1.3 only
- [ ] Configure as sole entry point on port 443
- [ ] Set up automatic restart
- [ ] Test container in isolation

### 4. MariaDB Container (Est: 8-12 hours)
- [ ] Create Dockerfile using Alpine/Debian
- [ ] Configure MariaDB for WordPress
- [ ] Set up database initialization scripts
- [ ] Configure persistent volume
- [ ] Set up automatic restart
- [ ] Test container in isolation

### 5. WordPress Container (Est: 8-12 hours)
- [ ] Create Dockerfile using Alpine/Debian
- [ ] Install and configure php-fpm
- [ ] Set up WordPress installation
- [ ] Configure persistent volume
- [ ] Create required users (non-admin username)
- [ ] Set up automatic restart
- [ ] Test container in isolation

### 6. Integration & Testing (Est: 12-16 hours)
- [ ] Connect all services via Docker network
- [ ] Test communication between containers
- [ ] Configure domain name (login.42.fr)
- [ ] Test automatic restart functionality
- [ ] Validate TLS certificate and connection
- [ ] Test WordPress functionality
- [ ] Fix any issues with container communication

### 7. Bonus Features (Est: 4-6 hours each)
- [ ] Redis cache for WordPress
- [ ] FTP server container
- [ ] Static website (non-PHP)
- [ ] Adminer setup
- [ ] Custom service

## Technical Requirements Checklist

### Mandatory Part
- [ ] All services in dedicated containers
- [ ] Built from Alpine or Debian (penultimate stable version)
- [ ] Custom Dockerfiles for each service
- [ ] Docker Compose setup in docker-compose.yml
- [ ] NGINX with TLSv1.2 or TLSv1.3 only
- [ ] WordPress with php-fpm (no NGINX)
- [ ] MariaDB (no NGINX)
- [ ] Volume for WordPress database
- [ ] Volume for WordPress files
- [ ] Docker network connecting containers
- [ ] Containers restart automatically after crash
- [ ] No infinite loops or hacky solutions (tail -f, etc.)
- [ ] WordPress database contains admin user (username without "admin")
- [ ] Volumes available in /home/login/data
- [ ] Domain name (login.42.fr) configured to local IP
- [ ] No latest tag used in Docker images
- [ ] No passwords in Dockerfiles
- [ ] Environment variables properly used
- [ ] NGINX as sole entry point (port 443)

### Bonus Part
- [ ] Redis cache for WordPress
- [ ] FTP server for WordPress files
- [ ] Simple static website (non-PHP)
- [ ] Adminer setup
- [ ] Additional useful service

## Resources & References

- Docker Documentation
- NGINX Documentation
- WordPress with php-fpm setup guides
- MariaDB Documentation
- TLS Configuration Guides

## Notes

- Remember that containers must restart automatically
- Avoid using hacky patches like tail -f
- No network:host or --link or links in docker-compose
- Passwords must not be in Dockerfiles
- Use environment variables in .env file
- Nginx should be the only entry point on port 443
- Domain name should point to your local IP
