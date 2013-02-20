.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$OrientationPoller;,
        Landroid/view/WindowOrientationListener$SensorOverrideEventListener;,
        Landroid/view/WindowOrientationListener$OrientationSensorEventListener;,
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z


# instance fields
.field mCurrentRotation:I

.field private mEnabled:Z

.field mLogEnabled:Z

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v2, -0x2

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 81
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 83
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 84
    const-string/jumbo v0, "windowsmgr.overrideOri"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 85
    new-instance v0, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;

    invoke-direct {v0, p0}, Landroid/view/WindowOrientationListener$SensorOverrideEventListener;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

    goto :goto_0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 161
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    const-string/jumbo v0, "windowsmgr.overrideOri"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 117
    const-string/jumbo v0, "windowsmgr.overrideOri"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 119
    iput-boolean v2, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 123
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 129
    iput-boolean v2, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public enable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x2

    .line 97
    const-string/jumbo v0, "windowsmgr.overrideOri"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 99
    iput-boolean v4, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 103
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    iput-boolean v4, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0
.end method

.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$OrientationSensorEventListener;

    invoke-interface {v0}, Landroid/view/WindowOrientationListener$OrientationSensorEventListener;->getProposedRotation()I

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 139
    iput p1, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 140
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 183
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 184
    return-void
.end method
