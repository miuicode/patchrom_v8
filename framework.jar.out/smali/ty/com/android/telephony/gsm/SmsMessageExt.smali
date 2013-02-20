.class public Lty/com/android/telephony/gsm/SmsMessageExt;
.super Ljava/lang/Object;
.source "SmsMessageExt.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "GSM_SMSMESSAGE_EXT"

    sput-object v0, Lty/com/android/telephony/gsm/SmsMessageExt;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 42
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 44
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 46
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 47
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 54
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 55
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v0

    .line 51
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Ljava/lang/String;[BI)[B
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 99
    const/4 v6, 0x4

    invoke-static {p0, p1, v6}, Lty/com/android/telephony/gsm/SmsMessageExt;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 104
    .local v1, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_1

    .line 106
    const/4 v6, 0x0

    invoke-static {p3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v3

    .line 108
    .local v3, ret:[I
    const/4 v6, 0x3

    aget v6, v3, v6

    if-eq p5, v6, :cond_1

    if-eqz p5, :cond_0

    const/4 v6, 0x1

    if-ne p5, v6, :cond_1

    .line 111
    :cond_0
    const/4 v6, 0x3

    aget p5, v3, v6

    .line 115
    .end local v3           #ret:[I
    :cond_1
    const/4 v6, 0x1

    if-ne p5, v6, :cond_2

    .line 116
    :try_start_0
    invoke-static {p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 141
    .local v5, userData:[B
    :goto_0
    const/4 v6, 0x1

    if-ne p5, v6, :cond_4

    .line 142
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_3

    .line 144
    const/4 v6, 0x0

    .line 173
    .end local v5           #userData:[B
    :goto_1
    return-object v6

    .line 119
    :cond_2
    :try_start_1
    invoke-static {p3, p4}, Lty/com/android/telephony/gsm/SmsMessageExt;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_0

    .line 120
    .end local v5           #userData:[B
    :catch_0
    move-exception v4

    .line 121
    .local v4, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    sget-object v6, Lty/com/android/telephony/gsm/SmsMessageExt;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    const/4 v6, 0x0

    goto :goto_1

    .line 127
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 131
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    invoke-static {p3, p4}, Lty/com/android/telephony/gsm/SmsMessageExt;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 132
    .restart local v5       #userData:[B
    const/4 p5, 0x3

    goto :goto_0

    .line 133
    .end local v5           #userData:[B
    :catch_2
    move-exception v4

    .line 134
    .restart local v4       #uex:Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lty/com/android/telephony/gsm/SmsMessageExt;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v6, 0x0

    goto :goto_1

    .line 154
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #userData:[B
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    :goto_2
    const/4 v6, 0x7

    new-array v0, v6, [B

    const/4 v6, 0x0

    iget v7, p2, Landroid/text/format/Time;->year:I

    rem-int/lit8 v7, v7, 0x64

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x1

    iget v7, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x2

    iget v7, p2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x3

    iget v7, p2, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x4

    iget v7, p2, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x5

    iget v7, p2, Landroid/text/format/Time;->second:I

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v7}, Lty/com/android/telephony/gsm/SmsMessageExt;->intToBcd(I)B

    move-result v7

    aput-byte v7, v0, v6

    .line 170
    .local v0, bScts:[B
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 173
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_1

    .line 156
    .end local v0           #bScts:[B
    :cond_4
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_5

    .line 158
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 162
    :cond_5
    const/16 v6, 0xb

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;B)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 66
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 74
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 82
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 89
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 91
    return-object v0

    .line 69
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v2, v3

    .line 82
    goto :goto_1
.end method

.method private static intToBcd(I)B
    .locals 2
    .parameter "value"

    .prologue
    .line 177
    rem-int/lit8 v0, p0, 0xa

    shl-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
