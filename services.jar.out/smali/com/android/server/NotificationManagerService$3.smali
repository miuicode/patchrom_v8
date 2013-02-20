.class Lcom/android/server/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x1388

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, action:Ljava/lang/String;
    const/4 v6, 0x0

    .line 344
    .local v6, queryRestart:Z
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 346
    const-string v8, "plugged"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2

    const-string v8, "plugged"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    .line 347
    invoke-static {v9}, Lcom/android/server/NotificationManagerService;->access$1202(Z)Z

    .line 355
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$1300()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 356
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->pokeWakelock(I)V
    invoke-static {v8, v12}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;I)V

    .line 357
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1302(Z)Z

    .line 405
    :cond_1
    :goto_1
    return-void

    .line 349
    :cond_2
    const-string v8, "plugged"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    .line 350
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$1200()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    invoke-static {v9}, Lcom/android/server/NotificationManagerService;->access$1302(Z)Z

    .line 352
    invoke-static {v10}, Lcom/android/server/NotificationManagerService;->access$1202(Z)Z

    goto :goto_0

    .line 361
    :cond_3
    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 363
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->pokeWakelock(I)V
    invoke-static {v8, v12}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;I)V

    goto :goto_1

    .line 365
    :cond_4
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 370
    :cond_5
    const/4 v4, 0x0

    .line 371
    .local v4, pkgList:[Ljava/lang/String;
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 372
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 386
    :goto_2
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    .line 387
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 388
    .local v5, pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    if-nez v6, :cond_8

    move v8, v9

    :goto_4
    invoke-virtual {v11, v5, v10, v10, v8}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 373
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 374
    const-string v8, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 376
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 377
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 380
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 381
    .restart local v5       #pkgName:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 384
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #pkgList:[Ljava/lang/String;
    aput-object v5, v4, v10

    .restart local v4       #pkgList:[Ljava/lang/String;
    goto :goto_2

    .end local v7           #uri:Landroid/net/Uri;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_8
    move v8, v10

    .line 388
    goto :goto_4

    .line 391
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #pkgList:[Ljava/lang/String;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_9
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 394
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_1

    .line 395
    :cond_a
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 396
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #setter for: Lcom/android/server/NotificationManagerService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto/16 :goto_1

    .line 397
    :cond_b
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 398
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    #setter for: Lcom/android/server/NotificationManagerService;->mInCall:Z
    invoke-static {v8, v9}, Lcom/android/server/NotificationManagerService;->access$1602(Lcom/android/server/NotificationManagerService;Z)Z

    .line 400
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #calls: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1700(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_1

    .line 401
    :cond_c
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 403
    iget-object v8, p0, Lcom/android/server/NotificationManagerService$3;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;
    invoke-static {v8}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_1
.end method
