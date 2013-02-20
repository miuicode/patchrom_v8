.class public Lty/com/android/telephony/SmsMessageExt;
.super Ljava/lang/Object;
.source "SmsMessageExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;[BI)[B
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 26
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 27
    invoke-static/range {p0 .. p5}, Lty/com/android/telephony/cdma/SmsMessageExt;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;[BI)[B

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    :cond_0
    invoke-static/range {p0 .. p5}, Lty/com/android/telephony/gsm/SmsMessageExt;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;[BI)[B

    move-result-object v1

    goto :goto_0
.end method
