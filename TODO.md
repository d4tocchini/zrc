
pkg gnu coreutils (realpath)

    b2sum base32 chcon hostid md5sum nproc numfmt pinky ptx realpath runcon
    sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf stdbuf tac timeout truncate
    https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/coreutils.rb
    https://github.com/coreutils/coreutils


zshcc ()
{
    [[ ! -f "$1.zwc" ]] || [[ "$1" -nt "$1.zwc" ]] && zcompile $1
}