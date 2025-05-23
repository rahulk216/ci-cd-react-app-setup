# Build Stage
FROM node:20 AS build
WORKDIR /app
COPY . .

# Accept MODE from build args
ARG MODE=production
ENV MODE=${MODE}

RUN npm install
RUN npm run build:${MODE}

# Serve Stage
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
