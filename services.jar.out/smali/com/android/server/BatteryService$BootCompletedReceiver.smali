.class final Lcom/android/server/BatteryService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    #setter for: Lcom/android/server/BatteryService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->access$002(Lcom/android/server/BatteryService;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 166
    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;Z)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v1, "ktouch.intent.action.TEMPERATURE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->update()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)V

    .line 169
    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mQueue:Lcom/android/server/BatteryService$TemperatureQueue;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$TemperatureQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryTemperature:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/BatteryService$TemperatureQueue;->push(I)V

    .line 170
    iget-object v1, p0, Lcom/android/server/BatteryService$BootCompletedReceiver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->sendTempeStatBroadcastOrNot()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)V

    .line 171
    const-string v1, "TestBattery"

    const-string v2, "received TEMPERATURE_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
