.class Lcom/nvidia/NvAppSpecificHeuristics$App;
.super Ljava/lang/Object;
.source "NvAppSpecificHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvAppSpecificHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final forceDoubleBuffering:Z

.field public final forceHwUi:Z

.field public final minOnlineCpuOnStartup:I

.field public packageName:Ljava/lang/String;

.field public final sha1:[B


# direct methods
.method constructor <init>(Ljava/lang/String;[BZZI)V
    .locals 0
    .parameter "_packageName"
    .parameter "_sha1"
    .parameter "_forceHwUi"
    .parameter "_forceDoubleBuffering"
    .parameter "_minOnlineCpuOnStartup"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->packageName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->sha1:[B

    .line 42
    iput-boolean p3, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceHwUi:Z

    .line 43
    iput-boolean p4, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->forceDoubleBuffering:Z

    .line 44
    iput p5, p0, Lcom/nvidia/NvAppSpecificHeuristics$App;->minOnlineCpuOnStartup:I

    .line 45
    return-void
.end method
