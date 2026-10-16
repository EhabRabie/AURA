# Serve the single-file AURA site with nginx (Render-ready, respects $PORT)
FROM nginx:alpine
ENV PORT=8080
COPY aura-interior-architecture.html /usr/share/nginx/html/index.html
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
EXPOSE 8080
