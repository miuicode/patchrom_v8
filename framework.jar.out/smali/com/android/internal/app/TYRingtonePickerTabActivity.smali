.class public Lcom/android/internal/app/TYRingtonePickerTabActivity;
.super Landroid/app/TabActivity;
.source "TYRingtonePickerTabActivity.java"


# static fields
.field public static final INTENT_FLAG_EXTERNAL_RINGTONE:I = 0x2

.field public static final INTENT_FLAG_INTERNAL_RINGTONE:I = 0x1

.field public static final IS_SET_DEFAULT_RINGTONE:Ljava/lang/String; = "is_set_default_ringtone"

.field private static final TAG:Ljava/lang/String; = "TYRingtonePickerTabActivity"

.field private static final TAG_EXTERNAL_RINGTONE:Ljava/lang/String; = "tab_external_ringtone"

.field private static final TAG_INTERNAL_RINGTONE:Ljava/lang/String; = "tab_internal_ringtone"

.field public static isRingtone:Z


# instance fields
.field private mExternalIntent:Landroid/content/Intent;

.field private mInternalIntent:Landroid/content/Intent;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    .locals 3
    .parameter "tag"
    .parameter "resLabel"
    .parameter "resIcon"
    .parameter "content"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v6}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->requestWindowFeature(I)Z

    .line 40
    const v5, 0x10900ae

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    .line 44
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    const-class v8, Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    new-instance v5, Landroid/media/RingtoneManager;

    invoke-direct {v5, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 50
    const-string v5, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .local v0, includeDrm:Z
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 54
    const-string v5, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, types:I
    if-eq v4, v9, :cond_0

    .line 56
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 59
    :cond_0
    const-string v5, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 61
    .local v2, mExistingUri:Landroid/net/Uri;
    const-string v5, "TYRingtonePickerTabActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExistingUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sput-boolean v7, Lcom/android/internal/app/TYRingtonePickerTabActivity;->isRingtone:Z

    .line 64
    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, path:Ljava/lang/String;
    const-string v5, "/internal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 67
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v2, v10}, Landroid/media/RingtoneManager;->isRingtone(Landroid/net/Uri;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/app/TYRingtonePickerTabActivity;->isRingtone:Z

    .line 71
    .end local v3           #path:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    const-string v9, "is_set_default_ringtone"

    sget-boolean v5, Lcom/android/internal/app/TYRingtonePickerTabActivity;->isRingtone:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iput-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    .line 74
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    const-class v6, Lcom/android/internal/app/TYRingtonePickerActivity;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 81
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v6, "tab_internal_ringtone"

    const v7, 0x10404f1

    const v8, 0x10805d6

    iget-object v9, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mInternalIntent:Landroid/content/Intent;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->buildTabSpec(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 86
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v6, "tab_external_ringtone"

    const v7, 0x10404f2

    const v8, 0x10805d5

    iget-object v9, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mExternalIntent:Landroid/content/Intent;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/internal/app/TYRingtonePickerTabActivity;->buildTabSpec(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 90
    sget-boolean v5, Lcom/android/internal/app/TYRingtonePickerTabActivity;->isRingtone:Z

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v6, "tab_external_ringtone"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 93
    :cond_2
    return-void

    :cond_3
    move v5, v7

    .line 71
    goto :goto_0
.end method
