.class public final Lcom/android/internal/app/TYRingtonePickerActivity;
.super Landroid/app/Activity;
.source "TYRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/TYRingtonePickerActivity$ArrayListCursor;
    }
.end annotation


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "TYRingtonePickerActivity"


# instance fields
.field private btn_select_cancel:Landroid/widget/Button;

.field private btn_select_done:Landroid/widget/Button;

.field private flag:I

.field private lv_ringtong:Landroid/widget/ListView;

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private textView:Landroid/widget/TextView;

.field private tv_empty:Landroid/widget/TextView;

.field private types:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I

    .line 78
    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 81
    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 84
    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSampleRingtonePos:I

    .line 582
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/TYRingtonePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/app/TYRingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/TYRingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/TYRingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/media/RingtoneManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/TYRingtonePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/TYRingtonePickerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/TYRingtonePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/TYRingtonePickerActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/app/TYRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/TYRingtonePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/TYRingtonePickerActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/app/TYRingtonePickerActivity;->saveRingtone(Landroid/net/Uri;)V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 364
    const v0, 0x10403d5

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 368
    const v0, 0x10403d7

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 3
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->textView:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 359
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mStaticItemCount:I

    .line 360
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private convertCursor()V
    .locals 7

    .prologue
    .line 454
    const/4 v3, 0x0

    .line 455
    .local v3, ring_column_names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 456
    .local v0, allRingtonesInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v4, singleRingtoneInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #allRingtonesInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 464
    .restart local v0       #allRingtonesInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 465
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    .end local v1           #i:I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 472
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 473
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 474
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 476
    .local v2, locale:Ljava/util/Locale;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zh_CN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "zh_TW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 479
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getAudioTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v2           #locale:Ljava/util/Locale;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 482
    .restart local v2       #locale:Ljava/util/Locale;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 485
    .end local v2           #locale:Ljava/util/Locale;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 488
    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #singleRingtoneInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4       #singleRingtoneInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 494
    .end local v1           #i:I
    :cond_5
    if-eqz v3, :cond_6

    .line 495
    new-instance v5, Lcom/android/internal/app/TYRingtonePickerActivity$ArrayListCursor;

    invoke-direct {v5, p0, v3, v0}, Lcom/android/internal/app/TYRingtonePickerActivity$ArrayListCursor;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity;[Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 498
    :cond_6
    return-void
.end method

.method private getAudioTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tyMediaTitle"

    .prologue
    .line 501
    move-object v0, p1

    .line 502
    .local v0, mediaTitle:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getRingToneHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 503
    .local v1, tyAudioHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #mediaTitle:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 506
    .restart local v0       #mediaTitle:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 447
    if-gez p1, :cond_0

    .line 449
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingToneHashMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x10404ee

    .line 510
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 511
    .local v3, tyAudioHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 512
    const-string v4, "K-Touch"

    const v5, 0x10404d6

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v4, "ChineseInkPainting"

    const v5, 0x10404d7

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v4, "ClassicElegance"

    const v5, 0x10404d8

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v4, "Humor1"

    const v5, 0x10404d9

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v4, "Humor2"

    const v5, 0x10404da

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v4, "Latin"

    const v5, 0x10404db

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v4, "MusicBox"

    const v5, 0x10404dc

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const-string v4, "NeonNight"

    const v5, 0x10404dd

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v4, "SkyDream1"

    const v5, 0x10404de

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v4, "SkyDream2"

    const v5, 0x10404df

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v4, "World"

    const v5, 0x10404e0

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v4, "YouthCampus"

    const v5, 0x10404e1

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v4, "Thriller Three"

    const v5, 0x10404e2

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v4, "Terrible Twos"

    const v5, 0x10404e3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v4, "Noisey One"

    const v5, 0x10404e4

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v4, "Medieval Jaunt"

    const v5, 0x10404e5

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v4, "Flutey Phone"

    const v5, 0x10404e6

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v4, "Digital Phone"

    const v5, 0x10404e7

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v4, "Chimey Phone"

    const v5, 0x10404e8

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v4, "Bell Phone"

    const v5, 0x10404e9

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v4, "Beat Plucker"

    const v5, 0x10404ea

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string v4, "Captain\'s Log"

    const v5, 0x10404eb

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v4, "Caffeinated Rattlesnake"

    const v5, 0x10404ec

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v4, "Look At Me"

    const v5, 0x10404ed

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v4, "Missed It"

    const v5, 0x10404ef

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v4, "On The Hunt"

    const v5, 0x10404f0

    invoke-virtual {p0, v5}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v1, "Message"

    .line 566
    .local v1, msg:Ljava/lang/String;
    const-string v2, ""

    .line 567
    .local v2, num:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v4, 0x9

    if-gt v0, v4, :cond_0

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    const/16 v0, 0xa

    :goto_1
    const/16 v4, 0xd

    if-gt v0, v4, :cond_1

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/android/internal/app/TYRingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 579
    :cond_1
    return-object v3
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 441
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private onPrepareListView(Landroid/widget/ListView;)V
    .locals 1
    .parameter "listView"

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/app/TYRingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    .line 206
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    .line 212
    invoke-direct {p0, p1}, Lcom/android/internal/app/TYRingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 216
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 219
    :cond_1
    return-void
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    iput p1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSampleRingtonePos:I

    .line 374
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void
.end method

.method private saveRingtone(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 332
    if-nez p1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 338
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "is_alarm"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v2, "is_notification"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "is_music"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showListView()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 224
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHasDefaultItem:Z

    .line 225
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 226
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 227
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 231
    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHasSilentItem:Z

    .line 234
    new-instance v1, Landroid/media/RingtoneManager;

    invoke-direct {v1, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 237
    const-string v1, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 239
    .local v6, includeDrm:Z
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v6}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 242
    const-string v1, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v7, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->types:I

    .line 243
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->types:I

    if-eq v1, v10, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->types:I

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->setVolumeControlStream(I)V

    .line 251
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 254
    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    .line 256
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    if-ne v1, v9, :cond_9

    .line 257
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getInternalCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 258
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 261
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->convertCursor()V

    .line 272
    .end local v8           #locale:Ljava/util/Locale;
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 274
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 276
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 277
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x1090093

    iget-object v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string/jumbo v1, "title"

    aput-object v1, v4, v11

    new-array v5, v9, [I

    const v1, 0x1020014

    aput v1, v5, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 284
    .local v0, adapter:Landroid/widget/SimpleCursorAdapter;
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    .end local v0           #adapter:Landroid/widget/SimpleCursorAdapter;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 288
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v10, :cond_5

    .line 289
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RingtoneManager;->mGetRingtonePosition(Landroid/net/Uri;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 292
    :cond_5
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    if-ne v1, v10, :cond_7

    .line 293
    iget-boolean v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHasDefaultItem:Z

    if-ne v1, v9, :cond_6

    .line 294
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 296
    :cond_6
    const-string v1, "is_set_default_ringtone"

    invoke-virtual {v7, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->types:I

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getSystemRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RingtoneManager;->mGetRingtonePosition(Landroid/net/Uri;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/TYRingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    .line 304
    :cond_7
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    if-ne v1, v9, :cond_a

    .line 305
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 311
    :cond_8
    :goto_1
    return-void

    .line 268
    :cond_9
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 269
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->getExternalCursor()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 307
    :cond_a
    sget-boolean v1, Lcom/android/internal/app/TYRingtonePickerTabActivity;->isRingtone:Z

    if-eqz v1, :cond_8

    .line 308
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 438
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x10900ad

    invoke-virtual {p0, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->setContentView(I)V

    .line 114
    const v0, 0x102032c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    .line 115
    const v0, 0x102032d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->tv_empty:Landroid/widget/TextView;

    .line 116
    const v0, 0x102032e

    invoke-virtual {p0, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;

    .line 117
    const v0, 0x102032f

    invoke-virtual {p0, v0}, Lcom/android/internal/app/TYRingtonePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_cancel:Landroid/widget/Button;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->showListView()V

    .line 123
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->tv_empty:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->lv_ringtong:Landroid/widget/ListView;

    new-instance v1, Lcom/android/internal/app/TYRingtonePickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/TYRingtonePickerActivity$1;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/app/TYRingtonePickerActivity$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/TYRingtonePickerActivity$2;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/app/TYRingtonePickerActivity$3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/TYRingtonePickerActivity$3;-><init>(Lcom/android/internal/app/TYRingtonePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->tv_empty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->btn_select_done:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 426
    invoke-direct {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 427
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 320
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, state:Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    const v1, 0x10404f4

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 328
    .end local v0           #state:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 420
    invoke-direct {p0}, Lcom/android/internal/app/TYRingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 421
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 379
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 380
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 394
    :cond_2
    iget v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 395
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 406
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 412
    :goto_1
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 409
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/TYRingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/app/TYRingtonePickerActivity;->flag:I

    invoke-virtual {v1, v2, v3}, Landroid/media/RingtoneManager;->mGetRingtone(II)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
