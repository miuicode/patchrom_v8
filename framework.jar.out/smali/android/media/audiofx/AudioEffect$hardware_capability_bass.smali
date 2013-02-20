.class public final enum Landroid/media/audiofx/AudioEffect$hardware_capability_bass;
.super Ljava/lang/Enum;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "hardware_capability_bass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/audiofx/AudioEffect$hardware_capability_bass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

.field public static final enum EQ:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

.field public static final enum NO:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

.field public static final enum REAL:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1236
    new-instance v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    const-string v1, "NO"

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->NO:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    .line 1237
    new-instance v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    const-string v1, "EQ"

    invoke-direct {v0, v1, v3}, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->EQ:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    .line 1238
    new-instance v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    const-string v1, "REAL"

    invoke-direct {v0, v1, v4}, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->REAL:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    .line 1235
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    sget-object v1, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->NO:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    aput-object v1, v0, v2

    sget-object v1, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->EQ:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    aput-object v1, v0, v3

    sget-object v1, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->REAL:Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->$VALUES:[Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/audiofx/AudioEffect$hardware_capability_bass;
    .locals 1
    .parameter "name"

    .prologue
    .line 1235
    const-class v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    return-object v0
.end method

.method public static values()[Landroid/media/audiofx/AudioEffect$hardware_capability_bass;
    .locals 1

    .prologue
    .line 1235
    sget-object v0, Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->$VALUES:[Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    invoke-virtual {v0}, [Landroid/media/audiofx/AudioEffect$hardware_capability_bass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$hardware_capability_bass;

    return-object v0
.end method
