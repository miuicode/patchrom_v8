.class Landroid/media/AudioService$5;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 4061
    iput-object p1, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4063
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->setModemOutputLocked()V
    invoke-static {v0}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)V

    .line 4064
    iget-object v0, p0, Landroid/media/AudioService$5;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->restoreModemStreamVolumes()V
    invoke-static {v0}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)V

    .line 4065
    return-void
.end method
