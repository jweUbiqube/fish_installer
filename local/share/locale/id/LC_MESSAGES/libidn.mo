��    ;      �  O   �           	  z      c   �  a   �  K   a  �   �  '  �  �   �     ^	     u	  *   �	  �  �	  -   �  #   �  &   �  #     &   8      _  &   �     �  .   �  )   �  )     -   E     s  I        �     �     �  "         '  6   H  &     -   �  -   �          "  #   2  6   V     �     �     �     �     �  &   �  O     -   j     �     �  #   �     �     �          '     ;     O     f     �  x  �       |   )  [   �  h     L   k  �   �    �  �   �     c     |  )   �  "  �  #   �  $     '   &  $   N  &   s  %   �  #   �     �  /     .   2  )   a  1   �     �  K   �          )     E  2   T  "   �  H   �  .   �  6   "  '   Y     �     �  &   �  6   �          %     A     H     \  1   o  R   �  *   �          1  %   F     l     �     �     �     �     �     �                  1          	   5                 0   2   8      +       (             "      *      !      ,   ;       9   7          &      .             4   %       /                 '          6   #                   :   )      3           $          -   
                                   
Report bugs to <%s>.
       --allow-unassigned   Toggle IDNA AllowUnassigned flag
      --usestd3asciirules  Toggle IDNA UseSTD3ASCIIRules flag
       --debug              Print debugging information
      --quiet              Silent operation
   -h, --help               Print help and exit
  -V, --version            Print version and exit
   -n, --nfkc               Normalize string according to Unicode v3.2 NFKC
   -p, --profile=STRING     Use specified stringprep profile instead
                             Valid stringprep profiles: `Nameprep',
                             `iSCSI', `Nodeprep', `Resourceprep', 
                             `trace', `SASLprep'
   -s, --stringprep         Prepare string according to nameprep profile
  -d, --punycode-decode    Decode Punycode
  -e, --punycode-encode    Encode Punycode
  -a, --idna-to-ascii      Convert to ACE according to IDNA (default mode)
  -u, --idna-to-unicode    Convert from ACE according to IDNA
   -t, --tld                Check string for TLD specific rules
                             Only for --idna-to-ascii and --idna-to-unicode
 Cannot allocate memory Charset `%s'.
 Code points prohibited by top-level domain Command line interface to the internationalized domain name library.

All strings are expected to be encoded in the preferred charset used
by your locale.  Use `--debug' to find out what this charset is.  You
can override the charset used by setting environment variable CHARSET.

To process a string that starts with `-', for example `-foo', use `--'
to signal the end of parameters, as in `idn --quiet -a -- -foo'.

Mandatory arguments to long options are mandatory for short options too.
 Conflicting bidirectional properties in input Could not convert from %s to UTF-8. Could not convert from UCS-4 to UTF-8. Could not convert from UTF-8 to %s. Could not convert from UTF-8 to UCS-4. Could not do NFKC normalization. Error in stringprep profile definition Flag conflict with profile Forbidden leading or trailing minus sign (`-') Forbidden unassigned code points in input Input already contain ACE prefix (`xn--') Input does not start with ACE prefix (`xn--') Input error Internationalized Domain Name (IDN) convert STRINGS, or standard input.

 Invalid input Malformed bidirectional string Missing input No top-level domain found in input Non-digit/letter/hyphen in input Only one of -s, -e, -d, -a, -u or -n can be specified. Output would be too large or too small Output would exceed the buffer space provided Prohibited bidirectional code points in input Prohibited code points in input Punycode failed String not idempotent under ToASCII String not idempotent under Unicode NFKC normalization String preparation failed String size limit exceeded Success System dlopen failed System iconv failed Try `%s --help' for more information.
 Type each input string on a line by itself, terminated by a newline character.
 Unicode normalization failed (internal error) Unknown error Unknown profile Usage: %s [OPTION]... [STRINGS]...
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (position %lu): %s tld_check_4z: %s Project-Id-Version: libidn 1.9
Report-Msgid-Bugs-To: bug-libidn@gnu.org
POT-Creation-Date: 2008-10-28 19:06+0100
PO-Revision-Date: 2008-08-16 21:05+0700
Last-Translator: Andhika Padmawan <andhika.padmawan@gmail.com>
Language-Team: Indonesian <translation-team-id@lists.sourceforge.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
 
Laporkan kutu ke <%s>.
       --allow-unassigned   Ubah bendera AllowUnassigned IDNA
      --usestd3asciirules  Ubah bendera UseSTD3ASCIIRules IDNA
       --debug              Cetak informasi awakutu
      --quiet              Operasi diam
   -h, --help               Cetak bantuan lalu keluar
  -V, --version            Cetak versi lalu keluar
   -n, --nfkc               Normalisasi benang berdasarkan Unicode v3.2 NFKC
   -p, --profile=BENANG     Gunakan profil stringprep ketimbang
                             Profil stringprep yang sah: `Nameprep',
                             `iSCSI', `Nodeprep', `Resourceprep', 
                             `trace', `SASLprep'
   -s, --stringprep         Siapkan benang berdasarkan profil nameprep
  -d, --punycode-decode    Awasandi Punycode
  -e, --punycode-encode    Sandi Punycode
  -a, --idna-to-ascii      Konversi ke ACE menurut IDNA (mode standar)
  -u, --idna-to-unicode    Konversi dari ACE menurut IDNA
   -t, --tld                Cek benang untuk peraturan spesifik TLD
                             Hanya untuk --idna-to-ascii dan --idna-to-unicode
 Tak dapat alokasi memori Set karakter `%s'.
 Titik kode dilarang oleh ranah level atas Antarmuka baris perintah ke pustaka nama ranah internasionalisasi.

Semua benang diharapkan tersandi dalam set karakter kesukaan yang dipakai
oleh lokal anda. Gunakan `--debug' untuk mencari tahu apakah set karakter ini.
Anda dapat menimpa set karakter yang digunakan oleh pengaturan variabel lingkungan CHARSET.

Untuk memproses benang yang dimulai dengan `-', misalnya `-foo', gunakan
`--' untuk menandai akhir parameter, seperti dalam `idn --quiet -a -- -foo'.

Argumen mandatori untuk opsi panjang merupakan mandatori untuk opsi pendek juga.
 Properti dwiarah konflik di masukan Tak dapat konversi dari %s ke UTF-8. Tak dapat konversi dari UCS-4 ke UTF-8. Tak dapat konversi dari UTF-8 ke %s. Tak dapat konversi dari UTF-8 ke UCS-4 Tak dapat melakukan normalisasi NFKC. Galat di definisi profil stringprep Bendera konflik dengan profil Tanda minus awalan atau akhiran terlarang (`-') Titik kode tak ditugaskan terlarang di masukan Masukan telah berisi prefiks ACE (`xn--') Masukan tidak diawali dengan prefiks ACE (`xn--') Galat masukan BENANG konversi Internationalized Domain Name (IDN), atau masukan standar.
 Masukan tidak sah Benang dwiarah salah bentuk Masukan hilang Tak ada ranah level atas yang ditemukan di masukan Non-digit/huruf/sambung di masukan Hanya salah satu dari -s, -e, -d, -a, -u, atau -n yang dapat ditentukan. Keluaran akan terlalu besar atau terlalu kecil Keluaran akan melebihi ruang penyangga yang disediakan Titik kode dwiarah terlarang di masukan Titik kode terlarang di masukan Punycode gagal Benar tidak idempoten di bawah ToASCII Benang tak idempoten di bawah normalisasi Unicode NFKC Penyiapan benang gagal Batas ruang benang tercapai Sukses Sistem dlopen gagal Sistem iconv gagal Coba `'%s -- help' untuk informasi lebih lanjut.
 Ketik tiap benang masukan pada baris itu sendiri, diakhiri oleh karakter newline.
 Normalisasi unicode gagal (galat internal) Galat tak dikenal Profil tak diketahui Penggunaan: %s [OPSI]... [BENANG]...
 idna_to_ascii_4z: %s idna_to_unicode_8z4z (TLD): %s idna_to_unicode_8z4z: %s punycode_decode: %s punycode_encode: %s stringprep_profile: %s tld_check_4z (posisi %lu): %s tld_check_4z: %s 