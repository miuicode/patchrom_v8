.class public Lcom/nvidia/NvAppSpecificHeuristics;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvAppSpecificHeuristics$App;
    }
.end annotation


# static fields
.field private static final DEBUG_NV_APP_PROFILE:Z = false

.field private static final EXTRA_HW_ACCELERATION_PROPERTY:Ljava/lang/String; = "persist.sys.extra_hw_accel"

.field private static final TAG:Ljava/lang/String; = "NvAppSpecificHeuristics"

.field private static final mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v5, 0x4

    const/4 v11, -0x1

    const/16 v13, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    const/16 v0, 0x8

    new-array v12, v0, [Lcom/nvidia/NvAppSpecificHeuristics$App;

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.aurorasoftworks.quadrant.ui.professional"

    new-array v2, v13, [B

    fill-array-data v2, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v0, v12, v4

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.aurorasoftworks.quadrant.ui.advanced"

    new-array v2, v13, [B

    fill-array-data v2, :array_1

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v0, v12, v3

    const/4 v6, 0x2

    new-instance v0, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v1, "com.aurorasoftworks.quadrant.ui.standard"

    new-array v2, v13, [B

    fill-array-data v2, :array_2

    invoke-direct/range {v0 .. v5}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v0, v12, v6

    const/4 v0, 0x3

    new-instance v6, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v7, "com.netflix.mediaclient"

    new-array v8, v13, [B

    fill-array-data v8, :array_3

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v6, v12, v0

    new-instance v6, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v7, "com.android.browser"

    new-array v8, v13, [B

    fill-array-data v8, :array_4

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v6, v12, v5

    const/4 v0, 0x5

    new-instance v6, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v7, "com.android.launcher"

    new-array v8, v13, [B

    fill-array-data v8, :array_5

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v6, v12, v0

    const/4 v0, 0x6

    new-instance v6, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v7, "com.android.systemui"

    new-array v8, v13, [B

    fill-array-data v8, :array_6

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v6, v12, v0

    const/4 v0, 0x7

    new-instance v6, Lcom/nvidia/NvAppSpecificHeuristics$App;

    const-string v7, "com.android.gallery3d"

    new-array v8, v13, [B

    fill-array-data v8, :array_7

    move v9, v4

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/nvidia/NvAppSpecificHeuristics$App;-><init>(Ljava/lang/String;[BZZI)V

    aput-object v6, v12, v0

    sput-object v12, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    return-void

    :array_0
    .array-data 0x1
        0x12t
        0x51t
        0x13t
        0xabt
        0xf4t
        0xf5t
        0x5bt
        0x35t
        0x21t
        0x76t
        0xat
        0x70t
        0x4dt
        0xa4t
        0xd7t
        0x6bt
        0xf9t
        0xf2t
        0x88t
        0x85t
    .end array-data

    :array_1
    .array-data 0x1
        0xa9t
        0xf5t
        0x31t
        0xe6t
        0x99t
        0x32t
        0x45t
        0x91t
        0xd1t
        0x2ft
        0xa6t
        0x4ct
        0x85t
        0x2et
        0x58t
        0x63t
        0x4ft
        0x1dt
        0x57t
        0xd7t
    .end array-data

    :array_2
    .array-data 0x1
        0x5at
        0xe1t
        0x49t
        0xcct
        0x8dt
        0x79t
        0x33t
        0x8et
        0x1at
        0x8et
        0x17t
        0xedt
        0xft
        0x1at
        0x87t
        0x8at
        0x88t
        0x20t
        0x81t
        0xc2t
    .end array-data

    :array_3
    .array-data 0x1
        0x11t
        0xe0t
        0x36t
        0x24t
        0x8bt
        0x3bt
        0x39t
        0x55t
        0x12t
        0xcct
        0x6ft
        0x9dt
        0xb6t
        0x16t
        0xd3t
        0x1at
        0x5bt
        0x78t
        0x16t
        0x9dt
    .end array-data

    :array_4
    .array-data 0x1
        0x7dt
        0xe8t
        0x73t
        0x6ft
        0xbat
        0xc1t
        0x95t
        0xc9t
        0x6at
        0x51t
        0xft
        0x13t
        0x8dt
        0x3bt
        0xe5t
        0xf7t
        0x7dt
        0xbft
        0xadt
        0x3dt
    .end array-data

    :array_5
    .array-data 0x1
        0xe8t
        0xbct
        0xe0t
        0x64t
        0xe3t
        0x63t
        0x2t
        0x38t
        0xddt
        0xd2t
        0xa5t
        0x36t
        0x37t
        0x6ct
        0xe2t
        0x56t
        0x4t
        0xfet
        0x1t
        0xa5t
    .end array-data

    :array_6
    .array-data 0x1
        0x26t
        0x8at
        0xe7t
        0x6dt
        0xaat
        0x6ct
        0xct
        0x85t
        0xa0t
        0x1et
        0xc8t
        0x50t
        0x7et
        0xe3t
        0x34t
        0xbbt
        0xd0t
        0x50t
        0x32t
        0x7dt
    .end array-data

    :array_7
    .array-data 0x1
        0xet
        0xdet
        0x5dt
        0xa0t
        0x55t
        0x21t
        0xc3t
        0x7at
        0xect
        0xeft
        0xe2t
        0x1at
        0xa2t
        0xe6t
        0x16t
        0x74t
        0x88t
        0x57t
        0xc4t
        0xa2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static SHA1(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, md:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 112
    .local v1, hash:[B
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 117
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 118
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 120
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static canForceHwUi(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-static {}, Lcom/nvidia/NvAppSpecificHeuristics;->isExtraHwAccelerationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v3

    .line 150
    :cond_1
    invoke-static {p0}, Lcom/nvidia/NvAppSpecificHeuristics;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 156
    invoke-static {v1}, Lcom/nvidia/NvAppSpecificHeuristics;->SHA1(Ljava/lang/String;)[B

    move-result-object v2

    .line 164
    .local v2, sha1:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 165
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    if-nez v4, :cond_3

    .line 164
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_3
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/nvidia/NvAppSpecificHeuristics$App;->sha1:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    const-string v3, "NvAppSpecificHeuristics"

    const-string v4, "found matched app. forcing HW accelerated UI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 135
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 136
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 137
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAppSpecificMinOnlineCpuOnStartup(Ljava/lang/String;)I
    .locals 7
    .parameter "packageName"

    .prologue
    .line 203
    const/4 v1, -0x1

    .line 205
    .local v1, numCpu:I
    if-nez p0, :cond_0

    move v2, v1

    .line 227
    .end local v1           #numCpu:I
    .local v2, numCpu:I
    :goto_0
    return v2

    .line 209
    .end local v2           #numCpu:I
    .restart local v1       #numCpu:I
    :cond_0
    invoke-static {p0}, Lcom/nvidia/NvAppSpecificHeuristics;->SHA1(Ljava/lang/String;)[B

    move-result-object v3

    .line 216
    .local v3, sha1:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 217
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    if-gtz v4, :cond_2

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_2
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/nvidia/NvAppSpecificHeuristics$App;->sha1:[B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    sget-object v4, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v4, v4, v0

    iget v1, v4, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    .line 222
    const-string v4, "NvAppSpecificHeuristics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matched app. returning minOnlineCpu needs to be on application startup as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 223
    .end local v1           #numCpu:I
    .restart local v2       #numCpu:I
    goto :goto_0

    .end local v2           #numCpu:I
    .restart local v1       #numCpu:I
    :cond_3
    move v2, v1

    .line 227
    .end local v1           #numCpu:I
    .restart local v2       #numCpu:I
    goto :goto_0
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appName"

    .prologue
    .line 124
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .local v0, index:I
    if-gez v0, :cond_0

    .line 126
    const-string v1, "NvAppSpecificHeuristics"

    const-string v2, "appName does not contain \'/\'. the packageName cannot be extracted from appName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static isExtraHwAccelerationEnabled()Z
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v1, "persist.sys.extra_hw_accel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    .local v0, enabled:Z
    return v0
.end method

.method public static wantDoubleBuffering(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 178
    if-nez p0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    invoke-static {p0}, Lcom/nvidia/NvAppSpecificHeuristics;->SHA1(Ljava/lang/String;)[B

    move-result-object v1

    .line 189
    .local v1, sha1:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 190
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceDoubleBuffering:Z

    if-nez v3, :cond_3

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_3
    sget-object v3, Lcom/nvidia/NvAppSpecificHeuristics;->mAppList:[Lcom/nvidia/NvAppSpecificHeuristics$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/nvidia/NvAppSpecificHeuristics$App;->sha1:[B

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    const-string v2, "NvAppSpecificHeuristics"

    const-string v3, "found matched app. wanting to force double buffering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v2, 0x1

    goto :goto_0
.end method
