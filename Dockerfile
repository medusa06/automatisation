# Utiliser l'image Ubuntu 20.04 comme image de base
FROM ubuntu:20.04

# Mettre à jour les paquets disponibles et installer les dépendances nécessaires
RUN apt-get update && \
 DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
 apache2 \
 php \
 php-mysql \
 php-mbstring \
 php-intl \
 php-gd \
 php-xml \
 php-curl \
 php-json \
 php-zip \
 unzip \
 wget \
 ca-certificates \
 mysql-server \
 && rm -rf /var/lib/apt/lists/*

# Télécharger Roundcube et extraire les fichiers dans le répertoire web
RUN mkdir -p /var/www/html/roundcube && \
 wget -O /tmp/roundcube.tar.gz https://github.com/roundcube/roundcubemail/releases/download/1.5.2/roundcubemail-1.5.2-complete.tar.gz && \
 tar xf /tmp/roundcube.tar.gz -C /var/www/html/roundcube --strip-components=1 && \
 rm /tmp/roundcube.tar.gz

# Déplacer le fichier de configuration de Roundcube
COPY config.inc.php /var/www/html/roundcube/config/

# Configuration d'Apache pour Roundcube
COPY roundcube.conf /etc/apache2/sites-available/
RUN a2enmod rewrite && \
 a2dissite 000-default && \
 a2ensite roundcube

# Exposer le port HTTP
EXPOSE 80

# Commande par défaut pour démarrer Apache en premier plan
CMD ["apache2ctl", "-D", "FOREGROUND"]
