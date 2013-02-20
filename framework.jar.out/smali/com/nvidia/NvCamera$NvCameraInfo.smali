.class public Lcom/nvidia/NvCamera$NvCameraInfo;
.super Landroid/hardware/Camera$CameraInfo;
.source "NvCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/NvCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvCameraInfo"
.end annotation


# static fields
.field public static final CAMERA_CONNECTION_INTERNAL:I = 0x1

.field public static final CAMERA_CONNECTION_UNDEFINED:I = 0x0

.field public static final CAMERA_CONNECTION_USB:I = 0x2

.field public static final CAMERA_FACING_UNKNOWN:I = 0x2

.field public static final CAMERA_STEREO_CAPS_MONO:I = 0x1

.field public static final CAMERA_STEREO_CAPS_STEREO:I = 0x2

.field public static final CAMERA_STEREO_CAPS_UNDEFINED:I


# instance fields
.field public connection:I

.field public stereoCaps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    return-void
.end method
