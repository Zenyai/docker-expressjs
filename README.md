### Usage

Pull this repo and run

    docker build -t zenyai/expressjs .

To start docker runs

    docker run -d -p 80:80 zenyai/expressjs

#### Attach persistent/shared directories

    docker run -d -p 80:80 -v <html-dir>:/var/expressjs zenyai/expressjs

Shared dir must have server.js at the starting point

After few seconds, open `http://<host>` to see the welcome page.
