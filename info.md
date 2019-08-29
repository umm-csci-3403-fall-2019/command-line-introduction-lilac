
# Gathered Info

>       --to-command=COMMAND
>              Pipe extracted files to COMMAND.  The argument is the pathname of an external program, optionally with command line arguments.  The program will be invoked and the contents of the file being extracted supplied to it on
>              its standard input.  Additional data will be supplied via the following environment variables:
>
>              TAR_FILETYPE
>                     Type of the file. It is a single letter with the following meaning:
>
>                             f           Regular file
>                             d           Directory
>                             l           Symbolic link
>                             h           Hard link
>                             b           Block device
>                             c           Character device
>
>                     Currently only regular files are supported.

From the `man tar` documentation

>$ tar xvzf file.tar.gz -C /path/to/somedirectory

from `https://www.interserver.net/tips/kb/extract-tar-gz-files-using-linux-command-line/`
