# CBFS Demo

A simple Coldbox application to demo the [cbfs](https://github.com/coldbox-modules/cbfs) module. [cbfs](https://github.com/coldbox-modules/cbfs) is a module developed by [Ortus Solutions](https://www.ortussolutions.com/) as api for working with files and file storage systems.

## Getting started

### Clone the repository.

```
git clone https://github.com/jsteinshouer/cbfs-demo.git
```

### Install the dependencies
   
Install the dependencies from `box.json` using [CommandBox](http://www.ortussolutions.com/products/commandbox).

```
box install
```

### Configure the application

You can manually copy `.env.example` to .env and then add your config values or you can call the `dotenv populate` command to do it.
   
**DEFAULT_STORAGE** 

There are two disks configured named `localStorage` and`S3Storage`. You can specify one of these or configure your own in the `config/Coldbox.cfc` file. 

You will need to provide your own credentails and config if you want to try out the [`S3Storage`](https://cbfs.ortusbooks.com/getting-started/providers/s3-provider) provider.

i.e.

```
S3_ACCESS_KEY=myaccesskey
S3_SECRET_KEY=mysecretkey
S3_BUCKET=mybucket
S3_DOMAIN=amazonaws.com
S3_REGION=us-east-2
```

### Start the server

```
box server start
```