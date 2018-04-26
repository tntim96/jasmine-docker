# Run the image
`docker run -p 8888:8889 -it tntim96/jasmine-docker-dev bash`

# Checkout Jasmine
(if not using mapped drive)

```Bash
docker run -p 8888:8889 -it tntim96/jasmine-docker-dev bash
git clone https://github.com/pivotal/jasmine.git
cd jasmine
npm install --local
bundle install
socat -d tcp-listen:8889,reuseaddr,fork tcp:127.0.0.1:8888 &
```

# Run Tests
`grunt execSpecsInNode`

`bundle exec rake jasmine`

You can run tests by going to http://localhost:8888/


# Build the image
The image is available on docker hub `tntim96/jasmine-docker`, built with:

`docker build --rm -t tntim96/jasmine-docker .`
