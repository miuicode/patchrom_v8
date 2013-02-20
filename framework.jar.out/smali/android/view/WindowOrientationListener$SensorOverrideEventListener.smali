.class final Landroid/view/WindowOrientationListener$SensorOverrideEventListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/view/WindowOrientationListener$OrientationSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorOverrideEventListener"
.end annotation


# instance fields
.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field rotation:I


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 3
    .parameter "orientationListener"

    .prologue
    .line 645
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 647
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/WindowOrientationListener$OrientationPoller;

    iget-object v2, p0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-direct {v1, v2, p0}, Landroid/view/WindowOrientationListener$OrientationPoller;-><init>(Landroid/view/WindowOrientationListener;Landroid/view/WindowOrientationListener$SensorOverrideEventListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 649
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->rotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 660
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 652
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {p0}, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->getProposedRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 653
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 663
    iput p1, p0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;->rotation:I

    .line 664
    return-void
.end method
