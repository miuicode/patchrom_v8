.class public Lcom/nvidia/NvAppProfile;
.super Ljava/lang/Object;
.source "NvAppProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nvidia/NvAppProfile$App;
    }
.end annotation


# static fields
.field private static final DEBUG_NV_APP_PROFILE:Z = false

.field private static final EXTRA_HW_ACCELERATION_PROPERTY:Ljava/lang/String; = "persist.sys.extra_hw_accel"

.field private static final TAG:Ljava/lang/String; = "NvAppProfile"

.field private static final mAppList:[Lcom/nvidia/NvAppProfile$App;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x1

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nvidia/NvAppProfile$App;

    const/4 v1, 0x0

    new-instance v2, Lcom/nvidia/NvAppProfile$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.professional"

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4, v5}, Lcom/nvidia/NvAppProfile$App;-><init>(Ljava/lang/String;[BZ)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/nvidia/NvAppProfile$App;

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    invoke-direct {v1, v2, v3, v5}, Lcom/nvidia/NvAppProfile$App;-><init>(Ljava/lang/String;[BZ)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/nvidia/NvAppProfile$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.standard"

    new-array v4, v6, [B

    fill-array-data v4, :array_2

    invoke-direct {v2, v3, v4, v5}, Lcom/nvidia/NvAppProfile$App;-><init>(Ljava/lang/String;[BZ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nvidia/NvAppProfile$App;

    const-string v3, "com.netflix.mediaclient"

    new-array v4, v6, [B

    fill-array-data v4, :array_3

    invoke-direct {v2, v3, v4, v5}, Lcom/nvidia/NvAppProfile$App;-><init>(Ljava/lang/String;[BZ)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nvidia/NvAppProfile;->mAppList:[Lcom/nvidia/NvAppProfile$App;

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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static SHA1(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, md:Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 77
    .local v1, hash:[B
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 85
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static canForceHwUi(Ljava/lang/String;)Z
    .locals 5
    .parameter "appName"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-static {}, Lcom/nvidia/NvAppProfile;->isExtraHwAccelerationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v3

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/nvidia/NvAppProfile;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-static {v1}, Lcom/nvidia/NvAppProfile;->SHA1(Ljava/lang/String;)[B

    move-result-object v2

    .line 129
    .local v2, sha1:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/nvidia/NvAppProfile;->mAppList:[Lcom/nvidia/NvAppProfile$App;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 130
    sget-object v4, Lcom/nvidia/NvAppProfile;->mAppList:[Lcom/nvidia/NvAppProfile$App;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Lcom/nvidia/NvAppProfile$App;->forceHwUi:Z

    if-nez v4, :cond_3

    .line 129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_3
    sget-object v4, Lcom/nvidia/NvAppProfile;->mAppList:[Lcom/nvidia/NvAppProfile$App;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/nvidia/NvAppProfile$App;->sha1:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    const-string v3, "NvAppProfile"

    const-string v4, "found matched app. forcing HW accelerated UI"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 98
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 100
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 101
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 102
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "appName"

    .prologue
    .line 89
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 90
    .local v0, index:I
    if-gez v0, :cond_0

    .line 91
    const-string v1, "NvAppProfile"

    const-string v2, "appName does not contain \'/\'. the packageName cannot be extracted from appName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    .line 94
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
    .line 65
    const-string/jumbo v1, "persist.sys.extra_hw_accel"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, enabled:Z
    return v0
.end method
