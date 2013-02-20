.class Lcom/android/server/BatteryService$TemperatureQueue;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TemperatureQueue"
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final HIGH:I = 0x23a

.field static final NORMAL:I = 0x226

.field static final SIZE:I = 0x5


# instance fields
.field private array:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 2
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/server/BatteryService$TemperatureQueue;->this$0:Lcom/android/server/BatteryService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 739
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public isHigh()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    move v2, v3

    .line 768
    :goto_0
    return v2

    .line 760
    :cond_0
    const/4 v1, 0x0

    .line 761
    .local v1, sum:I
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 762
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 765
    :cond_1
    div-int/lit8 v2, v1, 0x5

    const/16 v4, 0x23a

    if-lt v2, v4, :cond_2

    .line 766
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 768
    goto :goto_0
.end method

.method public isNormal()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 773
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    move v2, v3

    .line 784
    :goto_0
    return v2

    .line 776
    :cond_0
    const/4 v1, 0x0

    .line 777
    .local v1, sum:I
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 778
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 781
    :cond_1
    div-int/lit8 v2, v1, 0x5

    const/16 v4, 0x226

    if-ge v2, v4, :cond_2

    move v2, v3

    .line 782
    goto :goto_0

    .line 784
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public push(I)V
    .locals 4
    .parameter "temp"

    .prologue
    .line 742
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 743
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 747
    .local v1, s:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/android/server/BatteryService$TemperatureQueue;->array:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 748
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 749
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 752
    :cond_1
    const-string v2, "TestBattery"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return-void
.end method
