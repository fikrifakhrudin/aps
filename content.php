<?php
include "config/koneksi.php";
include "config/library.php";
include "config/fungsi_indotgl.php";
include "config/fungsi_combobox.php";
include "config/class_paging.php";
include "config/fungsi_desimal.php";

// Bagian Home
if ($_GET[module]=='home'){
  echo "<h2>Selamat Datang</h2>
          <p>Hai <b>$_SESSION[namalengkap]</b>, selamat datang di halaman 
		  <br><b><i><font color=#0000ff>Aplikasi Penilaian Siswa SMK Gita Kirtti 1 Jakarta Berbasis Web.</font></i></b><br> 
		  <tr>
				<td><img src='images/fikri.jpg' width='160' height='160' hspace='10' align='right' vspace=center></td>
				<td>	
						<p align=justify>Aplikasi ini dibuat dengan tujuan untuk dapat menunjang kegiatan 
						administrasi sekolah khususnya dalam proses penilaian siswa. Aplikasi ini membantu menyajikan data yang cepat, mudah dan terbaru bagi Bapak atau Ibu Guru dalam melakukan proses penilaian terhadap siswa-siswinya. Aplikasi ini dibuat dengan menggunakan bahasa pemograman PHP dan MySQL sebagai databasenya.<br> <b>Adapun petunjuk penggunaan aplikasi ini sebagai berikut :</b><br>
						1.  &nbsp User hanya dapat mengakses pada halaman nilai saja.<br>
						2.  &nbsp User hanya dapat menginput atau mengisi nilai sesuai mata pelajaran yang diajarkan.<br>
						3.  &nbsp User hanya dapat mencetak nilai sesuai kelas dan mata pelajaran yang diajarkan.<br>
						<br>
						Silahkan Anda klik menu pilihan yang berada di sebelah kiri.
						</p>
				</td>
		  </tr>
		  </p>
		  <p>&nbsp;</p>
          <p align=right>$_SESSION[namalengkap] : $hari_ini, ";
  echo tgl_indo(date("Y m d")); 
  echo " | "; 
  echo date("H:i:s");
  echo " WIB</p>";
}

// Bagian User
elseif ($_GET[module]=='user'){
  include "modul/mod_users/users.php";
}

// Bagian Modul
elseif ($_GET[module]=='modul'){
  include "modul/mod_modul/modul.php";
}

// Bagian Siswa
elseif ($_GET[module]=='siswa'){
  include "modul/mod_siswa/siswa.php";
}

// Bagian Nilai
elseif ($_GET[module]=='nilai'){
  include "modul/mod_nilai/nilai.php";
}

// Bagian Mata Pelajaran
elseif ($_GET[module]=='mapel'){
  include "modul/mod_mapel/mapel.php";
}

// Bagian Kelas
elseif ($_GET[module]=='kelas'){
  include "modul/mod_kelas/kelas.php";
}

// Apabila modul tidak ditemukan
else{
  echo "<p><b>MODUL BELUM ADA ATAU BELUM LENGKAP</b></p>";
}
?>