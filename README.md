# xlts-dev-test
Test repository to demo the xlts dev issue

## Build application
Replace the token in npmrc file and run the docker command
```shell
docker build . -t xlts-test
```
Following error is noticed.

```javascript
kummars@REMc02F2675md6r xlts-dev-test % docker build . -t xlts-test
[+] Building 2.8s (9/9) FINISHED                                                                                                                                                                      
 => [internal] load build definition from Dockerfile                                                                                                                                             0.0s
 => => transferring dockerfile: 36B                                                                                                                                                              0.0s
 => [internal] load .dockerignore                                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                                  0.0s
 => [internal] load metadata for docker.io/library/node:14-alpine                                                                                                                                1.0s
 => [1/5] FROM docker.io/library/node:14-alpine@sha256:7bcf853eeb97a25465cb385b015606c22e926f548cbd117f85b7196df8aa0d29                                                                          0.0s
 => [internal] load build context                                                                                                                                                                0.0s
 => => transferring context: 501B                                                                                                                                                                0.0s
 => CACHED [2/5] WORKDIR /app                                                                                                                                                                    0.0s
 => CACHED [3/5] COPY package.json ./                                                                                                                                                            0.0s
 => [4/5] COPY .npmrc ./                                                                                                                                                                         0.0s
 => ERROR [5/5] RUN npm install --verbose                                                                                                                                                        1.7s
------                                                                                                                                                                                                
 > [5/5] RUN npm install --verbose:                                                                                                                                                                   
#9 0.568 npm info it worked if it ends with ok                                                                                                                                                        
#9 0.568 npm verb cli [ '/usr/local/bin/node', '/usr/local/bin/npm', 'install', '--verbose' ]                                                                                                         
#9 0.569 npm info using npm@6.14.15                                                                                                                                                                   
#9 0.569 npm info using node@v14.18.2                                                                                                                                                                 
#9 0.856 npm verb npm-session 0cd4261987c2f5d6
#9 0.933 npm info lifecycle xlts-dev-test@1.0.0~preinstall: xlts-dev-test@1.0.0
#9 0.950 npm timing stage:loadCurrentTree Completed in 13ms
#9 0.951 npm timing stage:loadIdealTree:cloneCurrentTree Completed in 1ms
#9 0.954 npm timing stage:loadIdealTree:loadShrinkwrap Completed in 2ms
#9 1.359 npm http fetch GET 401 https://registry.xlts.dev/@xlts.dev-trial%2fangular 393ms
#9 1.621 npm http fetch GET 401 https://registry.xlts.dev/@xlts.dev-trial%2fangular 254ms
#9 1.625 npm timing stage:rollbackFailedOptional Completed in 1ms
#9 1.626 npm timing stage:runTopLevelLifecycles Completed in 735ms
#9 1.635 npm verb stack Error: Unable to authenticate, need: Basic, Bearer
#9 1.635 npm verb stack     at /usr/local/lib/node_modules/npm/node_modules/npm-registry-fetch/check-response.js:107:17
#9 1.635 npm verb stack     at processTicksAndRejections (internal/process/task_queues.js:95:5)
#9 1.635 npm verb statusCode 401
#9 1.635 npm verb pkgid @xlts.dev-trial/angular@1.8.2
#9 1.635 npm verb cwd /app
#9 1.637 npm verb Linux 5.10.47-linuxkit
#9 1.637 npm verb argv "/usr/local/bin/node" "/usr/local/bin/npm" "install" "--verbose"
#9 1.637 npm verb node v14.18.2
#9 1.637 npm verb npm  v6.14.15
#9 1.637 npm ERR! code E401
#9 1.641 npm ERR! Unable to authenticate, your authentication token seems to be invalid.
#9 1.641 npm ERR! To correct this please trying logging in again with:
#9 1.641 npm ERR!     npm login
#9 1.641 npm verb exit [ 1, true ]
#9 1.645 npm timing npm Completed in 1117ms
#9 1.646 
#9 1.646 npm ERR! A complete log of this run can be found in:
#9 1.646 npm ERR!     /root/.npm/_logs/2021-12-14T12_34_22_951Z-debug.log
------
executor failed running [/bin/sh -c npm install --verbose]: exit code: 1
```

