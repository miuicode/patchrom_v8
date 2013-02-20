.class public Lcom/nvidia/NvCpuClient;
.super Ljava/lang/Object;
.source "NvCpuClient.java"


# static fields
.field public static final NVCPU_BOOST_STRENGTH_COUNT:I = 0x7

.field public static final NVCPU_BOOST_STRENGTH_HIGH:I = 0x5

.field public static final NVCPU_BOOST_STRENGTH_HIGHEST:I = 0x6

.field public static final NVCPU_BOOST_STRENGTH_LOW:I = 0x1

.field public static final NVCPU_BOOST_STRENGTH_LOWEST:I = 0x0

.field public static final NVCPU_BOOST_STRENGTH_MEDIUM:I = 0x3

.field public static final NVCPU_BOOST_STRENGTH_MEDIUM_HIGH:I = 0x4

.field public static final NVCPU_BOOST_STRENGTH_MEDIUM_LOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NvCpuClient"


# instance fields
.field private mNativeNvCpuClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/nvidia/NvCpuClient;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    .line 73
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->init()V

    .line 74
    return-void
.end method

.method private native init()V
.end method

.method private static native nativeClassInit()V
.end method

.method private native release()V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget v0, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    .line 85
    :cond_0
    return-void

    .line 81
    :catchall_0
    move-exception v0

    iget v1, p0, Lcom/nvidia/NvCpuClient;->mNativeNvCpuClient:I

    if-eqz v1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/nvidia/NvCpuClient;->release()V

    :cond_1
    throw v0
.end method

.method public native pokeCPU(IJJ)V
.end method

.method public native requestCpuFreqMaxHandle(IJ)Ljava/io/FileDescriptor;
.end method

.method public native requestMinOnlineCpuCount(IJJ)V
.end method

.method public native requestMinOnlineCpuCountHandle(IJ)Ljava/io/FileDescriptor;
.end method
