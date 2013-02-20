.class Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;
.super Landroid/content/BroadcastReceiver;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

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

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUIthread2:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUIthread1:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUIthread2:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    .line 239
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 259
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUIthread1:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$102(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUIthread2:Z
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$302(Lcom/android/internal/policy/impl/SimUnlockScreen;Z)Z

    goto :goto_0

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->getPINRemainedCount()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)Z

    .line 247
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPINCount:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v2

    if-lez v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404cd

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v5, v5, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPINCount:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .end local v1           #instructions:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;

    iget-object v2, v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I
    invoke-static {v2, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$1102(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    goto :goto_1
.end method
