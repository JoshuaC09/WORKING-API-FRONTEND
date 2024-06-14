; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [140 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [280 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 42
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 139
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 46
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 99
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 54
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 71
	i64 545109961164950392, ; 6: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 116
	i64 750875890346172408, ; 8: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 129
	i64 799765834175365804, ; 9: System.ComponentModel.dll => 0xb1956c9f18442ac => 88
	i64 849051935479314978, ; 10: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 59
	i64 1010599046655515943, ; 12: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 116
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 75
	i64 1121665720830085036, ; 14: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 15: System.Drawing.dll => 0x119be62002c19ebb => 94
	i64 1369545283391376210, ; 16: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 67
	i64 1476839205573959279, ; 17: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 105
	i64 1486715745332614827, ; 18: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 43
	i64 1513467482682125403, ; 19: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 138
	i64 1537168428375924959, ; 20: System.Threading.Thread.dll => 0x15551e8a954ae0df => 129
	i64 1556147632182429976, ; 21: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 52
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 64
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 49
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 101
	i64 1767386781656293639, ; 26: System.Private.Uri.dll => 0x188704e9f5582107 => 111
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1835311033149317475, ; 28: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 71
	i64 1875417405349196092, ; 30: System.Drawing.Primitives => 0x1a06d2319b6c713c => 93
	i64 1881198190668717030, ; 31: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 32: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 44
	i64 1959996714666907089, ; 33: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 63
	i64 1983698669889758782, ; 35: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 36: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 37: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 93
	i64 2133195048986300728, ; 38: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 49
	i64 2262844636196693701, ; 39: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 59
	i64 2287834202362508563, ; 40: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 81
	i64 2302323944321350744, ; 41: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 62
	i64 2335503487726329082, ; 43: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 126
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 55
	i64 2497223385847772520, ; 45: System.Runtime => 0x22a7eb7046413568 => 122
	i64 2547086958574651984, ; 46: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 50
	i64 2602673633151553063, ; 47: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2632269733008246987, ; 48: System.Net.NameResolution => 0x2487b36034f808cb => 104
	i64 2656907746661064104, ; 49: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 37
	i64 2662981627730767622, ; 50: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 51: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 75
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 61
	i64 3311221304742556517, ; 54: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 109
	i64 3321269044039068031, ; 55: MauiApp1 => 0x2e1784994573297f => 78
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 119
	i64 3328853167529574890, ; 57: System.Net.Sockets.dll => 0x2e327651a008c1ea => 108
	i64 3344514922410554693, ; 58: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 77
	i64 3429672777697402584, ; 59: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 46
	i64 3494946837667399002, ; 60: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 35
	i64 3522470458906976663, ; 61: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 72
	i64 3551103847008531295, ; 62: System.Private.CoreLib.dll => 0x31480e226177735f => 136
	i64 3567343442040498961, ; 63: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 64: System.Runtime.dll => 0x319037675df7e556 => 122
	i64 3638003163729360188, ; 65: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 36
	i64 3647754201059316852, ; 66: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 133
	i64 3655542548057982301, ; 67: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 35
	i64 3727469159507183293, ; 68: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 70
	i64 3869221888984012293, ; 69: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 39
	i64 3890352374528606784, ; 70: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 44
	i64 3933965368022646939, ; 71: System.Net.Requests => 0x369840a8bfadc09b => 106
	i64 3966267475168208030, ; 72: System.Memory => 0x370b03412596249e => 101
	i64 4009997192427317104, ; 73: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 121
	i64 4073500526318903918, ; 74: System.Private.Xml.dll => 0x3887fb25779ae26e => 113
	i64 4120493066591692148, ; 75: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 76: System.ComponentModel => 0x39a7562737acb67e => 88
	i64 4168469861834746866, ; 77: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 123
	i64 4187479170553454871, ; 78: System.Linq.Expressions => 0x3a1cea1e912fa117 => 99
	i64 4205801962323029395, ; 79: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 87
	i64 4356591372459378815, ; 80: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4373617458794931033, ; 81: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 98
	i64 4679594760078841447, ; 82: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 83: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 50
	i64 4795410492532947900, ; 84: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 72
	i64 4809057822547766521, ; 85: System.Drawing => 0x42bd349c3145ecf9 => 94
	i64 4814660307502931973, ; 86: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 104
	i64 4853321196694829351, ; 87: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 118
	i64 5103417709280584325, ; 88: System.Collections.Specialized => 0x46d2fb5e161b6285 => 84
	i64 5182934613077526976, ; 89: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 84
	i64 5290786973231294105, ; 90: System.Runtime.Loader => 0x496ca6b869b72699 => 118
	i64 5471532531798518949, ; 91: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 92: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 93: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 96
	i64 5573260873512690141, ; 94: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 124
	i64 5692067934154308417, ; 95: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 74
	i64 5979151488806146654, ; 96: System.Formats.Asn1 => 0x52fa3699a489d25e => 95
	i64 6068057819846744445, ; 97: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6200764641006662125, ; 98: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 99: System.Text.Json.dll => 0x565a67a0ffe264a7 => 127
	i64 6251069312384999852, ; 100: System.Transactions.Local => 0x56c0426b870da1ac => 131
	i64 6284145129771520194, ; 101: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 114
	i64 6357457916754632952, ; 102: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 34
	i64 6401687960814735282, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 62
	i64 6478287442656530074, ; 104: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6548213210057960872, ; 105: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 58
	i64 6560151584539558821, ; 106: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 41
	i64 6743165466166707109, ; 107: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 108: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 109: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 92
	i64 6814185388980153342, ; 110: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 134
	i64 6876862101832370452, ; 111: System.Xml.Linq => 0x5f6f85a57d108914 => 132
	i64 6894844156784520562, ; 112: System.Numerics.Vectors => 0x5faf683aead1ad72 => 109
	i64 7083547580668757502, ; 113: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 112
	i64 7220009545223068405, ; 114: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 115: System.Linq => 0x64e71ccf51a90a5a => 100
	i64 7316205155833392065, ; 116: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 80
	i64 7377312882064240630, ; 117: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 87
	i64 7488575175965059935, ; 118: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 132
	i64 7489048572193775167, ; 119: System.ObjectModel => 0x67ee71ff6b419e3f => 110
	i64 7654504624184590948, ; 120: System.Net.Http => 0x6a3a4366801b8264 => 103
	i64 7702918024138448955, ; 121: MySqlConnector => 0x6ae6432192b9e03b => 48
	i64 7708790323521193081, ; 122: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 123: System.Private.CoreLib => 0x6b0ff375198b9c17 => 136
	i64 7735176074855944702, ; 124: Microsoft.CSharp => 0x6b58dda848e391fe => 79
	i64 7735352534559001595, ; 125: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 76
	i64 7836164640616011524, ; 126: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 52
	i64 8064050204834738623, ; 127: System.Collections.dll => 0x6fe942efa61731bf => 85
	i64 8083354569033831015, ; 128: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 61
	i64 8085230611270010360, ; 129: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 102
	i64 8087206902342787202, ; 130: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 91
	i64 8167236081217502503, ; 131: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 137
	i64 8185542183669246576, ; 132: System.Collections => 0x7198e33f4794aa70 => 85
	i64 8246048515196606205, ; 133: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 47
	i64 8368701292315763008, ; 134: System.Security.Cryptography => 0x7423997c6fd56140 => 124
	i64 8400357532724379117, ; 135: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 69
	i64 8410671156615598628, ; 136: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 115
	i64 8518412311883997971, ; 137: System.Collections.Immutable => 0x76377add7c28e313 => 82
	i64 8563666267364444763, ; 138: System.Private.Uri => 0x76d841191140ca5b => 111
	i64 8614108721271900878, ; 139: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 140: Java.Interop => 0x77b654e585b55834 => 137
	i64 8638972117149407195, ; 141: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 79
	i64 8639588376636138208, ; 142: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 68
	i64 8677882282824630478, ; 143: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 144: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 91
	i64 8941376889969657626, ; 145: System.Xml.XDocument => 0x7c1626e87187471a => 134
	i64 9045785047181495996, ; 146: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 147: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 74
	i64 9324707631942237306, ; 148: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9659729154652888475, ; 149: System.Text.RegularExpressions => 0x860e407c9991dd9b => 128
	i64 9678050649315576968, ; 150: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 55
	i64 9702891218465930390, ; 151: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 83
	i64 9808709177481450983, ; 152: Mono.Android.dll => 0x881f890734e555e7 => 139
	i64 9956195530459977388, ; 153: Microsoft.Maui => 0x8a2b8315b36616ac => 45
	i64 9991543690424095600, ; 154: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 155: System.Net.Http.dll => 0x8b50e941206af13b => 103
	i64 10051358222726253779, ; 156: System.Private.Xml => 0x8b7d990c97ccccd3 => 113
	i64 10092835686693276772, ; 157: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 43
	i64 10143853363526200146, ; 158: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10229024438826829339, ; 159: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 58
	i64 10245369515835430794, ; 160: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 115
	i64 10364469296367737616, ; 161: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 114
	i64 10406448008575299332, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 77
	i64 10430153318873392755, ; 163: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 56
	i64 10506226065143327199, ; 164: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10670374202010151210, ; 165: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 80
	i64 10785150219063592792, ; 166: System.Net.Primitives => 0x95ac8cfb68830758 => 105
	i64 11002576679268595294, ; 167: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 40
	i64 11009005086950030778, ; 168: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 45
	i64 11103970607964515343, ; 169: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 170: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 73
	i64 11220793807500858938, ; 171: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 172: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 41
	i64 11340910727871153756, ; 173: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 57
	i64 11485890710487134646, ; 174: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 117
	i64 11518296021396496455, ; 175: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 73
	i64 11530571088791430846, ; 177: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 39
	i64 11705530742807338875, ; 178: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 12145679461940342714, ; 179: System.Text.Json => 0xa88e1f1ebcb62fba => 127
	i64 12201331334810686224, ; 180: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 121
	i64 12269460666702402136, ; 181: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 82
	i64 12451044538927396471, ; 182: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 60
	i64 12466513435562512481, ; 183: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 65
	i64 12475113361194491050, ; 184: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 34
	i64 12517810545449516888, ; 185: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 92
	i64 12538491095302438457, ; 186: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 53
	i64 12550732019250633519, ; 187: System.IO.Compression => 0xae2d28465e8e1b2f => 97
	i64 12551451704392164662, ; 188: MySqlConnector.dll => 0xae2fb6d31fc42536 => 48
	i64 12681088699309157496, ; 189: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 190: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 54
	i64 12708922737231849740, ; 191: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 125
	i64 12823819093633476069, ; 192: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 193: System.IO.Pipes => 0xb21ff0d5d6c0740f => 98
	i64 12843321153144804894, ; 194: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 42
	i64 13056519019444193772, ; 195: MauiApp1.dll => 0xb53212df2d1a49ec => 78
	i64 13068258254871114833, ; 196: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 120
	i64 13221551921002590604, ; 197: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 198: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 199: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 138
	i64 13381594904270902445, ; 200: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 201: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 76
	i64 13467053111158216594, ; 202: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 203: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 204: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 205: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 70
	i64 13717397318615465333, ; 206: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 86
	i64 13755568601956062840, ; 207: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 208: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 209: System.Console.dll => 0xc0a5f3cade5c6774 => 89
	i64 13959074834287824816, ; 210: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 60
	i64 14100563506285742564, ; 211: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 212: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 53
	i64 14125464355221830302, ; 213: System.Threading.dll => 0xc407bafdbc707a9e => 130
	i64 14254574811015963973, ; 214: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 125
	i64 14461014870687870182, ; 215: System.Net.Requests.dll => 0xc8afd8683afdece6 => 106
	i64 14464374589798375073, ; 216: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 217: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 218: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 126
	i64 14622043554576106986, ; 219: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 120
	i64 14669215534098758659, ; 220: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 37
	i64 14705122255218365489, ; 221: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 222: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14832630590065248058, ; 223: System.Security.Claims => 0xcdd816ef5d6e873a => 123
	i64 14852515768018889994, ; 224: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 57
	i64 14892012299694389861, ; 225: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 226: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 227: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 38
	i64 14987728460634540364, ; 228: System.IO.Compression.dll => 0xcfff1ba06622494c => 97
	i64 15015154896917945444, ; 229: System.Net.Security.dll => 0xd0608bd33642dc64 => 107
	i64 15024878362326791334, ; 230: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 102
	i64 15076659072870671916, ; 231: System.ObjectModel.dll => 0xd13b0d8c1620662c => 110
	i64 15111608613780139878, ; 232: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 233: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 96
	i64 15133485256822086103, ; 234: System.Linq.dll => 0xd204f0a9127dd9d7 => 100
	i64 15227001540531775957, ; 235: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 36
	i64 15370334346939861994, ; 236: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 56
	i64 15391712275433856905, ; 237: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 38
	i64 15527772828719725935, ; 238: System.Console => 0xd77dbb1e38cd3d6f => 89
	i64 15536481058354060254, ; 239: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15557562860424774966, ; 240: System.Net.Sockets => 0xd7e790fe7a6dc536 => 108
	i64 15582737692548360875, ; 241: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 64
	i64 15609085926864131306, ; 242: System.dll => 0xd89e9cf3334914ea => 135
	i64 15661133872274321916, ; 243: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 133
	i64 15664356999916475676, ; 244: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 245: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 246: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 16154507427712707110, ; 247: System => 0xe03056ea4e39aa26 => 135
	i64 16219561732052121626, ; 248: System.Net.Security => 0xe1177575db7c781a => 107
	i64 16288847719894691167, ; 249: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 250: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 40
	i64 16649148416072044166, ; 251: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 47
	i64 16677317093839702854, ; 252: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 69
	i64 16856067890322379635, ; 253: System.Data.Common.dll => 0xe9ecc87060889373 => 90
	i64 16890310621557459193, ; 254: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 128
	i64 16942731696432749159, ; 255: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 256: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 67
	i64 17008137082415910100, ; 257: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 83
	i64 17031351772568316411, ; 258: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 66
	i64 17062143951396181894, ; 259: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 86
	i64 17089008752050867324, ; 260: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17230721278011714856, ; 261: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 112
	i64 17234219099804750107, ; 262: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 131
	i64 17260702271250283638, ; 263: System.Data.Common => 0xef8a5543bba6bc76 => 90
	i64 17342750010158924305, ; 264: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 265: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 266: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 267: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 268: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 269: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 65
	i64 17710060891934109755, ; 270: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 63
	i64 17712670374920797664, ; 271: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 117
	i64 17777860260071588075, ; 272: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 119
	i64 18025913125965088385, ; 273: System.Threading => 0xfa28e87b91334681 => 130
	i64 18099568558057551825, ; 274: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 275: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 66
	i64 18146411883821974900, ; 276: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 95
	i64 18245806341561545090, ; 277: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 81
	i64 18305135509493619199, ; 278: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 68
	i64 18324163916253801303 ; 279: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [280 x i32] [
	i32 42, ; 0
	i32 139, ; 1
	i32 46, ; 2
	i32 99, ; 3
	i32 54, ; 4
	i32 71, ; 5
	i32 7, ; 6
	i32 116, ; 7
	i32 129, ; 8
	i32 88, ; 9
	i32 10, ; 10
	i32 59, ; 11
	i32 116, ; 12
	i32 75, ; 13
	i32 18, ; 14
	i32 94, ; 15
	i32 67, ; 16
	i32 105, ; 17
	i32 43, ; 18
	i32 138, ; 19
	i32 129, ; 20
	i32 16, ; 21
	i32 52, ; 22
	i32 64, ; 23
	i32 49, ; 24
	i32 101, ; 25
	i32 111, ; 26
	i32 51, ; 27
	i32 6, ; 28
	i32 71, ; 29
	i32 93, ; 30
	i32 28, ; 31
	i32 44, ; 32
	i32 28, ; 33
	i32 63, ; 34
	i32 2, ; 35
	i32 20, ; 36
	i32 93, ; 37
	i32 49, ; 38
	i32 59, ; 39
	i32 81, ; 40
	i32 24, ; 41
	i32 62, ; 42
	i32 126, ; 43
	i32 55, ; 44
	i32 122, ; 45
	i32 50, ; 46
	i32 27, ; 47
	i32 104, ; 48
	i32 37, ; 49
	i32 2, ; 50
	i32 7, ; 51
	i32 75, ; 52
	i32 61, ; 53
	i32 109, ; 54
	i32 78, ; 55
	i32 119, ; 56
	i32 108, ; 57
	i32 77, ; 58
	i32 46, ; 59
	i32 35, ; 60
	i32 72, ; 61
	i32 136, ; 62
	i32 22, ; 63
	i32 122, ; 64
	i32 36, ; 65
	i32 133, ; 66
	i32 35, ; 67
	i32 70, ; 68
	i32 39, ; 69
	i32 44, ; 70
	i32 106, ; 71
	i32 101, ; 72
	i32 121, ; 73
	i32 113, ; 74
	i32 33, ; 75
	i32 88, ; 76
	i32 123, ; 77
	i32 99, ; 78
	i32 87, ; 79
	i32 30, ; 80
	i32 98, ; 81
	i32 0, ; 82
	i32 50, ; 83
	i32 72, ; 84
	i32 94, ; 85
	i32 104, ; 86
	i32 118, ; 87
	i32 84, ; 88
	i32 84, ; 89
	i32 118, ; 90
	i32 26, ; 91
	i32 29, ; 92
	i32 96, ; 93
	i32 124, ; 94
	i32 74, ; 95
	i32 95, ; 96
	i32 23, ; 97
	i32 23, ; 98
	i32 127, ; 99
	i32 131, ; 100
	i32 114, ; 101
	i32 34, ; 102
	i32 62, ; 103
	i32 11, ; 104
	i32 58, ; 105
	i32 41, ; 106
	i32 19, ; 107
	i32 22, ; 108
	i32 92, ; 109
	i32 134, ; 110
	i32 132, ; 111
	i32 109, ; 112
	i32 112, ; 113
	i32 26, ; 114
	i32 100, ; 115
	i32 80, ; 116
	i32 87, ; 117
	i32 132, ; 118
	i32 110, ; 119
	i32 103, ; 120
	i32 48, ; 121
	i32 17, ; 122
	i32 136, ; 123
	i32 79, ; 124
	i32 76, ; 125
	i32 52, ; 126
	i32 85, ; 127
	i32 61, ; 128
	i32 102, ; 129
	i32 91, ; 130
	i32 137, ; 131
	i32 85, ; 132
	i32 47, ; 133
	i32 124, ; 134
	i32 69, ; 135
	i32 115, ; 136
	i32 82, ; 137
	i32 111, ; 138
	i32 21, ; 139
	i32 137, ; 140
	i32 79, ; 141
	i32 68, ; 142
	i32 21, ; 143
	i32 91, ; 144
	i32 134, ; 145
	i32 31, ; 146
	i32 74, ; 147
	i32 51, ; 148
	i32 128, ; 149
	i32 55, ; 150
	i32 83, ; 151
	i32 139, ; 152
	i32 45, ; 153
	i32 6, ; 154
	i32 103, ; 155
	i32 113, ; 156
	i32 43, ; 157
	i32 3, ; 158
	i32 58, ; 159
	i32 115, ; 160
	i32 114, ; 161
	i32 77, ; 162
	i32 56, ; 163
	i32 1, ; 164
	i32 80, ; 165
	i32 105, ; 166
	i32 40, ; 167
	i32 45, ; 168
	i32 12, ; 169
	i32 73, ; 170
	i32 15, ; 171
	i32 41, ; 172
	i32 57, ; 173
	i32 117, ; 174
	i32 13, ; 175
	i32 73, ; 176
	i32 39, ; 177
	i32 9, ; 178
	i32 127, ; 179
	i32 121, ; 180
	i32 82, ; 181
	i32 60, ; 182
	i32 65, ; 183
	i32 34, ; 184
	i32 92, ; 185
	i32 53, ; 186
	i32 97, ; 187
	i32 48, ; 188
	i32 14, ; 189
	i32 54, ; 190
	i32 125, ; 191
	i32 27, ; 192
	i32 98, ; 193
	i32 42, ; 194
	i32 78, ; 195
	i32 120, ; 196
	i32 1, ; 197
	i32 15, ; 198
	i32 138, ; 199
	i32 9, ; 200
	i32 76, ; 201
	i32 29, ; 202
	i32 30, ; 203
	i32 13, ; 204
	i32 70, ; 205
	i32 86, ; 206
	i32 8, ; 207
	i32 11, ; 208
	i32 89, ; 209
	i32 60, ; 210
	i32 3, ; 211
	i32 53, ; 212
	i32 130, ; 213
	i32 125, ; 214
	i32 106, ; 215
	i32 24, ; 216
	i32 5, ; 217
	i32 126, ; 218
	i32 120, ; 219
	i32 37, ; 220
	i32 16, ; 221
	i32 32, ; 222
	i32 123, ; 223
	i32 57, ; 224
	i32 33, ; 225
	i32 0, ; 226
	i32 38, ; 227
	i32 97, ; 228
	i32 107, ; 229
	i32 102, ; 230
	i32 110, ; 231
	i32 17, ; 232
	i32 96, ; 233
	i32 100, ; 234
	i32 36, ; 235
	i32 56, ; 236
	i32 38, ; 237
	i32 89, ; 238
	i32 4, ; 239
	i32 108, ; 240
	i32 64, ; 241
	i32 135, ; 242
	i32 133, ; 243
	i32 4, ; 244
	i32 12, ; 245
	i32 5, ; 246
	i32 135, ; 247
	i32 107, ; 248
	i32 18, ; 249
	i32 40, ; 250
	i32 47, ; 251
	i32 69, ; 252
	i32 90, ; 253
	i32 128, ; 254
	i32 25, ; 255
	i32 67, ; 256
	i32 83, ; 257
	i32 66, ; 258
	i32 86, ; 259
	i32 32, ; 260
	i32 112, ; 261
	i32 131, ; 262
	i32 90, ; 263
	i32 10, ; 264
	i32 25, ; 265
	i32 8, ; 266
	i32 20, ; 267
	i32 31, ; 268
	i32 65, ; 269
	i32 63, ; 270
	i32 117, ; 271
	i32 119, ; 272
	i32 130, ; 273
	i32 19, ; 274
	i32 66, ; 275
	i32 95, ; 276
	i32 81, ; 277
	i32 68, ; 278
	i32 14 ; 279
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
