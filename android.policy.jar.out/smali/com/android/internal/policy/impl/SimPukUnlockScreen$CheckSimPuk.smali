.class abstract Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
.super Ljava/lang/Thread;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private result:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "puk"
    .parameter "pin"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->result:Z

    .line 230
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 197
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mAttachedBroadcast()V

    .line 200
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->result:Z

    return v0
.end method

.method private mAttachedBroadcast()V
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 209
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->result:Z

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread1:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$102(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Z)Z

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    new-instance v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    new-instance v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
