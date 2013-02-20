.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;
.super Landroid/content/BroadcastReceiver;
.source "SimPukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;
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
    .line 230
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread2:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Z)Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread1:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread2:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->result:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 260
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread1:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$102(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Z)Z

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUIthread2:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Z)Z

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getPINRemainedCount()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Z

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404d0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v5, v5, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPUKCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$3;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
