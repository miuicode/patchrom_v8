.class final Landroid/view/WindowOrientationListener$OrientationPoller;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OrientationPoller"
.end annotation


# instance fields
.field private currentRotation:I

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private final mSensorOverrideEventListener:Landroid/view/WindowOrientationListener$SensorOverrideEventListener;


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;Landroid/view/WindowOrientationListener$SensorOverrideEventListener;)V
    .locals 1
    .parameter "orientationListener"
    .parameter "sensorOverrideEventListener"

    .prologue
    .line 672
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 670
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->currentRotation:I

    .line 673
    iput-object p1, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 674
    iput-object p2, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->mSensorOverrideEventListener:Landroid/view/WindowOrientationListener$SensorOverrideEventListener;

    .line 675
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 680
    :cond_0
    :goto_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :goto_1
    const-string/jumbo v1, "windowsmgr.overrideOri"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 683
    .local v0, thisrotation:I
    iget v1, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->currentRotation:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    if-le v0, v3, :cond_0

    .line 684
    iput v0, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->currentRotation:I

    .line 685
    iget-object v1, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->mSensorOverrideEventListener:Landroid/view/WindowOrientationListener$SensorOverrideEventListener;

    invoke-virtual {v1, v0}, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->setRotation(I)V

    .line 686
    iget-object v1, p0, Landroid/view/WindowOrientationListener$OrientationPoller;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1, v0}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_0

    .line 681
    .end local v0           #thisrotation:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
