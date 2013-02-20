.class Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;
.super Landroid/database/AbstractCursor;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArrayListCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mRows:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;[Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .parameter "columnNames"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v6, 0x0

    .line 524
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 525
    array-length v0, p2

    .line 526
    .local v0, colCount:I
    const/4 v1, 0x0

    .line 528
    .local v1, foundID:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 529
    aget-object v4, p2, v2

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 530
    iput-object p2, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 531
    const/4 v1, 0x1

    .line 536
    :cond_0
    if-nez v1, :cond_1

    .line 537
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    .line 538
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    array-length v5, p2

    invoke-static {p2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    .line 543
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 544
    .local v3, rowCount:I
    new-array v4, v3, [Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    .line 546
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 547
    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v5, v2

    .line 548
    if-nez v1, :cond_2

    .line 549
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    aget-object v4, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 528
    .end local v3           #rowCount:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 552
    .restart local v3       #rowCount:I
    :cond_4
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 8
    .parameter "position"
    .parameter "window"

    .prologue
    .line 556
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->getCount()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 562
    :try_start_0
    iget v5, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 563
    .local v5, oldpos:I
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 564
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 565
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->getColumnCount()I

    move-result v1

    .line 567
    .local v1, columnNum:I
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 568
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 569
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 570
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v7, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 571
    .local v2, data:Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 572
    instance-of v6, v2, [B

    if-eqz v6, :cond_3

    .line 573
    check-cast v2, [B

    .end local v2           #data:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .line 574
    .local v3, field:[B
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v6

    if-nez v6, :cond_5

    .line 575
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 595
    .end local v1           #columnNum:I
    .end local v3           #field:[B
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catch_0
    move-exception v6

    .line 598
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 579
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 580
    .local v3, field:Ljava/lang/String;
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v6, v4}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5

    .line 581
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 598
    .end local v1           #columnNum:I
    .end local v2           #data:Ljava/lang/Object;
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #oldpos:I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v6

    .line 586
    .restart local v1       #columnNum:I
    .restart local v2       #data:Ljava/lang/Object;
    .restart local v4       #i:I
    .restart local v5       #oldpos:I
    :cond_4
    :try_start_2
    iget v6, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p2, v6, v4}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_5

    .line 587
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    goto :goto_1

    .line 569
    .end local v2           #data:Ljava/lang/Object;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 594
    .end local v4           #i:I
    :cond_6
    iput v5, p0, Landroid/database/AbstractCursor;->mPos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 598
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    array-length v0, v0

    return v0
.end method

.method public getDouble(I)D
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, num:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public getFloat(I)F
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, num:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getInt(I)I
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, num:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLong(I)J
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, num:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getShort(I)S
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, num:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 619
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 620
    .local v0, cell:Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$ArrayListCursor;->mRows:[Ljava/util/ArrayList;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
