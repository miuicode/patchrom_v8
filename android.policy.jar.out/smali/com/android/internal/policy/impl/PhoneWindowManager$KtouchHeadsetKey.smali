.class Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KtouchHeadsetKey"
.end annotation


# instance fields
.field downTime:J

.field isDown:Z

.field isUp:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field upTime:J


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->deleteKeyState()V

    return-void
.end method

.method private deleteKeyState()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->isDown:Z

    .line 364
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->isUp:Z

    .line 365
    iput-wide v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->downTime:J

    .line 366
    iput-wide v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$KtouchHeadsetKey;->upTime:J

    .line 367
    return-void
.end method
