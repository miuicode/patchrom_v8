.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$1;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->result:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 218
    return-void
.end method
