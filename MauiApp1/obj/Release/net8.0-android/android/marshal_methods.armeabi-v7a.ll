; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [140 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [280 x i32] [
	i32 10166715, ; 0: System.Net.NameResolution.dll => 0x9b21bb => 104
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 49
	i32 42639949, ; 2: System.Threading.Thread => 0x28aa24d => 129
	i32 67008169, ; 3: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 4: Microsoft.Maui.Graphics.dll => 0x44bb714 => 47
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 117
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 72
	i32 195452805, ; 8: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 9: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 10: System.ComponentModel => 0xc38ff48 => 88
	i32 230752869, ; 11: Microsoft.CSharp.dll => 0xdc10265 => 79
	i32 246610117, ; 12: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 115
	i32 280992041, ; 13: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 14: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 336156722, ; 16: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 61
	i32 356389973, ; 18: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 19: System.IO.Pipes => 0x15ebe147 => 98
	i32 374914964, ; 20: System.Transactions.Local => 0x1658bf94 => 131
	i32 379916513, ; 21: System.Threading.Thread.dll => 0x16a510e1 => 129
	i32 385762202, ; 22: System.Memory.dll => 0x16fe439a => 101
	i32 395744057, ; 23: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 24: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 25: System.Collections => 0x1a61054f => 85
	i32 450948140, ; 26: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 60
	i32 459347974, ; 27: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 121
	i32 469710990, ; 28: System.dll => 0x1bff388e => 135
	i32 498788369, ; 29: System.ObjectModel => 0x1dbae811 => 110
	i32 500358224, ; 30: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 31: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 42
	i32 539058512, ; 33: Microsoft.Extensions.Logging => 0x20216150 => 39
	i32 592146354, ; 34: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 58
	i32 627931235, ; 36: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 37: System.Text.Encodings.Web.dll => 0x27787397 => 126
	i32 672442732, ; 38: System.Collections.Concurrent => 0x2814a96c => 81
	i32 683518922, ; 39: System.Net.Security => 0x28bdabca => 107
	i32 688181140, ; 40: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 132
	i32 706645707, ; 42: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 43: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 713568204, ; 44: MauiApp1.dll => 0x2a882fcc => 78
	i32 722857257, ; 45: System.Runtime.Loader.dll => 0x2b15ed29 => 118
	i32 759454413, ; 46: System.Net.Requests => 0x2d445acd => 106
	i32 762598435, ; 47: System.IO.Pipes.dll => 0x2d745423 => 98
	i32 775507847, ; 48: System.IO.Compression => 0x2e394f87 => 97
	i32 777317022, ; 49: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 50: Microsoft.Extensions.Options => 0x2f0980eb => 41
	i32 804715423, ; 51: System.Data.Common => 0x2ff6fb9f => 90
	i32 823281589, ; 52: System.Private.Uri.dll => 0x311247b5 => 111
	i32 830298997, ; 53: System.IO.Compression.Brotli => 0x317d5b75 => 96
	i32 878954865, ; 54: System.Net.Http.Json => 0x3463c971 => 102
	i32 904024072, ; 55: System.ComponentModel.Primitives.dll => 0x35e25008 => 86
	i32 926902833, ; 56: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 49
	i32 967690846, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 61
	i32 975874589, ; 59: System.Xml.XDocument => 0x3a2aaa1d => 134
	i32 992768348, ; 60: System.Collections.dll => 0x3b2c715c => 85
	i32 1012816738, ; 61: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 71
	i32 1019214401, ; 62: System.Drawing => 0x3cbffa41 => 94
	i32 1028951442, ; 63: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 38
	i32 1029334545, ; 64: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 65: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1036536393, ; 66: System.Drawing.Primitives.dll => 0x3dc84a49 => 93
	i32 1044663988, ; 67: System.Linq.Expressions.dll => 0x3e444eb4 => 99
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 63
	i32 1082857460, ; 69: System.ComponentModel.TypeConverter => 0x408b17f4 => 87
	i32 1084122840, ; 70: Xamarin.Kotlin.StdLib => 0x409e66d8 => 76
	i32 1098259244, ; 71: System => 0x41761b2c => 135
	i32 1118262833, ; 72: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 73: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 74: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 68
	i32 1203215381, ; 75: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1234928153, ; 76: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 77: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 78: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 59
	i32 1324164729, ; 79: System.Linq => 0x4eed2679 => 100
	i32 1373134921, ; 80: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 81: Xamarin.AndroidX.SavedState => 0x52114ed3 => 71
	i32 1406073936, ; 82: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 55
	i32 1408764838, ; 83: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 120
	i32 1430672901, ; 84: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1452070440, ; 85: System.Formats.Asn1.dll => 0x568cd628 => 95
	i32 1458022317, ; 86: System.Net.Security.dll => 0x56e7a7ad => 107
	i32 1461004990, ; 87: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 88: System.Collections.Immutable.dll => 0x5718a9ef => 82
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 97
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 52
	i32 1470490898, ; 91: Microsoft.Extensions.Primitives => 0x57a5e912 => 42
	i32 1479771757, ; 92: System.Collections.Immutable => 0x5833866d => 82
	i32 1480492111, ; 93: System.IO.Compression.Brotli.dll => 0x583e844f => 96
	i32 1487239319, ; 94: Microsoft.Win32.Primitives => 0x58a57897 => 80
	i32 1493001747, ; 95: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1511525525, ; 96: MySqlConnector => 0x5a180c95 => 48
	i32 1514721132, ; 97: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 98: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 128
	i32 1551623176, ; 99: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 100: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 65
	i32 1624863272, ; 101: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 74
	i32 1636350590, ; 102: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 57
	i32 1639515021, ; 103: System.Net.Http.dll => 0x61b9038d => 103
	i32 1639986890, ; 104: System.Text.RegularExpressions => 0x61c036ca => 128
	i32 1657153582, ; 105: System.Runtime => 0x62c6282e => 122
	i32 1658251792, ; 106: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 75
	i32 1677501392, ; 107: System.Net.Primitives.dll => 0x63fca3d0 => 105
	i32 1679769178, ; 108: System.Security.Cryptography => 0x641f3e5a => 124
	i32 1729485958, ; 109: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1736233607, ; 110: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 111: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1744735666, ; 112: System.Transactions.Local.dll => 0x67fe8db2 => 131
	i32 1750313021, ; 113: Microsoft.Win32.Primitives.dll => 0x6853a83d => 80
	i32 1763938596, ; 114: System.Diagnostics.TraceSource.dll => 0x69239124 => 92
	i32 1766324549, ; 115: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 72
	i32 1770582343, ; 116: Microsoft.Extensions.Logging.dll => 0x6988f147 => 39
	i32 1780572499, ; 117: Mono.Android.Runtime.dll => 0x6a216153 => 138
	i32 1782862114, ; 118: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 119: Xamarin.AndroidX.Fragment => 0x6a96652d => 60
	i32 1793755602, ; 120: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 121: Xamarin.AndroidX.Loader => 0x6bcd3296 => 65
	i32 1813058853, ; 122: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 76
	i32 1813201214, ; 123: Xamarin.Google.Android.Material => 0x6c13413e => 75
	i32 1818569960, ; 124: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 69
	i32 1824175904, ; 125: System.Text.Encoding.Extensions => 0x6cbab720 => 125
	i32 1824722060, ; 126: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 120
	i32 1828688058, ; 127: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 40
	i32 1842015223, ; 128: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 129: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 130: System.Linq.Expressions => 0x6ec71a65 => 99
	i32 1870277092, ; 131: System.Reflection.Primitives => 0x6f7a29e4 => 116
	i32 1875935024, ; 132: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 133: System.Collections.NonGeneric.dll => 0x71dc7c8b => 83
	i32 1939592360, ; 134: System.Private.Xml.Linq => 0x739bd4a8 => 112
	i32 1968388702, ; 135: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 35
	i32 2003115576, ; 136: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 137: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 63
	i32 2025202353, ; 138: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 139: System.Private.Xml => 0x79eb68ee => 113
	i32 2055257422, ; 140: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 62
	i32 2066184531, ; 141: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 142: System.Diagnostics.TraceSource => 0x7b6f419e => 92
	i32 2079903147, ; 143: System.Runtime.dll => 0x7bf8cdab => 122
	i32 2090596640, ; 144: System.Numerics.Vectors => 0x7c9bf920 => 109
	i32 2127167465, ; 145: System.Console => 0x7ec9ffe9 => 89
	i32 2142473426, ; 146: System.Collections.Specialized => 0x7fb38cd2 => 84
	i32 2159891885, ; 147: Microsoft.Maui => 0x80bd55ad => 45
	i32 2169148018, ; 148: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 149: Microsoft.Extensions.Options.dll => 0x820d22b3 => 41
	i32 2192057212, ; 150: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 40
	i32 2193016926, ; 151: System.ObjectModel.dll => 0x82b6c85e => 110
	i32 2201107256, ; 152: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 77
	i32 2201231467, ; 153: System.Net.Http => 0x8334206b => 103
	i32 2207618523, ; 154: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 155: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2270573516, ; 156: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 157: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 70
	i32 2295906218, ; 158: System.Net.Sockets => 0x88d8bfaa => 108
	i32 2303942373, ; 159: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 160: System.Private.CoreLib.dll => 0x896b7878 => 136
	i32 2353062107, ; 161: System.Net.Primitives => 0x8c40e0db => 105
	i32 2368005991, ; 162: System.Xml.ReaderWriter.dll => 0x8d24e767 => 133
	i32 2371007202, ; 163: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 35
	i32 2395872292, ; 164: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 165: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 166: System.Console.dll => 0x912896e5 => 89
	i32 2458678730, ; 167: System.Net.Sockets.dll => 0x928c75ca => 108
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 137
	i32 2480646305, ; 169: Microsoft.Maui.Controls => 0x93dba8a1 => 43
	i32 2538310050, ; 170: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 115
	i32 2550873716, ; 171: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 172: Microsoft.CSharp => 0x98ba5a04 => 79
	i32 2570120770, ; 173: System.Text.Encodings.Web => 0x9930ee42 => 126
	i32 2585220780, ; 174: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 125
	i32 2593496499, ; 175: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 176: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 77
	i32 2617129537, ; 177: System.Private.Xml.dll => 0x9bfe3a41 => 113
	i32 2620871830, ; 178: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 57
	i32 2626831493, ; 179: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 180: System.Runtime.Loader => 0x9ec4cf01 => 118
	i32 2664396074, ; 181: System.Xml.XDocument.dll => 0x9ecf752a => 134
	i32 2665622720, ; 182: System.Drawing.Primitives => 0x9ee22cc0 => 93
	i32 2676780864, ; 183: System.Data.Common.dll => 0x9f8c6f40 => 90
	i32 2717744543, ; 184: System.Security.Claims => 0xa1fd7d9f => 123
	i32 2724373263, ; 185: System.Runtime.Numerics.dll => 0xa262a30f => 119
	i32 2732626843, ; 186: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 187: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 52
	i32 2752995522, ; 188: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 189: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 44
	i32 2764765095, ; 190: Microsoft.Maui.dll => 0xa4caf7a7 => 45
	i32 2778768386, ; 191: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 73
	i32 2785988530, ; 192: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 193: Microsoft.Maui.Graphics => 0xa7008e0b => 47
	i32 2806116107, ; 194: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 195: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 55
	i32 2831556043, ; 196: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 197: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 73
	i32 2861189240, ; 198: Microsoft.Maui.Essentials => 0xaa8a4878 => 46
	i32 2909740682, ; 199: System.Private.CoreLib => 0xad6f1e8a => 136
	i32 2916838712, ; 200: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 74
	i32 2919462931, ; 201: System.Numerics.Vectors.dll => 0xae037813 => 109
	i32 2959614098, ; 202: System.ComponentModel.dll => 0xb0682092 => 88
	i32 2978675010, ; 203: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 59
	i32 3017953105, ; 204: MauiApp1 => 0xb3e24f51 => 78
	i32 3038032645, ; 205: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 206: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 66
	i32 3059408633, ; 207: Mono.Android.Runtime => 0xb65adef9 => 138
	i32 3059793426, ; 208: System.ComponentModel.Primitives => 0xb660be12 => 86
	i32 3077302341, ; 209: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3099732863, ; 210: System.Security.Claims.dll => 0xb8c22b7f => 123
	i32 3103600923, ; 211: System.Formats.Asn1 => 0xb8fd311b => 95
	i32 3159123045, ; 212: System.Reflection.Primitives.dll => 0xbc4c6465 => 116
	i32 3178803400, ; 213: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 67
	i32 3220365878, ; 214: System.Threading => 0xbff2e236 => 130
	i32 3258312781, ; 215: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3305363605, ; 216: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 217: System.Net.Requests.dll => 0xc5b097e4 => 106
	i32 3317135071, ; 218: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 58
	i32 3346324047, ; 219: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 68
	i32 3357674450, ; 220: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 221: System.Text.Json => 0xc82afec1 => 127
	i32 3362522851, ; 222: Xamarin.AndroidX.Core => 0xc86c06e3 => 56
	i32 3366347497, ; 223: Java.Interop => 0xc8a662e9 => 137
	i32 3374999561, ; 224: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 70
	i32 3381016424, ; 225: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 226: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 37
	i32 3463511458, ; 227: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 228: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 87
	i32 3476120550, ; 229: Mono.Android => 0xcf3163e6 => 139
	i32 3479583265, ; 230: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 231: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 232: System.Text.Json.dll => 0xcfbaacae => 127
	i32 3509114376, ; 233: System.Xml.Linq => 0xd128d608 => 132
	i32 3580758918, ; 234: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 235: System.Linq.dll => 0xd715a361 => 100
	i32 3641597786, ; 236: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 62
	i32 3643446276, ; 237: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 238: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 67
	i32 3657292374, ; 239: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 240: Mono.Android.dll => 0xdae8aa5e => 139
	i32 3697841164, ; 241: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 242: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 66
	i32 3732100267, ; 243: System.Net.NameResolution => 0xde7354ab => 104
	i32 3737834244, ; 244: System.Net.Http.Json.dll => 0xdecad304 => 102
	i32 3748608112, ; 245: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 91
	i32 3786282454, ; 246: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3792276235, ; 247: System.Collections.NonGeneric => 0xe2098b0b => 83
	i32 3802395368, ; 248: System.Collections.Specialized.dll => 0xe2a3f2e8 => 84
	i32 3823082795, ; 249: System.Security.Cryptography.dll => 0xe3df9d2b => 124
	i32 3841636137, ; 250: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 38
	i32 3849253459, ; 251: System.Runtime.InteropServices.dll => 0xe56ef253 => 117
	i32 3889960447, ; 252: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 253: System.Collections.Concurrent.dll => 0xe839deed => 81
	i32 3896760992, ; 254: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 56
	i32 3928044579, ; 255: System.Xml.ReaderWriter => 0xea213423 => 133
	i32 3931092270, ; 256: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 69
	i32 3955647286, ; 257: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 3980434154, ; 258: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 259: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 260: System.Memory => 0xeff49a63 => 101
	i32 4046471985, ; 261: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 44
	i32 4054681211, ; 262: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 114
	i32 4068434129, ; 263: System.Private.Xml.Linq.dll => 0xf27f60d1 => 112
	i32 4073602200, ; 264: System.Threading.dll => 0xf2ce3c98 => 130
	i32 4079385022, ; 265: MySqlConnector.dll => 0xf32679be => 48
	i32 4094352644, ; 266: Microsoft.Maui.Essentials.dll => 0xf40add04 => 46
	i32 4099507663, ; 267: System.Drawing.dll => 0xf45985cf => 94
	i32 4100113165, ; 268: System.Private.Uri => 0xf462c30d => 111
	i32 4102112229, ; 269: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 270: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 271: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 37
	i32 4147896353, ; 272: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 114
	i32 4150914736, ; 273: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4181436372, ; 274: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 121
	i32 4182413190, ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 64
	i32 4213026141, ; 276: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 91
	i32 4271975918, ; 277: Microsoft.Maui.Controls.dll => 0xfea12dee => 43
	i32 4274976490, ; 278: System.Runtime.Numerics => 0xfecef6ea => 119
	i32 4292120959 ; 279: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 64
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [280 x i32] [
	i32 104, ; 0
	i32 49, ; 1
	i32 129, ; 2
	i32 33, ; 3
	i32 47, ; 4
	i32 117, ; 5
	i32 54, ; 6
	i32 72, ; 7
	i32 30, ; 8
	i32 31, ; 9
	i32 88, ; 10
	i32 79, ; 11
	i32 115, ; 12
	i32 2, ; 13
	i32 30, ; 14
	i32 50, ; 15
	i32 15, ; 16
	i32 61, ; 17
	i32 14, ; 18
	i32 98, ; 19
	i32 131, ; 20
	i32 129, ; 21
	i32 101, ; 22
	i32 34, ; 23
	i32 26, ; 24
	i32 85, ; 25
	i32 60, ; 26
	i32 121, ; 27
	i32 135, ; 28
	i32 110, ; 29
	i32 13, ; 30
	i32 7, ; 31
	i32 42, ; 32
	i32 39, ; 33
	i32 21, ; 34
	i32 58, ; 35
	i32 19, ; 36
	i32 126, ; 37
	i32 81, ; 38
	i32 107, ; 39
	i32 1, ; 40
	i32 132, ; 41
	i32 16, ; 42
	i32 4, ; 43
	i32 78, ; 44
	i32 118, ; 45
	i32 106, ; 46
	i32 98, ; 47
	i32 97, ; 48
	i32 25, ; 49
	i32 41, ; 50
	i32 90, ; 51
	i32 111, ; 52
	i32 96, ; 53
	i32 102, ; 54
	i32 86, ; 55
	i32 28, ; 56
	i32 49, ; 57
	i32 61, ; 58
	i32 134, ; 59
	i32 85, ; 60
	i32 71, ; 61
	i32 94, ; 62
	i32 38, ; 63
	i32 3, ; 64
	i32 51, ; 65
	i32 93, ; 66
	i32 99, ; 67
	i32 63, ; 68
	i32 87, ; 69
	i32 76, ; 70
	i32 135, ; 71
	i32 16, ; 72
	i32 22, ; 73
	i32 68, ; 74
	i32 20, ; 75
	i32 18, ; 76
	i32 2, ; 77
	i32 59, ; 78
	i32 100, ; 79
	i32 32, ; 80
	i32 71, ; 81
	i32 55, ; 82
	i32 120, ; 83
	i32 0, ; 84
	i32 95, ; 85
	i32 107, ; 86
	i32 6, ; 87
	i32 82, ; 88
	i32 97, ; 89
	i32 52, ; 90
	i32 42, ; 91
	i32 82, ; 92
	i32 96, ; 93
	i32 80, ; 94
	i32 10, ; 95
	i32 48, ; 96
	i32 5, ; 97
	i32 128, ; 98
	i32 25, ; 99
	i32 65, ; 100
	i32 74, ; 101
	i32 57, ; 102
	i32 103, ; 103
	i32 128, ; 104
	i32 122, ; 105
	i32 75, ; 106
	i32 105, ; 107
	i32 124, ; 108
	i32 53, ; 109
	i32 23, ; 110
	i32 1, ; 111
	i32 131, ; 112
	i32 80, ; 113
	i32 92, ; 114
	i32 72, ; 115
	i32 39, ; 116
	i32 138, ; 117
	i32 17, ; 118
	i32 60, ; 119
	i32 9, ; 120
	i32 65, ; 121
	i32 76, ; 122
	i32 75, ; 123
	i32 69, ; 124
	i32 125, ; 125
	i32 120, ; 126
	i32 40, ; 127
	i32 29, ; 128
	i32 26, ; 129
	i32 99, ; 130
	i32 116, ; 131
	i32 8, ; 132
	i32 83, ; 133
	i32 112, ; 134
	i32 35, ; 135
	i32 5, ; 136
	i32 63, ; 137
	i32 0, ; 138
	i32 113, ; 139
	i32 62, ; 140
	i32 4, ; 141
	i32 92, ; 142
	i32 122, ; 143
	i32 109, ; 144
	i32 89, ; 145
	i32 84, ; 146
	i32 45, ; 147
	i32 12, ; 148
	i32 41, ; 149
	i32 40, ; 150
	i32 110, ; 151
	i32 77, ; 152
	i32 103, ; 153
	i32 14, ; 154
	i32 36, ; 155
	i32 8, ; 156
	i32 70, ; 157
	i32 108, ; 158
	i32 18, ; 159
	i32 136, ; 160
	i32 105, ; 161
	i32 133, ; 162
	i32 35, ; 163
	i32 13, ; 164
	i32 10, ; 165
	i32 89, ; 166
	i32 108, ; 167
	i32 137, ; 168
	i32 43, ; 169
	i32 115, ; 170
	i32 11, ; 171
	i32 79, ; 172
	i32 126, ; 173
	i32 125, ; 174
	i32 20, ; 175
	i32 77, ; 176
	i32 113, ; 177
	i32 57, ; 178
	i32 15, ; 179
	i32 118, ; 180
	i32 134, ; 181
	i32 93, ; 182
	i32 90, ; 183
	i32 123, ; 184
	i32 119, ; 185
	i32 50, ; 186
	i32 52, ; 187
	i32 21, ; 188
	i32 44, ; 189
	i32 45, ; 190
	i32 73, ; 191
	i32 27, ; 192
	i32 47, ; 193
	i32 6, ; 194
	i32 55, ; 195
	i32 19, ; 196
	i32 73, ; 197
	i32 46, ; 198
	i32 136, ; 199
	i32 74, ; 200
	i32 109, ; 201
	i32 88, ; 202
	i32 59, ; 203
	i32 78, ; 204
	i32 34, ; 205
	i32 66, ; 206
	i32 138, ; 207
	i32 86, ; 208
	i32 12, ; 209
	i32 123, ; 210
	i32 95, ; 211
	i32 116, ; 212
	i32 67, ; 213
	i32 130, ; 214
	i32 53, ; 215
	i32 7, ; 216
	i32 106, ; 217
	i32 58, ; 218
	i32 68, ; 219
	i32 24, ; 220
	i32 127, ; 221
	i32 56, ; 222
	i32 137, ; 223
	i32 70, ; 224
	i32 3, ; 225
	i32 37, ; 226
	i32 11, ; 227
	i32 87, ; 228
	i32 139, ; 229
	i32 24, ; 230
	i32 23, ; 231
	i32 127, ; 232
	i32 132, ; 233
	i32 31, ; 234
	i32 100, ; 235
	i32 62, ; 236
	i32 28, ; 237
	i32 67, ; 238
	i32 36, ; 239
	i32 139, ; 240
	i32 33, ; 241
	i32 66, ; 242
	i32 104, ; 243
	i32 102, ; 244
	i32 91, ; 245
	i32 54, ; 246
	i32 83, ; 247
	i32 84, ; 248
	i32 124, ; 249
	i32 38, ; 250
	i32 117, ; 251
	i32 32, ; 252
	i32 81, ; 253
	i32 56, ; 254
	i32 133, ; 255
	i32 69, ; 256
	i32 51, ; 257
	i32 27, ; 258
	i32 9, ; 259
	i32 101, ; 260
	i32 44, ; 261
	i32 114, ; 262
	i32 112, ; 263
	i32 130, ; 264
	i32 48, ; 265
	i32 46, ; 266
	i32 94, ; 267
	i32 111, ; 268
	i32 22, ; 269
	i32 17, ; 270
	i32 37, ; 271
	i32 114, ; 272
	i32 29, ; 273
	i32 121, ; 274
	i32 64, ; 275
	i32 91, ; 276
	i32 43, ; 277
	i32 119, ; 278
	i32 64 ; 279
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
