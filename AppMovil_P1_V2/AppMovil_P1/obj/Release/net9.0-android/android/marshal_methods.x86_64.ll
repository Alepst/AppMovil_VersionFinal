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

@assembly_image_cache = dso_local local_unnamed_addr global [154 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [462 x i64] [
	i64 u0x0071cf2d27b7d61e, ; 0: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 84
	i64 u0x02123411c4e01926, ; 1: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 80
	i64 u0x02abedc11addc1ed, ; 2: lib_Mono.Android.Runtime.dll.so => 152
	i64 u0x032267b2a94db371, ; 3: lib_Xamarin.AndroidX.AppCompat.dll.so => 63
	i64 u0x0363ac97a4cb84e6, ; 4: SQLitePCLRaw.provider.e_sqlite3.dll => 61
	i64 u0x043032f1d071fae0, ; 5: ru/Microsoft.Maui.Controls.resources => 24
	i64 u0x044440a55165631e, ; 6: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i64 u0x046eb1581a80c6b0, ; 7: vi/Microsoft.Maui.Controls.resources => 30
	i64 u0x0517ef04e06e9f76, ; 8: System.Net.Primitives => 119
	i64 u0x051a3be159e4ef99, ; 9: Xamarin.GooglePlayServices.Tasks => 92
	i64 u0x0565d18c6da3de38, ; 10: Xamarin.AndroidX.RecyclerView => 82
	i64 u0x0581db89237110e9, ; 11: lib_System.Collections.dll.so => 101
	i64 u0x05989cb940b225a9, ; 12: Microsoft.Maui.dll => 48
	i64 u0x06076b5d2b581f08, ; 13: zh-HK/Microsoft.Maui.Controls.resources => 31
	i64 u0x06388ffe9f6c161a, ; 14: System.Xml.Linq.dll => 144
	i64 u0x0680a433c781bb3d, ; 15: Xamarin.AndroidX.Collection.Jvm => 66
	i64 u0x07469f2eecce9e85, ; 16: mscorlib.dll => 148
	i64 u0x07c57877c7ba78ad, ; 17: ru/Microsoft.Maui.Controls.resources.dll => 24
	i64 u0x07dcdc7460a0c5e4, ; 18: System.Collections.NonGeneric => 99
	i64 u0x08a7c865576bbde7, ; 19: System.Reflection.Primitives => 128
	i64 u0x08f3c9788ee2153c, ; 20: Xamarin.AndroidX.DrawerLayout => 71
	i64 u0x0919c28b89381a0b, ; 21: lib_Microsoft.Extensions.Options.dll.so => 44
	i64 u0x092266563089ae3e, ; 22: lib_System.Collections.NonGeneric.dll.so => 99
	i64 u0x098b50f911ccea8d, ; 23: lib_Xamarin.GooglePlayServices.Basement.dll.so => 90
	i64 u0x09d144a7e214d457, ; 24: System.Security.Cryptography => 136
	i64 u0x0b3b632c3bbee20c, ; 25: sk/Microsoft.Maui.Controls.resources => 25
	i64 u0x0b6aff547b84fbe9, ; 26: Xamarin.KotlinX.Serialization.Core.Jvm => 95
	i64 u0x0be2e1f8ce4064ed, ; 27: Xamarin.AndroidX.ViewPager => 86
	i64 u0x0c3ca6cc978e2aae, ; 28: pt-BR/Microsoft.Maui.Controls.resources => 21
	i64 u0x0c59ad9fbbd43abe, ; 29: Mono.Android => 153
	i64 u0x0c7790f60165fc06, ; 30: lib_Microsoft.Maui.Essentials.dll.so => 49
	i64 u0x0ec01b05613190b9, ; 31: SkiaSharp.Views.Android.dll => 54
	i64 u0x102a31b45304b1da, ; 32: Xamarin.AndroidX.CustomView => 70
	i64 u0x10f6cfcbcf801616, ; 33: System.IO.Compression.Brotli => 112
	i64 u0x123639456fb056da, ; 34: System.Reflection.Emit.Lightweight.dll => 127
	i64 u0x125b7f94acb989db, ; 35: Xamarin.AndroidX.RecyclerView.dll => 82
	i64 u0x13a01de0cbc3f06c, ; 36: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i64 u0x13f1e5e209e91af4, ; 37: lib_Java.Interop.dll.so => 151
	i64 u0x13f1e880c25d96d1, ; 38: he/Microsoft.Maui.Controls.resources => 9
	i64 u0x143d8ea60a6a4011, ; 39: Microsoft.Extensions.DependencyInjection.Abstractions => 41
	i64 u0x17125c9a85b4929f, ; 40: lib_netstandard.dll.so => 149
	i64 u0x17b56e25558a5d36, ; 41: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i64 u0x17f9358913beb16a, ; 42: System.Text.Encodings.Web => 138
	i64 u0x18402a709e357f3b, ; 43: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 95
	i64 u0x18f0ce884e87d89a, ; 44: nb/Microsoft.Maui.Controls.resources.dll => 18
	i64 u0x1a91866a319e9259, ; 45: lib_System.Collections.Concurrent.dll.so => 98
	i64 u0x1aac34d1917ba5d3, ; 46: lib_System.dll.so => 147
	i64 u0x1aad60783ffa3e5b, ; 47: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i64 u0x1c753b5ff15bce1b, ; 48: Mono.Android.Runtime.dll => 152
	i64 u0x1e3d87657e9659bc, ; 49: Xamarin.AndroidX.Navigation.UI => 81
	i64 u0x1e71143913d56c10, ; 50: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i64 u0x1ed8fcce5e9b50a0, ; 51: Microsoft.Extensions.Options.dll => 44
	i64 u0x209375905fcc1bad, ; 52: lib_System.IO.Compression.Brotli.dll.so => 112
	i64 u0x2174319c0d835bc9, ; 53: System.Runtime => 135
	i64 u0x21cc7e445dcd5469, ; 54: System.Reflection.Emit.ILGeneration => 126
	i64 u0x220fd4f2e7c48170, ; 55: th/Microsoft.Maui.Controls.resources => 27
	i64 u0x2347c268e3e4e536, ; 56: Xamarin.GooglePlayServices.Basement.dll => 90
	i64 u0x237be844f1f812c7, ; 57: System.Threading.Thread.dll => 141
	i64 u0x2407aef2bbe8fadf, ; 58: System.Console => 105
	i64 u0x240abe014b27e7d3, ; 59: Xamarin.AndroidX.Core.dll => 68
	i64 u0x247619fe4413f8bf, ; 60: System.Runtime.Serialization.Primitives.dll => 134
	i64 u0x252073cc3caa62c2, ; 61: fr/Microsoft.Maui.Controls.resources.dll => 8
	i64 u0x25a0a7eff76ea08e, ; 62: SQLitePCLRaw.batteries_v2.dll => 58
	i64 u0x2662c629b96b0b30, ; 63: lib_Xamarin.Kotlin.StdLib.dll.so => 93
	i64 u0x268c1439f13bcc29, ; 64: lib_Microsoft.Extensions.Primitives.dll.so => 45
	i64 u0x273f3515de5faf0d, ; 65: id/Microsoft.Maui.Controls.resources.dll => 13
	i64 u0x2742545f9094896d, ; 66: hr/Microsoft.Maui.Controls.resources => 11
	i64 u0x27b410442fad6cf1, ; 67: Java.Interop.dll => 151
	i64 u0x2801845a2c71fbfb, ; 68: System.Net.Primitives.dll => 119
	i64 u0x2927d345f3daec35, ; 69: SkiaSharp.dll => 53
	i64 u0x2a128783efe70ba0, ; 70: uk/Microsoft.Maui.Controls.resources.dll => 29
	i64 u0x2a6507a5ffabdf28, ; 71: System.Diagnostics.TraceSource.dll => 108
	i64 u0x2ad156c8e1354139, ; 72: fi/Microsoft.Maui.Controls.resources => 7
	i64 u0x2af298f63581d886, ; 73: System.Text.RegularExpressions.dll => 140
	i64 u0x2afc1c4f898552ee, ; 74: lib_System.Formats.Asn1.dll.so => 111
	i64 u0x2b148910ed40fbf9, ; 75: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i64 u0x2c8bd14bb93a7d82, ; 76: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i64 u0x2cc9e1fed6257257, ; 77: lib_System.Reflection.Emit.Lightweight.dll.so => 127
	i64 u0x2cd723e9fe623c7c, ; 78: lib_System.Private.Xml.Linq.dll.so => 124
	i64 u0x2d169d318a968379, ; 79: System.Threading.dll => 142
	i64 u0x2d47774b7d993f59, ; 80: sv/Microsoft.Maui.Controls.resources.dll => 26
	i64 u0x2db915caf23548d2, ; 81: System.Text.Json.dll => 139
	i64 u0x2e6f1f226821322a, ; 82: el/Microsoft.Maui.Controls.resources.dll => 5
	i64 u0x2f2e98e1c89b1aff, ; 83: System.Xml.ReaderWriter => 145
	i64 u0x309ee9eeec09a71e, ; 84: lib_Xamarin.AndroidX.Fragment.dll.so => 72
	i64 u0x31195fef5d8fb552, ; 85: _Microsoft.Android.Resource.Designer.dll => 34
	i64 u0x32243413e774362a, ; 86: Xamarin.AndroidX.CardView.dll => 65
	i64 u0x3235427f8d12dae1, ; 87: lib_System.Drawing.Primitives.dll.so => 109
	i64 u0x326256f7722d4fe5, ; 88: SkiaSharp.Views.Maui.Controls.dll => 55
	i64 u0x329753a17a517811, ; 89: fr/Microsoft.Maui.Controls.resources => 8
	i64 u0x32aa989ff07a84ff, ; 90: lib_System.Xml.ReaderWriter.dll.so => 145
	i64 u0x33a31443733849fe, ; 91: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i64 u0x34dfd74fe2afcf37, ; 92: Microsoft.Maui => 48
	i64 u0x34e292762d9615df, ; 93: cs/Microsoft.Maui.Controls.resources.dll => 2
	i64 u0x3508234247f48404, ; 94: Microsoft.Maui.Controls => 46
	i64 u0x3549870798b4cd30, ; 95: lib_Xamarin.AndroidX.ViewPager2.dll.so => 87
	i64 u0x355282fc1c909694, ; 96: Microsoft.Extensions.Configuration => 38
	i64 u0x36b2b50fdf589ae2, ; 97: System.Reflection.Emit.Lightweight => 127
	i64 u0x374ef46b06791af6, ; 98: System.Reflection.Primitives.dll => 128
	i64 u0x385c17636bb6fe6e, ; 99: Xamarin.AndroidX.CustomView.dll => 70
	i64 u0x3889cbdca0f2c57c, ; 100: Xamarin.GooglePlayServices.Location.dll => 91
	i64 u0x393c226616977fdb, ; 101: lib_Xamarin.AndroidX.ViewPager.dll.so => 86
	i64 u0x395e37c3334cf82a, ; 102: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i64 u0x39aa39fda111d9d3, ; 103: Newtonsoft.Json => 51
	i64 u0x3b860f9932505633, ; 104: lib_System.Text.Encoding.Extensions.dll.so => 137
	i64 u0x3c7c495f58ac5ee9, ; 105: Xamarin.Kotlin.StdLib => 93
	i64 u0x3d46f0b995082740, ; 106: System.Xml.Linq => 144
	i64 u0x3d9c2a242b040a50, ; 107: lib_Xamarin.AndroidX.Core.dll.so => 68
	i64 u0x3da7781d6333a8fe, ; 108: SQLitePCLRaw.batteries_v2 => 58
	i64 u0x407a10bb4bf95829, ; 109: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 78
	i64 u0x40c6d9cbfdb8b9f7, ; 110: SkiaSharp.Views.Maui.Core.dll => 56
	i64 u0x41833cf766d27d96, ; 111: mscorlib => 148
	i64 u0x41cab042be111c34, ; 112: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 64
	i64 u0x43375950ec7c1b6a, ; 113: netstandard.dll => 149
	i64 u0x434c4e1d9284cdae, ; 114: Mono.Android.dll => 153
	i64 u0x43950f84de7cc79a, ; 115: pl/Microsoft.Maui.Controls.resources.dll => 20
	i64 u0x448bd33429269b19, ; 116: Microsoft.CSharp => 97
	i64 u0x4499fa3c8e494654, ; 117: lib_System.Runtime.Serialization.Primitives.dll.so => 134
	i64 u0x4515080865a951a5, ; 118: Xamarin.Kotlin.StdLib.dll => 93
	i64 u0x45c40276a42e283e, ; 119: System.Diagnostics.TraceSource => 108
	i64 u0x46a4213bc97fe5ae, ; 120: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i64 u0x47358bd471172e1d, ; 121: lib_System.Xml.Linq.dll.so => 144
	i64 u0x47daf4e1afbada10, ; 122: pt/Microsoft.Maui.Controls.resources => 22
	i64 u0x49e952f19a4e2022, ; 123: System.ObjectModel => 122
	i64 u0x49f9e6948a8131e4, ; 124: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 85
	i64 u0x4a5667b2462a664b, ; 125: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 81
	i64 u0x4b7b6532ded934b7, ; 126: System.Text.Json => 139
	i64 u0x4bf547f87e5016a8, ; 127: lib_SkiaSharp.Views.Android.dll.so => 54
	i64 u0x4cc5f15266470798, ; 128: lib_Xamarin.AndroidX.Loader.dll.so => 77
	i64 u0x4d479f968a05e504, ; 129: System.Linq.Expressions.dll => 115
	i64 u0x4d55a010ffc4faff, ; 130: System.Private.Xml => 125
	i64 u0x4d95fccc1f67c7ca, ; 131: System.Runtime.Loader.dll => 131
	i64 u0x4dcf44c3c9b076a2, ; 132: it/Microsoft.Maui.Controls.resources.dll => 14
	i64 u0x4dd9247f1d2c3235, ; 133: Xamarin.AndroidX.Loader.dll => 77
	i64 u0x4e32f00cb0937401, ; 134: Mono.Android.Runtime => 152
	i64 u0x4f21ee6ef9eb527e, ; 135: ca/Microsoft.Maui.Controls.resources => 1
	i64 u0x4fd5f3ee53d0a4f0, ; 136: SQLitePCLRaw.lib.e_sqlite3.android => 60
	i64 u0x5037f0be3c28c7a3, ; 137: lib_Microsoft.Maui.Controls.dll.so => 46
	i64 u0x5112ed116d87baf8, ; 138: CommunityToolkit.Mvvm => 35
	i64 u0x5131bbe80989093f, ; 139: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 75
	i64 u0x51bb8a2afe774e32, ; 140: System.Drawing => 110
	i64 u0x526ce79eb8e90527, ; 141: lib_System.Net.Primitives.dll.so => 119
	i64 u0x52829f00b4467c38, ; 142: lib_System.Data.Common.dll.so => 106
	i64 u0x529ffe06f39ab8db, ; 143: Xamarin.AndroidX.Core => 68
	i64 u0x52ff996554dbf352, ; 144: Microsoft.Maui.Graphics => 50
	i64 u0x535f7e40e8fef8af, ; 145: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i64 u0x53be1038a61e8d44, ; 146: System.Runtime.InteropServices.RuntimeInformation.dll => 129
	i64 u0x53c3014b9437e684, ; 147: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i64 u0x54795225dd1587af, ; 148: lib_System.Runtime.dll.so => 135
	i64 u0x556e8b63b660ab8b, ; 149: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 73
	i64 u0x5588627c9a108ec9, ; 150: System.Collections.Specialized => 100
	i64 u0x561449e1215a61e4, ; 151: lib_SkiaSharp.Views.Maui.Core.dll.so => 56
	i64 u0x571c5cfbec5ae8e2, ; 152: System.Private.Uri => 123
	i64 u0x578cd35c91d7b347, ; 153: lib_SQLitePCLRaw.core.dll.so => 59
	i64 u0x579a06fed6eec900, ; 154: System.Private.CoreLib.dll => 150
	i64 u0x57c542c14049b66d, ; 155: System.Diagnostics.DiagnosticSource => 107
	i64 u0x58601b2dda4a27b9, ; 156: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i64 u0x58688d9af496b168, ; 157: Microsoft.Extensions.DependencyInjection.dll => 40
	i64 u0x595a356d23e8da9a, ; 158: lib_Microsoft.CSharp.dll.so => 97
	i64 u0x5a89a886ae30258d, ; 159: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 67
	i64 u0x5a8f6699f4a1caa9, ; 160: lib_System.Threading.dll.so => 142
	i64 u0x5ae9cd33b15841bf, ; 161: System.ComponentModel => 104
	i64 u0x5b5ba1327561f926, ; 162: lib_SkiaSharp.Views.Maui.Controls.dll.so => 55
	i64 u0x5b5f0e240a06a2a2, ; 163: da/Microsoft.Maui.Controls.resources.dll => 3
	i64 u0x5b755276902c8414, ; 164: Xamarin.GooglePlayServices.Base => 89
	i64 u0x5c393624b8176517, ; 165: lib_Microsoft.Extensions.Logging.dll.so => 42
	i64 u0x5db0cbbd1028510e, ; 166: lib_System.Runtime.InteropServices.dll.so => 130
	i64 u0x5db30905d3e5013b, ; 167: Xamarin.AndroidX.Collection.Jvm.dll => 66
	i64 u0x5e467bc8f09ad026, ; 168: System.Collections.Specialized.dll => 100
	i64 u0x5ea92fdb19ec8c4c, ; 169: System.Text.Encodings.Web.dll => 138
	i64 u0x5eb8046dd40e9ac3, ; 170: System.ComponentModel.Primitives => 102
	i64 u0x5f36ccf5c6a57e24, ; 171: System.Xml.ReaderWriter.dll => 145
	i64 u0x5f4294b9b63cb842, ; 172: System.Data.Common => 106
	i64 u0x5f7399e166075632, ; 173: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 60
	i64 u0x5f9a2d823f664957, ; 174: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i64 u0x609f4b7b63d802d4, ; 175: lib_Microsoft.Extensions.DependencyInjection.dll.so => 40
	i64 u0x60cd4e33d7e60134, ; 176: Xamarin.KotlinX.Coroutines.Core.Jvm => 94
	i64 u0x60f62d786afcf130, ; 177: System.Memory => 117
	i64 u0x61be8d1299194243, ; 178: Microsoft.Maui.Controls.Xaml => 47
	i64 u0x61d2cba29557038f, ; 179: de/Microsoft.Maui.Controls.resources => 4
	i64 u0x61d88f399afb2f45, ; 180: lib_System.Runtime.Loader.dll.so => 131
	i64 u0x622eef6f9e59068d, ; 181: System.Private.CoreLib => 150
	i64 u0x6400f68068c1e9f1, ; 182: Xamarin.Google.Android.Material.dll => 88
	i64 u0x65ecac39144dd3cc, ; 183: Microsoft.Maui.Controls.dll => 46
	i64 u0x65ece51227bfa724, ; 184: lib_System.Runtime.Numerics.dll.so => 132
	i64 u0x6692e924eade1b29, ; 185: lib_System.Console.dll.so => 105
	i64 u0x66a4e5c6a3fb0bae, ; 186: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 75
	i64 u0x66bdc67ad2b6c015, ; 187: AppMovil_P1.dll => 96
	i64 u0x66d13304ce1a3efa, ; 188: Xamarin.AndroidX.CursorAdapter => 69
	i64 u0x68558ec653afa616, ; 189: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i64 u0x6872ec7a2e36b1ac, ; 190: System.Drawing.Primitives.dll => 109
	i64 u0x68fbbbe2eb455198, ; 191: System.Formats.Asn1 => 111
	i64 u0x69063fc0ba8e6bdd, ; 192: he/Microsoft.Maui.Controls.resources.dll => 9
	i64 u0x699dffb2427a2d71, ; 193: SQLitePCLRaw.lib.e_sqlite3.android.dll => 60
	i64 u0x6a4d7577b2317255, ; 194: System.Runtime.InteropServices.dll => 130
	i64 u0x6ace3b74b15ee4a4, ; 195: nb/Microsoft.Maui.Controls.resources => 18
	i64 u0x6d12bfaa99c72b1f, ; 196: lib_Microsoft.Maui.Graphics.dll.so => 50
	i64 u0x6d79993361e10ef2, ; 197: Microsoft.Extensions.Primitives => 45
	i64 u0x6d86d56b84c8eb71, ; 198: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 69
	i64 u0x6d9bea6b3e895cf7, ; 199: Microsoft.Extensions.Primitives.dll => 45
	i64 u0x6e25a02c3833319a, ; 200: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 79
	i64 u0x6fd2265da78b93a4, ; 201: lib_Microsoft.Maui.dll.so => 48
	i64 u0x6fdfc7de82c33008, ; 202: cs/Microsoft.Maui.Controls.resources => 2
	i64 u0x70e99f48c05cb921, ; 203: tr/Microsoft.Maui.Controls.resources.dll => 28
	i64 u0x70fd3deda22442d2, ; 204: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i64 u0x71a495ea3761dde8, ; 205: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i64 u0x71ad672adbe48f35, ; 206: System.ComponentModel.Primitives.dll => 102
	i64 u0x72b1fb4109e08d7b, ; 207: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i64 u0x73e4ce94e2eb6ffc, ; 208: lib_System.Memory.dll.so => 117
	i64 u0x74fcb5b9d3ee6884, ; 209: Plugin.LocalNotification => 52
	i64 u0x755a91767330b3d4, ; 210: lib_Microsoft.Extensions.Configuration.dll.so => 38
	i64 u0x76012e7334db86e5, ; 211: lib_Xamarin.AndroidX.SavedState.dll.so => 83
	i64 u0x76ca07b878f44da0, ; 212: System.Runtime.Numerics.dll => 132
	i64 u0x780bc73597a503a9, ; 213: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i64 u0x783606d1e53e7a1a, ; 214: th/Microsoft.Maui.Controls.resources.dll => 27
	i64 u0x78a45e51311409b6, ; 215: Xamarin.AndroidX.Fragment.dll => 72
	i64 u0x7a090e7cbb6c0ed1, ; 216: Xamarin.GooglePlayServices.Location => 91
	i64 u0x7adb8da2ac89b647, ; 217: fi/Microsoft.Maui.Controls.resources.dll => 7
	i64 u0x7bef86a4335c4870, ; 218: System.ComponentModel.TypeConverter => 103
	i64 u0x7c0820144cd34d6a, ; 219: sk/Microsoft.Maui.Controls.resources.dll => 25
	i64 u0x7c2a0bd1e0f988fc, ; 220: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i64 u0x7cb95ad2a929d044, ; 221: Xamarin.GooglePlayServices.Basement => 90
	i64 u0x7d649b75d580bb42, ; 222: ms/Microsoft.Maui.Controls.resources.dll => 17
	i64 u0x7d8ee2bdc8e3aad1, ; 223: System.Numerics.Vectors => 121
	i64 u0x7dfc3d6d9d8d7b70, ; 224: System.Collections => 101
	i64 u0x7e946809d6008ef2, ; 225: lib_System.ObjectModel.dll.so => 122
	i64 u0x7eb4f0dc47488736, ; 226: lib_Xamarin.GooglePlayServices.Tasks.dll.so => 92
	i64 u0x7ecae95bb32bac16, ; 227: Microcharts.dll => 37
	i64 u0x7ecc13347c8fd849, ; 228: lib_System.ComponentModel.dll.so => 104
	i64 u0x7f00ddd9b9ca5a13, ; 229: Xamarin.AndroidX.ViewPager.dll => 86
	i64 u0x7f9351cd44b1273f, ; 230: Microsoft.Extensions.Configuration.Abstractions => 39
	i64 u0x7fbd557c99b3ce6f, ; 231: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 74
	i64 u0x80fa55b6d1b0be99, ; 232: SQLitePCLRaw.provider.e_sqlite3 => 61
	i64 u0x812c069d5cdecc17, ; 233: System.dll => 147
	i64 u0x81ab745f6c0f5ce6, ; 234: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i64 u0x8277f2be6b5ce05f, ; 235: Xamarin.AndroidX.AppCompat => 63
	i64 u0x828f06563b30bc50, ; 236: lib_Xamarin.AndroidX.CardView.dll.so => 65
	i64 u0x82df8f5532a10c59, ; 237: lib_System.Drawing.dll.so => 110
	i64 u0x82f6403342e12049, ; 238: uk/Microsoft.Maui.Controls.resources => 29
	i64 u0x8307772b36fec6ac, ; 239: Microcharts.Droid => 36
	i64 u0x83144699b312ad81, ; 240: SQLite-net.dll => 57
	i64 u0x83c14ba66c8e2b8c, ; 241: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i64 u0x8413ea6e1030d92c, ; 242: lib_Microcharts.dll.so => 37
	i64 u0x84f9060cc4a93c8f, ; 243: lib_SkiaSharp.dll.so => 53
	i64 u0x86a909228dc7657b, ; 244: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i64 u0x86b3e00c36b84509, ; 245: Microsoft.Extensions.Configuration.dll => 38
	i64 u0x87c69b87d9283884, ; 246: lib_System.Threading.Thread.dll.so => 141
	i64 u0x87f6569b25707834, ; 247: System.IO.Compression.Brotli.dll => 112
	i64 u0x8842b3a5d2d3fb36, ; 248: Microsoft.Maui.Essentials => 49
	i64 u0x88bda98e0cffb7a9, ; 249: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 94
	i64 u0x8930322c7bd8f768, ; 250: netstandard => 149
	i64 u0x897a606c9e39c75f, ; 251: lib_System.ComponentModel.Primitives.dll.so => 102
	i64 u0x89c5188089ec2cd5, ; 252: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 129
	i64 u0x8ad229ea26432ee2, ; 253: Xamarin.AndroidX.Loader => 77
	i64 u0x8b4ff5d0fdd5faa1, ; 254: lib_System.Diagnostics.DiagnosticSource.dll.so => 107
	i64 u0x8b9ceca7acae3451, ; 255: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i64 u0x8d0f420977c2c1c7, ; 256: Xamarin.AndroidX.CursorAdapter.dll => 69
	i64 u0x8d7b8ab4b3310ead, ; 257: System.Threading => 142
	i64 u0x8da188285aadfe8e, ; 258: System.Collections.Concurrent => 98
	i64 u0x8e63e0e2644469aa, ; 259: Microcharts => 37
	i64 u0x8ec6e06a61c1baeb, ; 260: lib_Newtonsoft.Json.dll.so => 51
	i64 u0x8ed807bfe9858dfc, ; 261: Xamarin.AndroidX.Navigation.Common => 78
	i64 u0x8ee08b8194a30f48, ; 262: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i64 u0x8ef7601039857a44, ; 263: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i64 u0x8ef9414937d93a0a, ; 264: SQLitePCLRaw.core.dll => 59
	i64 u0x8efbc0801a122264, ; 265: Xamarin.GooglePlayServices.Tasks.dll => 92
	i64 u0x8f32c6f611f6ffab, ; 266: pt/Microsoft.Maui.Controls.resources.dll => 22
	i64 u0x8f8829d21c8985a4, ; 267: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i64 u0x8fd27d934d7b3a55, ; 268: SQLitePCLRaw.core => 59
	i64 u0x90263f8448b8f572, ; 269: lib_System.Diagnostics.TraceSource.dll.so => 108
	i64 u0x903101b46fb73a04, ; 270: _Microsoft.Android.Resource.Designer => 34
	i64 u0x90393bd4865292f3, ; 271: lib_System.IO.Compression.dll.so => 113
	i64 u0x90634f86c5ebe2b5, ; 272: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 75
	i64 u0x907b636704ad79ef, ; 273: lib_Microsoft.Maui.Controls.Xaml.dll.so => 47
	i64 u0x91418dc638b29e68, ; 274: lib_Xamarin.AndroidX.CustomView.dll.so => 70
	i64 u0x9157bd523cd7ed36, ; 275: lib_System.Text.Json.dll.so => 139
	i64 u0x91a74f07b30d37e2, ; 276: System.Linq.dll => 116
	i64 u0x91fa41a87223399f, ; 277: ca/Microsoft.Maui.Controls.resources.dll => 1
	i64 u0x93cfa73ab28d6e35, ; 278: ms/Microsoft.Maui.Controls.resources => 17
	i64 u0x944077d8ca3c6580, ; 279: System.IO.Compression.dll => 113
	i64 u0x967fc325e09bfa8c, ; 280: es/Microsoft.Maui.Controls.resources => 6
	i64 u0x9732d8dbddea3d9a, ; 281: id/Microsoft.Maui.Controls.resources => 13
	i64 u0x978be80e5210d31b, ; 282: Microsoft.Maui.Graphics.dll => 50
	i64 u0x979ab54025cc1c7f, ; 283: lib_Xamarin.GooglePlayServices.Base.dll.so => 89
	i64 u0x97b8c771ea3e4220, ; 284: System.ComponentModel.dll => 104
	i64 u0x97e144c9d3c6976e, ; 285: System.Collections.Concurrent.dll => 98
	i64 u0x991d510397f92d9d, ; 286: System.Linq.Expressions => 115
	i64 u0x999cb19e1a04ffd3, ; 287: CommunityToolkit.Mvvm.dll => 35
	i64 u0x99a00ca5270c6878, ; 288: Xamarin.AndroidX.Navigation.Runtime => 80
	i64 u0x99cdc6d1f2d3a72f, ; 289: ko/Microsoft.Maui.Controls.resources.dll => 16
	i64 u0x9d5dbcf5a48583fe, ; 290: lib_Xamarin.AndroidX.Activity.dll.so => 62
	i64 u0x9d74dee1a7725f34, ; 291: Microsoft.Extensions.Configuration.Abstractions.dll => 39
	i64 u0x9e4534b6adaf6e84, ; 292: nl/Microsoft.Maui.Controls.resources => 19
	i64 u0x9eaf1efdf6f7267e, ; 293: Xamarin.AndroidX.Navigation.Common.dll => 78
	i64 u0x9ef542cf1f78c506, ; 294: Xamarin.AndroidX.Lifecycle.LiveData.Core => 74
	i64 u0x9fc2184212c417ad, ; 295: Plugin.LocalNotification.dll => 52
	i64 u0xa0d8259f4cc284ec, ; 296: lib_System.Security.Cryptography.dll.so => 136
	i64 u0xa1440773ee9d341e, ; 297: Xamarin.Google.Android.Material => 88
	i64 u0xa1b9d7c27f47219f, ; 298: Xamarin.AndroidX.Navigation.UI.dll => 81
	i64 u0xa2572680829d2c7c, ; 299: System.IO.Pipelines.dll => 114
	i64 u0xa2beee74530fc01c, ; 300: SkiaSharp.Views.Android => 54
	i64 u0xa308401900e5bed3, ; 301: lib_mscorlib.dll.so => 148
	i64 u0xa46aa1eaa214539b, ; 302: ko/Microsoft.Maui.Controls.resources => 16
	i64 u0xa4d20d2ff0563d26, ; 303: lib_CommunityToolkit.Mvvm.dll.so => 35
	i64 u0xa4edc8f2ceae241a, ; 304: System.Data.Common.dll => 106
	i64 u0xa5494f40f128ce6a, ; 305: System.Runtime.Serialization.Formatters.dll => 133
	i64 u0xa5e599d1e0524750, ; 306: System.Numerics.Vectors.dll => 121
	i64 u0xa5f1ba49b85dd355, ; 307: System.Security.Cryptography.dll => 136
	i64 u0xa67dbee13e1df9ca, ; 308: Xamarin.AndroidX.SavedState.dll => 83
	i64 u0xa68a420042bb9b1f, ; 309: Xamarin.AndroidX.DrawerLayout.dll => 71
	i64 u0xa78ce3745383236a, ; 310: Xamarin.AndroidX.Lifecycle.Common.Jvm => 73
	i64 u0xa7c31b56b4dc7b33, ; 311: hu/Microsoft.Maui.Controls.resources => 12
	i64 u0xa843f6095f0d247d, ; 312: Xamarin.GooglePlayServices.Base.dll => 89
	i64 u0xaa2219c8e3449ff5, ; 313: Microsoft.Extensions.Logging.Abstractions => 43
	i64 u0xaa443ac34067eeef, ; 314: System.Private.Xml.dll => 125
	i64 u0xaa52de307ef5d1dd, ; 315: System.Net.Http => 118
	i64 u0xaaaf86367285a918, ; 316: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 41
	i64 u0xaaf84bb3f052a265, ; 317: el/Microsoft.Maui.Controls.resources => 5
	i64 u0xab9c1b2687d86b0b, ; 318: lib_System.Linq.Expressions.dll.so => 115
	i64 u0xac2af3fa195a15ce, ; 319: System.Runtime.Numerics => 132
	i64 u0xac5376a2a538dc10, ; 320: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 74
	i64 u0xac98d31068e24591, ; 321: System.Xml.XDocument => 146
	i64 u0xacd46e002c3ccb97, ; 322: ro/Microsoft.Maui.Controls.resources => 23
	i64 u0xad89c07347f1bad6, ; 323: nl/Microsoft.Maui.Controls.resources.dll => 19
	i64 u0xadbb53caf78a79d2, ; 324: System.Web.HttpUtility => 143
	i64 u0xadc90ab061a9e6e4, ; 325: System.ComponentModel.TypeConverter.dll => 103
	i64 u0xae282bcd03739de7, ; 326: Java.Interop => 151
	i64 u0xae53579c90db1107, ; 327: System.ObjectModel.dll => 122
	i64 u0xae7ea18c61eef394, ; 328: SQLite-net => 57
	i64 u0xafe29f45095518e7, ; 329: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 76
	i64 u0xb05cc42cd94c6d9d, ; 330: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i64 u0xb220631954820169, ; 331: System.Text.RegularExpressions => 140
	i64 u0xb2a3f67f3bf29fce, ; 332: da/Microsoft.Maui.Controls.resources => 3
	i64 u0xb3f0a0fcda8d3ebc, ; 333: Xamarin.AndroidX.CardView => 65
	i64 u0xb46be1aa6d4fff93, ; 334: hi/Microsoft.Maui.Controls.resources => 10
	i64 u0xb477491be13109d8, ; 335: ar/Microsoft.Maui.Controls.resources => 0
	i64 u0xb4bd7015ecee9d86, ; 336: System.IO.Pipelines => 114
	i64 u0xb5c7fcdafbc67ee4, ; 337: Microsoft.Extensions.Logging.Abstractions.dll => 43
	i64 u0xb7212c4683a94afe, ; 338: System.Drawing.Primitives => 109
	i64 u0xb7b7753d1f319409, ; 339: sv/Microsoft.Maui.Controls.resources => 26
	i64 u0xb81a2c6e0aee50fe, ; 340: lib_System.Private.CoreLib.dll.so => 150
	i64 u0xb9185c33a1643eed, ; 341: Microsoft.CSharp.dll => 97
	i64 u0xb9f64d3b230def68, ; 342: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i64 u0xb9fc3c8a556e3691, ; 343: ja/Microsoft.Maui.Controls.resources => 15
	i64 u0xba4670aa94a2b3c6, ; 344: lib_System.Xml.XDocument.dll.so => 146
	i64 u0xba48785529705af9, ; 345: System.Collections.dll => 101
	i64 u0xbbd180354b67271a, ; 346: System.Runtime.Serialization.Formatters => 133
	i64 u0xbc22a245dab70cb4, ; 347: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 61
	i64 u0xbd0e2c0d55246576, ; 348: System.Net.Http.dll => 118
	i64 u0xbd437a2cdb333d0d, ; 349: Xamarin.AndroidX.ViewPager2 => 87
	i64 u0xbee38d4a88835966, ; 350: Xamarin.AndroidX.AppCompat.AppCompatResources => 64
	i64 u0xc040a4ab55817f58, ; 351: ar/Microsoft.Maui.Controls.resources.dll => 0
	i64 u0xc0d928351ab5ca77, ; 352: System.Console.dll => 105
	i64 u0xc12b8b3afa48329c, ; 353: lib_System.Linq.dll.so => 116
	i64 u0xc1ff9ae3cdb6e1e6, ; 354: Xamarin.AndroidX.Activity.dll => 62
	i64 u0xc28c50f32f81cc73, ; 355: ja/Microsoft.Maui.Controls.resources.dll => 15
	i64 u0xc2bcfec99f69365e, ; 356: Xamarin.AndroidX.ViewPager2.dll => 87
	i64 u0xc4d3858ed4d08512, ; 357: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 76
	i64 u0xc50fded0ded1418c, ; 358: lib_System.ComponentModel.TypeConverter.dll.so => 103
	i64 u0xc519125d6bc8fb11, ; 359: lib_System.Net.Requests.dll.so => 120
	i64 u0xc5293b19e4dc230e, ; 360: Xamarin.AndroidX.Navigation.Fragment => 79
	i64 u0xc5325b2fcb37446f, ; 361: lib_System.Private.Xml.dll.so => 125
	i64 u0xc5a0f4b95a699af7, ; 362: lib_System.Private.Uri.dll.so => 123
	i64 u0xc7c01e7d7c93a110, ; 363: System.Text.Encoding.Extensions.dll => 137
	i64 u0xc7ce851898a4548e, ; 364: lib_System.Web.HttpUtility.dll.so => 143
	i64 u0xc858a28d9ee5a6c5, ; 365: lib_System.Collections.Specialized.dll.so => 100
	i64 u0xca3a723e7342c5b6, ; 366: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i64 u0xcab3493c70141c2d, ; 367: pl/Microsoft.Maui.Controls.resources => 20
	i64 u0xcacfddc9f7c6de76, ; 368: ro/Microsoft.Maui.Controls.resources.dll => 23
	i64 u0xcbd4fdd9cef4a294, ; 369: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i64 u0xcc2876b32ef2794c, ; 370: lib_System.Text.RegularExpressions.dll.so => 140
	i64 u0xcc5c3bb714c4561e, ; 371: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 94
	i64 u0xcc76886e09b88260, ; 372: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 95
	i64 u0xccf25c4b634ccd3a, ; 373: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i64 u0xcd10a42808629144, ; 374: System.Net.Requests => 120
	i64 u0xcdd0c48b6937b21c, ; 375: Xamarin.AndroidX.SwipeRefreshLayout => 84
	i64 u0xcf23d8093f3ceadf, ; 376: System.Diagnostics.DiagnosticSource.dll => 107
	i64 u0xcf8fc898f98b0d34, ; 377: System.Private.Xml.Linq => 124
	i64 u0xd1194e1d8a8de83c, ; 378: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 73
	i64 u0xd333d0af9e423810, ; 379: System.Runtime.InteropServices => 130
	i64 u0xd3426d966bb704f5, ; 380: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 64
	i64 u0xd3651b6fc3125825, ; 381: System.Private.Uri.dll => 123
	i64 u0xd373685349b1fe8b, ; 382: Microsoft.Extensions.Logging.dll => 42
	i64 u0xd3e4c8d6a2d5d470, ; 383: it/Microsoft.Maui.Controls.resources => 14
	i64 u0xd4645626dffec99d, ; 384: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 41
	i64 u0xd5507e11a2b2839f, ; 385: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 76
	i64 u0xd6694f8359737e4e, ; 386: Xamarin.AndroidX.SavedState => 83
	i64 u0xd6d21782156bc35b, ; 387: Xamarin.AndroidX.SwipeRefreshLayout.dll => 84
	i64 u0xd72329819cbbbc44, ; 388: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 39
	i64 u0xd7b3764ada9d341d, ; 389: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 43
	i64 u0xd7f0088bc5ad71f2, ; 390: Xamarin.AndroidX.VersionedParcelable => 85
	i64 u0xda1dfa4c534a9251, ; 391: Microsoft.Extensions.DependencyInjection => 40
	i64 u0xdad05a11827959a3, ; 392: System.Collections.NonGeneric.dll => 99
	i64 u0xdb5383ab5865c007, ; 393: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i64 u0xdb58816721c02a59, ; 394: lib_System.Reflection.Emit.ILGeneration.dll.so => 126
	i64 u0xdb8f858873e2186b, ; 395: SkiaSharp.Views.Maui.Controls => 55
	i64 u0xdbeda89f832aa805, ; 396: vi/Microsoft.Maui.Controls.resources.dll => 30
	i64 u0xdbf9607a441b4505, ; 397: System.Linq => 116
	i64 u0xdce2c53525640bf3, ; 398: Microsoft.Extensions.Logging => 42
	i64 u0xdd2b722d78ef5f43, ; 399: System.Runtime.dll => 135
	i64 u0xdd67031857c72f96, ; 400: lib_System.Text.Encodings.Web.dll.so => 138
	i64 u0xdde30e6b77aa6f6c, ; 401: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i64 u0xde110ae80fa7c2e2, ; 402: System.Xml.XDocument.dll => 146
	i64 u0xde8769ebda7d8647, ; 403: hr/Microsoft.Maui.Controls.resources.dll => 11
	i64 u0xe0142572c095a480, ; 404: Xamarin.AndroidX.AppCompat.dll => 63
	i64 u0xe02f89350ec78051, ; 405: Xamarin.AndroidX.CoordinatorLayout.dll => 67
	i64 u0xe192a588d4410686, ; 406: lib_System.IO.Pipelines.dll.so => 114
	i64 u0xe1a08bd3fa539e0d, ; 407: System.Runtime.Loader => 131
	i64 u0xe1b52f9f816c70ef, ; 408: System.Private.Xml.Linq.dll => 124
	i64 u0xe1f1df2166153a1b, ; 409: AppMovil_P1 => 96
	i64 u0xe2420585aeceb728, ; 410: System.Net.Requests.dll => 120
	i64 u0xe29b73bc11392966, ; 411: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i64 u0xe2f9c0b4d8e63438, ; 412: lib_Microcharts.Droid.dll.so => 36
	i64 u0xe3811d68d4fe8463, ; 413: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i64 u0xe3a586956771a0ed, ; 414: lib_SQLite-net.dll.so => 57
	i64 u0xe4507486c308efd4, ; 415: lib_Xamarin.GooglePlayServices.Location.dll.so => 91
	i64 u0xe494f7ced4ecd10a, ; 416: hu/Microsoft.Maui.Controls.resources.dll => 12
	i64 u0xe4a9b1e40d1e8917, ; 417: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i64 u0xe4f74a0b5bf9703f, ; 418: System.Runtime.Serialization.Primitives => 134
	i64 u0xe5434e8a119ceb69, ; 419: lib_Mono.Android.dll.so => 153
	i64 u0xe7aa433799429105, ; 420: lib_AppMovil_P1.dll.so => 96
	i64 u0xe89a2a9ef110899b, ; 421: System.Drawing.dll => 110
	i64 u0xed19c616b3fcb7eb, ; 422: Xamarin.AndroidX.VersionedParcelable.dll => 85
	i64 u0xed1e012c6225826b, ; 423: Microcharts.Droid.dll => 36
	i64 u0xedc632067fb20ff3, ; 424: System.Memory.dll => 117
	i64 u0xedc8e4ca71a02a8b, ; 425: Xamarin.AndroidX.Navigation.Runtime.dll => 80
	i64 u0xeeb7ebb80150501b, ; 426: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 66
	i64 u0xef72742e1bcca27a, ; 427: Microsoft.Maui.Essentials.dll => 49
	i64 u0xefec0b7fdc57ec42, ; 428: Xamarin.AndroidX.Activity => 62
	i64 u0xf00c29406ea45e19, ; 429: es/Microsoft.Maui.Controls.resources.dll => 6
	i64 u0xf11b621fc87b983f, ; 430: Microsoft.Maui.Controls.Xaml.dll => 47
	i64 u0xf1c4b4005493d871, ; 431: System.Formats.Asn1.dll => 111
	i64 u0xf238bd79489d3a96, ; 432: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i64 u0xf37221fda4ef8830, ; 433: lib_Xamarin.Google.Android.Material.dll.so => 88
	i64 u0xf3ddfe05336abf29, ; 434: System => 147
	i64 u0xf408654b2a135055, ; 435: System.Reflection.Emit.ILGeneration.dll => 126
	i64 u0xf4727d423e5d26f3, ; 436: SkiaSharp => 53
	i64 u0xf4c1dd70a5496a17, ; 437: System.IO.Compression => 113
	i64 u0xf6077741019d7428, ; 438: Xamarin.AndroidX.CoordinatorLayout => 67
	i64 u0xf77b20923f07c667, ; 439: de/Microsoft.Maui.Controls.resources.dll => 4
	i64 u0xf7e2cac4c45067b3, ; 440: lib_System.Numerics.Vectors.dll.so => 121
	i64 u0xf7e74930e0e3d214, ; 441: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i64 u0xf7fa0bf77fe677cc, ; 442: Newtonsoft.Json.dll => 51
	i64 u0xf84773b5c81e3cef, ; 443: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i64 u0xf8b77539b362d3ba, ; 444: lib_System.Reflection.Primitives.dll.so => 128
	i64 u0xf8e045dc345b2ea3, ; 445: lib_Xamarin.AndroidX.RecyclerView.dll.so => 82
	i64 u0xf915dc29808193a1, ; 446: System.Web.HttpUtility.dll => 143
	i64 u0xf96c777a2a0686f4, ; 447: hi/Microsoft.Maui.Controls.resources.dll => 10
	i64 u0xf9eec5bb3a6aedc6, ; 448: Microsoft.Extensions.Options => 44
	i64 u0xfa5ed7226d978949, ; 449: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i64 u0xfa645d91e9fc4cba, ; 450: System.Threading.Thread => 141
	i64 u0xfa99d44ebf9bea5b, ; 451: SkiaSharp.Views.Maui.Core => 56
	i64 u0xfb022853d73b7fa5, ; 452: lib_SQLitePCLRaw.batteries_v2.dll.so => 58
	i64 u0xfb3cb754cb2d9fc0, ; 453: lib_Plugin.LocalNotification.dll.so => 52
	i64 u0xfbf0a31c9fc34bc4, ; 454: lib_System.Net.Http.dll.so => 118
	i64 u0xfc6b7527cc280b3f, ; 455: lib_System.Runtime.Serialization.Formatters.dll.so => 133
	i64 u0xfc719aec26adf9d9, ; 456: Xamarin.AndroidX.Navigation.Fragment.dll => 79
	i64 u0xfd22f00870e40ae0, ; 457: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 71
	i64 u0xfd49b3c1a76e2748, ; 458: System.Runtime.InteropServices.RuntimeInformation => 129
	i64 u0xfd536c702f64dc47, ; 459: System.Text.Encoding.Extensions => 137
	i64 u0xfd583f7657b6a1cb, ; 460: Xamarin.AndroidX.Fragment => 72
	i64 u0xfeae9952cf03b8cb ; 461: tr/Microsoft.Maui.Controls.resources => 28
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [462 x i32] [
	i32 84, i32 80, i32 152, i32 63, i32 61, i32 24, i32 2, i32 30,
	i32 119, i32 92, i32 82, i32 101, i32 48, i32 31, i32 144, i32 66,
	i32 148, i32 24, i32 99, i32 128, i32 71, i32 44, i32 99, i32 90,
	i32 136, i32 25, i32 95, i32 86, i32 21, i32 153, i32 49, i32 54,
	i32 70, i32 112, i32 127, i32 82, i32 8, i32 151, i32 9, i32 41,
	i32 149, i32 12, i32 138, i32 95, i32 18, i32 98, i32 147, i32 27,
	i32 152, i32 81, i32 16, i32 44, i32 112, i32 135, i32 126, i32 27,
	i32 90, i32 141, i32 105, i32 68, i32 134, i32 8, i32 58, i32 93,
	i32 45, i32 13, i32 11, i32 151, i32 119, i32 53, i32 29, i32 108,
	i32 7, i32 140, i32 111, i32 33, i32 20, i32 127, i32 124, i32 142,
	i32 26, i32 139, i32 5, i32 145, i32 72, i32 34, i32 65, i32 109,
	i32 55, i32 8, i32 145, i32 6, i32 48, i32 2, i32 46, i32 87,
	i32 38, i32 127, i32 128, i32 70, i32 91, i32 86, i32 1, i32 51,
	i32 137, i32 93, i32 144, i32 68, i32 58, i32 78, i32 56, i32 148,
	i32 64, i32 149, i32 153, i32 20, i32 97, i32 134, i32 93, i32 108,
	i32 24, i32 144, i32 22, i32 122, i32 85, i32 81, i32 139, i32 54,
	i32 77, i32 115, i32 125, i32 131, i32 14, i32 77, i32 152, i32 1,
	i32 60, i32 46, i32 35, i32 75, i32 110, i32 119, i32 106, i32 68,
	i32 50, i32 25, i32 129, i32 31, i32 135, i32 73, i32 100, i32 56,
	i32 123, i32 59, i32 150, i32 107, i32 15, i32 40, i32 97, i32 67,
	i32 142, i32 104, i32 55, i32 3, i32 89, i32 42, i32 130, i32 66,
	i32 100, i32 138, i32 102, i32 145, i32 106, i32 60, i32 5, i32 40,
	i32 94, i32 117, i32 47, i32 4, i32 131, i32 150, i32 88, i32 46,
	i32 132, i32 105, i32 75, i32 96, i32 69, i32 3, i32 109, i32 111,
	i32 9, i32 60, i32 130, i32 18, i32 50, i32 45, i32 69, i32 45,
	i32 79, i32 48, i32 2, i32 28, i32 18, i32 14, i32 102, i32 11,
	i32 117, i32 52, i32 38, i32 83, i32 132, i32 17, i32 27, i32 72,
	i32 91, i32 7, i32 103, i32 25, i32 4, i32 90, i32 17, i32 121,
	i32 101, i32 122, i32 92, i32 37, i32 104, i32 86, i32 39, i32 74,
	i32 61, i32 147, i32 33, i32 63, i32 65, i32 110, i32 29, i32 36,
	i32 57, i32 32, i32 37, i32 53, i32 33, i32 38, i32 141, i32 112,
	i32 49, i32 94, i32 149, i32 102, i32 129, i32 77, i32 107, i32 9,
	i32 69, i32 142, i32 98, i32 37, i32 51, i32 78, i32 10, i32 23,
	i32 59, i32 92, i32 22, i32 21, i32 59, i32 108, i32 34, i32 113,
	i32 75, i32 47, i32 70, i32 139, i32 116, i32 1, i32 17, i32 113,
	i32 6, i32 13, i32 50, i32 89, i32 104, i32 98, i32 115, i32 35,
	i32 80, i32 16, i32 62, i32 39, i32 19, i32 78, i32 74, i32 52,
	i32 136, i32 88, i32 81, i32 114, i32 54, i32 148, i32 16, i32 35,
	i32 106, i32 133, i32 121, i32 136, i32 83, i32 71, i32 73, i32 12,
	i32 89, i32 43, i32 125, i32 118, i32 41, i32 5, i32 115, i32 132,
	i32 74, i32 146, i32 23, i32 19, i32 143, i32 103, i32 151, i32 122,
	i32 57, i32 76, i32 26, i32 140, i32 3, i32 65, i32 10, i32 0,
	i32 114, i32 43, i32 109, i32 26, i32 150, i32 97, i32 22, i32 15,
	i32 146, i32 101, i32 133, i32 61, i32 118, i32 87, i32 64, i32 0,
	i32 105, i32 116, i32 62, i32 15, i32 87, i32 76, i32 103, i32 120,
	i32 79, i32 125, i32 123, i32 137, i32 143, i32 100, i32 28, i32 20,
	i32 23, i32 34, i32 140, i32 94, i32 95, i32 32, i32 120, i32 84,
	i32 107, i32 124, i32 73, i32 130, i32 64, i32 123, i32 42, i32 14,
	i32 41, i32 76, i32 83, i32 84, i32 39, i32 43, i32 85, i32 40,
	i32 99, i32 30, i32 126, i32 55, i32 30, i32 116, i32 42, i32 135,
	i32 138, i32 32, i32 146, i32 11, i32 63, i32 67, i32 114, i32 131,
	i32 124, i32 96, i32 120, i32 13, i32 36, i32 21, i32 57, i32 91,
	i32 12, i32 7, i32 134, i32 153, i32 96, i32 110, i32 85, i32 36,
	i32 117, i32 80, i32 66, i32 49, i32 62, i32 6, i32 47, i32 111,
	i32 19, i32 88, i32 147, i32 126, i32 53, i32 113, i32 67, i32 4,
	i32 121, i32 31, i32 51, i32 29, i32 128, i32 82, i32 143, i32 10,
	i32 44, i32 0, i32 141, i32 56, i32 58, i32 52, i32 118, i32 133,
	i32 79, i32 71, i32 129, i32 137, i32 72, i32 28
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 0ccdc57cf7fc59bd3f6cbf900c9cdbebadfe4609"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
