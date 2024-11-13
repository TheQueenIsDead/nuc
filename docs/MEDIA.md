# Media

## Storage 

Thinking of creating an account with either Wasabi or Backblaze

Wasabi: https://wasabi.com/

Backblaze: https://www.backblaze.com/

They both seem like cheap S3 compatible storage solutions.

## FS

The nicest thing to do would be to have S3 mounted as a filesystem in order to allow the limited server space to expand.

There's a few options for this.

 - [S3 Drive](https://www.callback.com/s3drive)
 - [mountpoint-s3](https://github.com/awslabs/mountpoint-s3/)
 - [s3fs-fude](https://github.com/s3fs-fuse/s3fs-fuse)
 - [sdfs](https://github.com/opendedup/sdfs)

## Help

There was a valuable article on the plex forums regarding how to use Wasabi as a backend

 - https://forums.plex.tv/t/wasabi-s3-cloud-integration/237328/13
