# Container Image for Running a Cron Job

This Docker image is designed to facilitate the execution of a specific cron job within a container. It includes essential components such as cronie, PHP, and tzdata, allowing you to schedule and run tasks according to a specified schedule.

## Usage

### Build the Docker Image

To build the Docker image, use the following command:

```bash
docker build -t crontab-docker:latest .

