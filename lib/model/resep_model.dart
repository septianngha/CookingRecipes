class ResepModel {
  String name;
  String origin;
  String description;
  String cookingTime;
  String portion;
  String imageAsset;  
  List<String> steps;
  List<String> ingredientsList;

  ResepModel({
    required this.name,
    required this.origin,
    required this.description,    
    required this.cookingTime,
    required this.portion,
    required this.imageAsset,
    required this.steps,
    required this.ingredientsList,
  });
}

var resepList = [
  ResepModel(
    name: 'Nasi Goreng',
    origin: 'Indonesia',
    description:
        'Nasi Goreng adalah makanan khas Indonesia yang terbuat dari nasi yang digoreng dengan bumbu-bumbu dan dilengkapi dengan telur, ayam, atau seafood.',
    ingredientsList: [
      'Nasi putih',
      'Kecap manis',
      'Bawang merah',
      'Bawang putih',
      'Telur',
      'Ayam',
      'Garam',
      'Minyak',
    ],
    steps: [
      'Panaskan minyak di wajan.',
      'Tumis bawang merah dan bawang putih hingga harum.',
      'Masukkan nasi putih, aduk rata.',
      'Tambahkan kecap manis dan garam sesuai selera.',
      'Masukkan telur orak-arik dan ayam suwir.',
      'Aduk hingga semua bahan tercampur rata.',
      'Angkat dan sajikan nasi goreng selagi hangat.',
    ],
    cookingTime: '15 menit',
    portion: '2 porsi',
    imageAsset: 'images/nasi-goreng.jpg',
  ),

  ResepModel(
    name: 'Rendang',
    origin: 'Sumatra Barat',
    description:
        'Rendang adalah masakan khas Minangkabau yang berbahan utama daging sapi yang dimasak dengan santan dan bumbu rempah yang kuat.',
    ingredientsList: [
      'Daging sapi',
      'Santan',
      'Cabai',
      'Bawang merah',
      'Bawang putih',
      'Serai',
      'Daun jeruk',
    ],
    steps: [
      'Potong daging sapi sesuai ukuran.',
      'Tumis bumbu halus hingga harum.',
      'Masukkan daging sapi, aduk rata.',
      'Tuang santan secara bertahap sambil terus diaduk.',
      'Tambahkan serai, daun jeruk, dan cabai.',
      'Masak dengan api kecil hingga santan mengental.',
      'Masak hingga daging empuk dan bumbu meresap.',
      'Angkat dan sajikan rendang.',
    ],
    cookingTime: '2 jam',
    portion: '5 porsi',
    imageAsset: 'images/rendang.jpg',
  ),

  ResepModel(
    name: 'Soto Ayam',
    origin: 'Jawa',
    description:
        'Soto Ayam adalah sup tradisional Indonesia yang berbahan dasar kaldu ayam dan aneka rempah-rempah.',
    ingredientsList: [
      'Ayam',
      'Bawang merah',
      'Bawang putih',
      'Serai',
      'Daun salam',
      'Mie',
      'Kecambah',
      'Telur rebus',
    ],
    steps: [
      'Rebus ayam hingga matang, lalu suwir-suwir dagingnya.',
      'Tumis bumbu halus hingga harum.',
      'Tambahkan serai dan daun salam ke dalam tumisan.',
      'Tuang kaldu ayam ke dalam tumisan dan biarkan mendidih.',
      'Masukkan mie dan kecambah ke dalam mangkuk saji.',
      'Siram dengan kuah kaldu dan tambahkan suwiran ayam.',
      'Hidangkan dengan telur rebus dan pelengkap lainnya.',
    ],
    cookingTime: '1 jam',
    portion: '4 porsi',
    imageAsset: 'images/soto-ayam.jpg',
  ),

  ResepModel(
    name: 'Bakso',
    origin: 'Indonesia',
    description:
        'Bakso adalah makanan berbentuk bulat yang terbuat dari campuran daging sapi giling dan tepung tapioka.',
    ingredientsList: [
      'Daging sapi',
      'Tepung tapioka',
      'Garam',
      'Merica',
      'Bawang putih',
    ],
    steps: [
      'Campur daging sapi giling, tepung tapioka, garam, dan merica.',
      'Uleni hingga adonan kalis.',
      'Bentuk adonan menjadi bulatan bakso.',
      'Rebus bakso hingga matang dan mengapung.',
      'Sajikan dengan kuah kaldu panas dan pelengkap lainnya.',
    ],
    cookingTime: '30 menit',
    portion: '4 porsi',
    imageAsset: 'images/bakso.jpg',
  ),

  ResepModel(
    name: 'Sate Ayam',
    origin: 'Madura',
    description:
        'Sate Ayam adalah makanan khas Indonesia berupa potongan daging ayam yang ditusuk dengan lidi dan dipanggang.',
    ingredientsList: [
      'Daging ayam',
      'Kecap manis',
      'Bumbu kacang',
      'Bawang merah',
      'Cabai',
      'Jeruk nipis',
    ],
    steps: [
      'Potong daging ayam kecil-kecil.',
      'Tusuk potongan daging ayam ke tusuk sate.',
      'Lumuri dengan kecap manis dan bumbu kacang.',
      'Panggang sate hingga matang sambil sesekali dibalik.',
      'Sajikan dengan bawang merah, cabai, dan jeruk nipis.',
    ],
    cookingTime: '45 menit',
    portion: '4 porsi',
    imageAsset: 'images/sate-ayam.jpg',
  ),

  ResepModel(
    name: 'Gado-Gado',
    origin: 'Betawi',
    description:
        'Gado-Gado adalah salad khas Indonesia yang terdiri dari sayur-sayuran rebus, lontong, dan saus kacang.',
    ingredientsList: [
      'Kacang tanah',
      'Sayuran rebus',
      'Lontong',
      'Telur rebus',
      'Tahu',
      'Tempe',
    ],
    steps: [
      'Rebus kacang tanah dan haluskan untuk membuat saus.',
      'Rebus sayuran hingga matang.',
      'Potong lontong, tahu, tempe, dan telur rebus.',
      'Susun semua bahan di atas piring saji.',
      'Tuang saus kacang di atasnya sebelum disajikan.',
    ],
    cookingTime: '30 menit',
    portion: '3 porsi',
    imageAsset: 'images/gado-gado.jpg',
  ),

  ResepModel(
    name: 'Pempek',
    origin: 'Palembang',
    description:
        'Pempek adalah makanan khas Palembang berbahan dasar ikan yang diolah bersama tepung sagu dan disajikan dengan kuah cuka.',
    ingredientsList: [
      'Ikan tenggiri',
      'Tepung sagu',
      'Air',
      'Garam',
      'Cuka',
      'Gula merah',
      'Cabai rawit',
      'Bawang putih',
    ],
    steps: [
      'Haluskan daging ikan tenggiri.',
      'Campur dengan tepung sagu, garam, dan air hingga adonan bisa dipulung.',
      'Bentuk adonan menjadi lenjer, kapal selam, atau bentuk lainnya.',
      'Rebus adonan hingga mengapung dan matang.',
      'Siapkan kuah cuka dengan merebus cuka, gula merah, cabai rawit, dan bawang putih.',
      'Sajikan pempek dengan kuah cuka.',
    ],
    cookingTime: '1 jam',
    portion: '4 porsi',
    imageAsset: 'images/pempek.jpg',
  ),

  ResepModel(
    name: 'Tahu Sumedang',
    origin: 'Sumedang',
    description:
        'Tahu Sumedang adalah tahu goreng renyah dari daerah Sumedang yang biasanya disantap dengan cabai rawit.',
    ingredientsList: [
      'Tahu putih',
      'Garam',
      'Tepung terigu',
      'Air',
      'Minyak goreng',
    ],
    steps: [
      'Potong tahu putih sesuai ukuran yang diinginkan.',
      'Campur tepung terigu, garam, dan air hingga menjadi adonan celupan.',
      'Celupkan tahu ke dalam adonan hingga seluruh permukaan terlapisi.',
      'Goreng dalam minyak panas hingga kecokelatan.',
      'Angkat dan tiriskan, sajikan dengan cabai rawit.',
    ],
    cookingTime: '20 menit',
    portion: '10 porsi',
    imageAsset: 'images/tahu-sumedang.jpg',
  ),

  ResepModel(
    name: 'Nasi Uduk',
    origin: 'Betawi',
    description:
        'Nasi Uduk adalah nasi yang dimasak dengan santan dan rempah-rempah khas sehingga menghasilkan aroma dan rasa yang kaya.',
    ingredientsList: [
      'Nasi',
      'Santan',
      'Serai',
      'Daun salam',
      'Daun pandan',
      'Garam',
    ],
    steps: [
      'Cuci beras hingga bersih.',
      'Masak santan dengan serai, daun salam, daun pandan, dan garam.',
      'Tuangkan santan ke dalam beras, lalu kukus hingga matang.',
      'Aduk nasi hingga rata, kukus lagi sebentar.',
      'Sajikan nasi uduk dengan lauk seperti ayam goreng atau tempe goreng.',
    ],
    cookingTime: '45 menit',
    portion: '5 porsi',
    imageAsset: 'images/nasi-uduk.jpg',
  ),
  
  ResepModel(
    name: 'Gudeg',
    origin: 'Yogyakarta',
    description:
        'Gudeg adalah makanan khas Yogyakarta berbahan dasar nangka muda yang dimasak dengan santan dan bumbu rempah.',
    ingredientsList: [
      'Nangka muda',
      'Santan',
      'Daun salam',
      'Gula merah',
      'Bawang merah',
      'Bawang putih',
      'Lengkuas',
    ],
    steps: [
      'Potong nangka muda, lalu cuci hingga bersih.',
      'Rebus nangka dengan daun salam, gula merah, dan lengkuas hingga empuk.',
      'Tuangkan santan, tambahkan bawang merah dan bawang putih yang sudah dihaluskan.',
      'Masak dengan api kecil hingga kuah mengental dan santan meresap.',
      'Sajikan gudeg dengan pelengkap seperti telur pindang dan ayam opor.',
    ],
    cookingTime: '2 jam',
    portion: '4 porsi',
    imageAsset: 'images/gudeg.jpg',
  ),
];
