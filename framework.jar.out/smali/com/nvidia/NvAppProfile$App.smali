.class Lcom/nvidia/NvAppProfile$App;
.super Ljava/lang/Object;
.source "NvAppProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvAppProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final forceHwUi:Z

.field public packageName:Ljava/lang/String;

.field public final sha1:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[BZ)V
    .locals 0
    .parameter "_packageName"
    .parameter "_sha1"
    .parameter "_forceHwUi"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nvidia/NvAppProfile$App;->packageName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/nvidia/NvAppProfile$App;->sha1:[B

    .line 41
    iput-boolean p3, p0, Lcom/nvidia/NvAppProfile$App;->forceHwUi:Z

    .line 42
    return-void
.end method
