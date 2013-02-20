.class public Lcom/android/internal/telephony/TYHookRaw;
.super Ljava/lang/Object;
.source "TYHookRaw.java"


# static fields
.field private static final DBG:Z = true

.field private static final KT_RIL_REQ_APBP_TEST:I = 0x3a

.field private static final KT_RIL_REQ_CAVE_CDMA_AUTH:I = 0x40

.field private static final KT_RIL_REQ_CHECK_GPS_XTRA_DATA:I = 0x29

.field private static final KT_RIL_REQ_CHECK_MY:I = 0x1f

.field private static final KT_RIL_REQ_DELETE_GPS_PARAM:I = 0x33

.field private static final KT_RIL_REQ_GET_CDMA_AUTH:I = 0x42

.field private static final KT_RIL_REQ_GET_FACTSTATUS_FLAG:I = 0x3f

.field private static final KT_RIL_REQ_GET_GPS_INIT:I = 0x22

.field private static final KT_RIL_REQ_GET_GPS_LOCK:I = 0x31

.field private static final KT_RIL_REQ_GET_GPS_TYPE:I = 0x24

.field private static final KT_RIL_REQ_GET_MODEM_INFO:I = 0x3d

.field private static final KT_RIL_REQ_GET_PSENSOR_DATA:I = 0x38

.field private static final KT_RIL_REQ_GET_SET_GPS_NUMBER:I = 0x34

.field private static final KT_RIL_REQ_GET_SET_GPS_RESULT:I = 0x32

.field private static final KT_RIL_REQ_GET_SMSREG_FLAG:I = 0x36

.field private static final KT_RIL_REQ_GET_SMS_STORAGE:I = 0x20

.field private static final KT_RIL_REQ_GET_WIFI_MAC:I = 0x3c

.field private static final KT_RIL_REQ_GPS_BASE:I = 0x21

.field private static final KT_RIL_REQ_INJECT_GPS_XTRA_DATA:I = 0x28

.field private static final KT_RIL_REQ_MD5_CDMA_AUTH:I = 0x41

.field private static final KT_RIL_REQ_READ_MY:I = 0x1d

.field private static final KT_RIL_REQ_SET_FACTSTATUS_FLAG:I = 0x3e

.field private static final KT_RIL_REQ_SET_GPS_INIT:I = 0x23

.field private static final KT_RIL_REQ_SET_GPS_LOCK:I = 0x30

.field private static final KT_RIL_REQ_SET_GPS_MODE:I = 0x2c

.field private static final KT_RIL_REQ_SET_GPS_NIINIT:I = 0x2e

.field private static final KT_RIL_REQ_SET_GPS_PPP_STATE:I = 0x2b

.field private static final KT_RIL_REQ_SET_GPS_TYPE:I = 0x25

.field private static final KT_RIL_REQ_SET_GPS_USER_RSP:I = 0x2d

.field private static final KT_RIL_REQ_SET_GPS_XINIT:I = 0x2f

.field private static final KT_RIL_REQ_SET_PSENSOR_DATA:I = 0x37

.field private static final KT_RIL_REQ_SET_SMSREG_FLAG:I = 0x35

.field private static final KT_RIL_REQ_SET_WIFI_MAC:I = 0x3b

.field private static final KT_RIL_REQ_START_GPS_DATA:I = 0x26

.field private static final KT_RIL_REQ_STOP_GPS_DATA:I = 0x27

.field private static final KT_RIL_REQ_TRANSFER_GPS_XTRA_FILE:I = 0x2a

.field private static final KT_RIL_REQ_WRITE_MY:I = 0x1e

.field static final TAG:Ljava/lang/String; = "TYHookRaw"

.field private static final mOemIdentifier:Ljava/lang/String; = "TYKTOUCH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetFactStatus([B)I
    .locals 11
    .parameter "pFactItem"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 1093
    const-string/jumbo v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1094
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    array-length v3, p0

    .line 1096
    .local v3, nFactItemLen:I
    if-gtz v3, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return v7

    .line 1101
    :cond_1
    add-int/lit8 v8, v3, 0x20

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1102
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1103
    const/16 v8, 0x20

    new-array v5, v8, [B

    .line 1106
    .local v5, rawResponse:[B
    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v10, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1107
    const/16 v8, 0x3f

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1108
    add-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1109
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1110
    const/4 v1, 0x0

    .line 1111
    .local v1, end:B
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1112
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1114
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1115
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 1116
    .local v6, retLens:I
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GetFactStatus() retLens = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-ltz v6, :cond_0

    .line 1118
    const/4 v8, 0x0

    invoke-static {v5, v8, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1119
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1120
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    .line 1122
    .end local v6           #retLens:I
    :catch_0
    move-exception v2

    .line 1123
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "TYHookRaw"

    const-string v9, "GetFactStatus() exception"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static IsPbmReady()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public static SetFactStatus(I[B)Z
    .locals 11
    .parameter "state"
    .parameter "pFactItem"

    .prologue
    const/4 v8, 0x0

    .line 1056
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1057
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    array-length v3, p1

    .line 1059
    .local v3, nFactItemLen:I
    if-gtz v3, :cond_1

    move v6, v8

    .line 1088
    :cond_0
    :goto_0
    return v6

    .line 1064
    :cond_1
    add-int/lit8 v9, v3, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1065
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1066
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 1068
    .local v5, rawResponse:[B
    const/4 v6, 0x0

    .line 1070
    .local v6, ret:Z
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v8, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1071
    const/16 v8, 0x3e

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1072
    add-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1073
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1074
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1075
    const/4 v1, 0x0

    .line 1076
    .local v1, end:B
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1077
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1079
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1080
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v7

    .line 1081
    .local v7, retLens:I
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SetFactStatus() retLens = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    if-ltz v7, :cond_0

    .line 1083
    const/4 v6, 0x1

    goto :goto_0

    .line 1085
    .end local v7           #retLens:I
    :catch_0
    move-exception v2

    .line 1086
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "TYHookRaw"

    const-string v9, "SetFactStatus() exception"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static authIsSupportMD5()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1192
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1193
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v7, 0x20

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1194
    .local v3, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1195
    const/16 v7, 0x64

    new-array v4, v7, [B

    .line 1198
    .local v4, rawResponse:[B
    const/4 v5, 0x0

    .line 1200
    .local v5, ret:Z
    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1201
    const/16 v7, 0x42

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1202
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1204
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1205
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-interface {v0, v7, v4}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 1206
    .local v6, retLens:I
    const-string v7, "TYHookRaw"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "authIsSupportMD5() retLens = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    if-lez v6, :cond_1

    .line 1208
    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1209
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1210
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1212
    invoke-static {v3}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    .local v1, auth:Ljava/lang/String;
    const-string v7, "MD5"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 1215
    const/4 v5, 0x1

    .line 1223
    .end local v1           #auth:Ljava/lang/String;
    .end local v6           #retLens:I
    :cond_1
    :goto_0
    return v5

    .line 1220
    :catch_0
    move-exception v2

    .line 1221
    .local v2, ex:Landroid/os/RemoteException;
    const-string v7, "TYHookRaw"

    const-string v8, "authIsSupportMD5() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getCaveResult(I[B)Ljava/lang/String;
    .locals 12
    .parameter "auth_method"
    .parameter "data"

    .prologue
    .line 1130
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1131
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const-string v7, ""

    .line 1132
    .local v7, strResponse:Ljava/lang/String;
    array-length v3, p1

    .line 1133
    .local v3, nDataLen:I
    add-int/lit8 v9, v3, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1134
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1135
    const/16 v9, 0x3e8

    new-array v5, v9, [B

    .line 1138
    .local v5, rawResponse:[B
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "TYKTOUCH"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1139
    const/16 v9, 0x40

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1140
    add-int/lit8 v9, v3, 0x8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1141
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1142
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1143
    const/4 v1, 0x0

    .line 1144
    .local v1, end:B
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1145
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1147
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1148
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v0, v9, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 1149
    .local v6, retLens:I
    const-string v9, "TYHookRaw"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCaveResult() retLens = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    if-lez v6, :cond_0

    .line 1151
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #strResponse:Ljava/lang/String;
    .local v8, strResponse:Ljava/lang/String;
    move-object v7, v8

    .line 1156
    .end local v6           #retLens:I
    .end local v8           #strResponse:Ljava/lang/String;
    .restart local v7       #strResponse:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 1153
    :catch_0
    move-exception v2

    .line 1154
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "TYHookRaw"

    const-string v10, "getCaveResult() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMD5Result(I[B)Ljava/lang/String;
    .locals 12
    .parameter "chapid"
    .parameter "data"

    .prologue
    .line 1161
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1162
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const-string v7, ""

    .line 1163
    .local v7, strResponse:Ljava/lang/String;
    array-length v3, p1

    .line 1164
    .local v3, nDataLen:I
    add-int/lit8 v9, v3, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1165
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1166
    const/16 v9, 0x3e8

    new-array v5, v9, [B

    .line 1169
    .local v5, rawResponse:[B
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "TYKTOUCH"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v4, v9, v10, v11}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1170
    const/16 v9, 0x41

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1171
    add-int/lit8 v9, v3, 0x8

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1172
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1173
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1174
    const/4 v1, 0x0

    .line 1175
    .local v1, end:B
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1176
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1178
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1179
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v0, v9, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v6

    .line 1180
    .local v6, retLens:I
    const-string v9, "TYHookRaw"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMD5Result() retLens = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    if-lez v6, :cond_0

    .line 1182
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #strResponse:Ljava/lang/String;
    .local v8, strResponse:Ljava/lang/String;
    move-object v7, v8

    .line 1187
    .end local v6           #retLens:I
    .end local v8           #strResponse:Ljava/lang/String;
    .restart local v7       #strResponse:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v7

    .line 1184
    :catch_0
    move-exception v2

    .line 1185
    .local v2, ex:Landroid/os/RemoteException;
    const-string v9, "TYHookRaw"

    const-string v10, "getMD5Result() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getModemIdentyInfo(Lcom/android/internal/telephony/TYModemInfo;)Z
    .locals 9
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    .line 1016
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1017
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0x20

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1018
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1019
    const/16 v6, 0x1f4

    new-array v3, v6, [B

    .line 1020
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 1023
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1024
    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1025
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1027
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1028
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 1029
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getModemIdentyInfo() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    if-lez v5, :cond_0

    .line 1035
    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1036
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1037
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szICCID:Ljava/lang/String;

    .line 1038
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szESN:Ljava/lang/String;

    .line 1039
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szMEID:Ljava/lang/String;

    .line 1040
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szUIMID:Ljava/lang/String;

    .line 1041
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szPRLVersion:Ljava/lang/String;

    .line 1042
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szCDMAVersion:Ljava/lang/String;

    .line 1043
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szHWVersion:Ljava/lang/String;

    .line 1044
    invoke-static {v2}, Lcom/android/internal/telephony/TYHookRaw;->getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/TYModemInfo;->szPCBSN:Ljava/lang/String;

    .line 1045
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getModemIdentyInfo() result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/internal/telephony/TYModemInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    const/4 v4, 0x1

    .line 1051
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 1048
    :catch_0
    move-exception v1

    .line 1049
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "getModemIdentyInfo() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPSensorData()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 880
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 881
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 882
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 883
    new-array v3, v6, [B

    .line 886
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 887
    const/16 v5, 0x38

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 888
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 890
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 891
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 892
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetPSensorData() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    if-lez v4, :cond_0

    .line 894
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 895
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 896
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 901
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 898
    :catch_0
    move-exception v1

    .line 899
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "GetPSensorData() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static getSMSRegFlag()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 828
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 829
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 830
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 831
    new-array v3, v6, [B

    .line 834
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 835
    const/16 v5, 0x36

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 836
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 838
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 839
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 840
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetSMSRegFlag() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    if-lez v4, :cond_0

    .line 842
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 843
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 844
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 849
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "GetSMSRegFlag() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static getSecurityCode()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 98
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 99
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0x20

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 100
    .local v3, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 101
    const/16 v6, 0x50

    new-array v4, v6, [B

    .line 103
    .local v4, rawResponse:[B
    const/4 v1, 0x0

    .line 105
    .local v1, code:[B
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 106
    const/16 v6, 0x1d

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    :try_start_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 110
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v4}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 111
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSecurityCode() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-lez v5, :cond_0

    .line 113
    new-array v1, v5, [B

    .line 114
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "getSecurityCode() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSimSmsStorage()[I
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x20

    const/4 v11, 0x0

    .line 129
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 130
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 131
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 132
    new-array v3, v12, [B

    .line 134
    .local v3, rawResponse:[B
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 138
    .local v5, storage:[I
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v11, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 143
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v0, v9, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 144
    .local v4, retLens:I
    if-gez v4, :cond_0

    .line 145
    const-string v9, "TYHookRaw"

    const-string v10, "getSimSmsStorage() error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v8

    .line 159
    .end local v4           #retLens:I
    .end local v5           #storage:[I
    :goto_0
    return-object v5

    .line 148
    .restart local v5       #storage:[I
    :catch_0
    move-exception v1

    .line 149
    .local v1, ex:Landroid/os/RemoteException;
    const-string v9, "TYHookRaw"

    const-string v10, "getSimSmsStorage() exception"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 150
    goto :goto_0

    .line 152
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v4       #retLens:I
    :cond_0
    invoke-static {v3, v11, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 153
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 155
    .local v7, used:I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 156
    .local v6, total:I
    aput v7, v5, v11

    .line 157
    const/4 v8, 0x1

    aput v6, v5, v8

    .line 158
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSimSmsStorage() used="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getStringFromByteBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 60
    const-string v2, ""

    .line 61
    .local v2, str:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 62
    .local v1, lens:I
    if-lez v1, :cond_0

    .line 63
    new-array v0, v1, [B

    .line 64
    .local v0, data:[B
    invoke-virtual {p0, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 66
    new-instance v2, Ljava/lang/String;

    .end local v2           #str:Ljava/lang/String;
    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 68
    .end local v0           #data:[B
    .restart local v2       #str:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public static getWifiMac()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 957
    const-string v5, ""

    .line 958
    .local v5, strResponse:Ljava/lang/String;
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 959
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v7, 0x20

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 960
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 961
    const/16 v7, 0x40

    new-array v3, v7, [B

    .line 964
    .local v3, rawResponse:[B
    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v7, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 965
    const/16 v7, 0x3c

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 966
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 968
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 969
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-interface {v0, v7, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 970
    .local v4, retLens:I
    const-string v7, "TYHookRaw"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getWifiMac() retLens = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-lez v4, :cond_0

    .line 972
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #strResponse:Ljava/lang/String;
    .local v6, strResponse:Ljava/lang/String;
    move-object v5, v6

    .line 977
    .end local v4           #retLens:I
    .end local v6           #strResponse:Ljava/lang/String;
    .restart local v5       #strResponse:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 974
    :catch_0
    move-exception v1

    .line 975
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "TYHookRaw"

    const-string v8, "getWifiMac() exception"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsCheckXTRAData()[I
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 407
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 408
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 409
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 410
    new-array v3, v7, [B

    .line 411
    .local v3, rawResponse:[B
    const/4 v6, 0x3

    new-array v4, v6, [I

    .line 414
    .local v4, result:[I
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 415
    const/16 v6, 0x29

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 416
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 418
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 419
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 420
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsCheckXTRAData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-lez v5, :cond_0

    .line 422
    const/4 v6, 0x0

    invoke-static {v3, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 423
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 424
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v6

    .line 425
    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v6

    .line 426
    const/4 v6, 0x2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v4, v6

    .line 427
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsCheckXTRAData() startGPSweek="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "startGPSmin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ValidDuration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v4           #result:[I
    .end local v5           #retLens:I
    :goto_0
    return-object v4

    .line 430
    .restart local v4       #result:[I
    :catch_0
    move-exception v1

    .line 431
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsCheckXTRAData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static gpsClosePPPState(I)Z
    .locals 9
    .parameter "state"

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 537
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 538
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 539
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 540
    new-array v3, v7, [B

    .line 542
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 544
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 545
    const/16 v6, 0x2b

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 546
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 548
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 550
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 551
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 552
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsClosePPPState() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    if-ltz v5, :cond_0

    .line 554
    const/4 v4, 0x1

    .line 559
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsClosePPPState() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsDeleteParams(I)Z
    .locals 9
    .parameter "param"

    .prologue
    const/16 v7, 0x20

    .line 694
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 695
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 696
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 697
    new-array v3, v7, [B

    .line 699
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 701
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 702
    const/16 v6, 0x33

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 703
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 706
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 707
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 708
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetLockStatus() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    if-ltz v5, :cond_0

    .line 710
    const/4 v4, 0x1

    .line 715
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetLockStatus() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsEndTransferXTRAFile()Z
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 475
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 476
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 477
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 478
    new-array v3, v7, [B

    .line 480
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 482
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 483
    const/16 v6, 0x2a

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 484
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 485
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 487
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 488
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 489
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsEndTransferXTRAFile() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    if-ltz v5, :cond_0

    .line 491
    const/4 v4, 0x1

    .line 496
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsEndTransferXTRAFile() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsGetDataType()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 217
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 218
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 219
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 220
    new-array v3, v6, [B

    .line 223
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 224
    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 227
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 229
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gpsGetDataType() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-lez v4, :cond_0

    .line 231
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 232
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 238
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "gpsGetDataType() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static gpsGetInitState()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 164
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 165
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 166
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 167
    new-array v3, v6, [B

    .line 170
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 171
    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 176
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gpsGetInitState() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-lez v4, :cond_0

    .line 178
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 179
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 185
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "gpsGetInitState() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static gpsGetLockStatus()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 642
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 643
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 644
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 645
    new-array v3, v6, [B

    .line 648
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 649
    const/16 v5, 0x31

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 650
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 652
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 653
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 654
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gpsGetLockStatus() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    if-lez v4, :cond_0

    .line 656
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 657
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 658
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 663
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 660
    :catch_0
    move-exception v1

    .line 661
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "gpsGetLockStatus() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static gpsGetNumber()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 774
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 775
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 776
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 777
    new-array v3, v6, [B

    .line 780
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 781
    const/16 v5, 0x34

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 782
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 783
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 785
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 786
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 787
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gpsGetNumber() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-lez v4, :cond_0

    .line 789
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 790
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 791
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 796
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "gpsGetNumber() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static gpsGetResult()I
    .locals 8

    .prologue
    const/16 v6, 0x20

    const/4 v7, 0x0

    .line 720
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 721
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 722
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 723
    new-array v3, v6, [B

    .line 726
    .local v3, rawResponse:[B
    const-string v5, "TYKTOUCH"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 727
    const/16 v5, 0x32

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 728
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 729
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 731
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 732
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v0, v5, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 733
    .local v4, retLens:I
    const-string v5, "TYHookRaw"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gpsGetResult() retLens = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-lez v4, :cond_0

    .line 735
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 736
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 737
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 742
    .end local v4           #retLens:I
    :goto_0
    return v5

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "TYHookRaw"

    const-string v6, "gpsGetResult() exception"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method

.method public static gpsInjectXTRAData()Z
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 382
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 383
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 384
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 385
    new-array v3, v7, [B

    .line 387
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 389
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 390
    const/16 v6, 0x28

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 391
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 393
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 394
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 395
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsInjectXTRAData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    if-ltz v5, :cond_0

    .line 397
    const/4 v4, 0x1

    .line 402
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 399
    :catch_0
    move-exception v1

    .line 400
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsInjectXTRAData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsOpenPPPState(I[B)Z
    .locals 11
    .parameter "state"
    .parameter "pIPAddress"

    .prologue
    const/4 v8, 0x0

    .line 501
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 502
    .local v1, TelMgr:Lcom/android/internal/telephony/ITelephony;
    array-length v0, p1

    .line 503
    .local v0, IPAddressLen:I
    if-gtz v0, :cond_1

    move v6, v8

    .line 532
    :cond_0
    :goto_0
    return v6

    .line 507
    :cond_1
    add-int/lit8 v9, v0, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 508
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 509
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 511
    .local v5, rawResponse:[B
    const/4 v6, 0x0

    .line 513
    .local v6, ret:Z
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v8, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 514
    const/16 v8, 0x2b

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 515
    add-int/lit8 v8, v0, 0xc

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 516
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 517
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 518
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 519
    const/4 v2, 0x0

    .line 520
    .local v2, end:B
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 521
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 523
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 524
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v1, v8, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v7

    .line 525
    .local v7, retLens:I
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gpsOpenPPPState() retLens = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    if-ltz v7, :cond_0

    .line 527
    const/4 v6, 0x1

    goto :goto_0

    .line 529
    .end local v7           #retLens:I
    :catch_0
    move-exception v3

    .line 530
    .local v3, ex:Landroid/os/RemoteException;
    const-string v8, "TYHookRaw"

    const-string v9, "gpsOpenPPPState() exception"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsReadStartData()[I
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 269
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 270
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 271
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 272
    new-array v3, v7, [B

    .line 273
    .local v3, rawResponse:[B
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 276
    .local v5, start:[I
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 277
    const/16 v6, 0x26

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 278
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 281
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 282
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v4

    .line 283
    .local v4, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsReadStartData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-lez v4, :cond_0

    .line 285
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 286
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 287
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v6

    .line 288
    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v6

    .line 289
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsReadStartData() Session type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Operation mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v4           #retLens:I
    .end local v5           #start:[I
    :goto_0
    return-object v5

    .line 292
    .restart local v5       #start:[I
    :catch_0
    move-exception v1

    .line 293
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsReadStartData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static gpsSetDataType(I)Z
    .locals 9
    .parameter "type"

    .prologue
    const/16 v7, 0x20

    .line 243
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 244
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 245
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 246
    new-array v3, v7, [B

    .line 248
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 250
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 251
    const/16 v6, 0x25

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 252
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 255
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 256
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 257
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetDataType() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    if-ltz v5, :cond_0

    .line 259
    const/4 v4, 0x1

    .line 264
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetDataType() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetInitState(II)Z
    .locals 9
    .parameter "mode"
    .parameter "type"

    .prologue
    const/16 v7, 0x20

    .line 190
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 191
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 193
    new-array v3, v7, [B

    .line 195
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 197
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 198
    const/16 v6, 0x23

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 201
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 205
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetInitState() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    if-ltz v5, :cond_0

    .line 207
    const/4 v4, 0x1

    .line 212
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetInitState() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetLockStatus(I)Z
    .locals 9
    .parameter "status"

    .prologue
    const/16 v7, 0x20

    .line 668
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 669
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 670
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 671
    new-array v3, v7, [B

    .line 673
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 675
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 676
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 677
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 678
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 680
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 681
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 682
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetLockStatus() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    if-ltz v5, :cond_0

    .line 684
    const/4 v4, 0x1

    .line 689
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetLockStatus() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetMode(I)Z
    .locals 9
    .parameter "mode"

    .prologue
    const/16 v7, 0x20

    .line 564
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 565
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 566
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 567
    new-array v3, v7, [B

    .line 569
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 571
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 572
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 574
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 577
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 578
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetMode() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    if-ltz v5, :cond_0

    .line 580
    const/4 v4, 0x1

    .line 585
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetMode() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetNIINIT(I)Z
    .locals 9
    .parameter "status"

    .prologue
    const/16 v7, 0x20

    .line 616
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 617
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 618
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 619
    new-array v3, v7, [B

    .line 621
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 623
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 624
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 625
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 626
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 628
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 629
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 630
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetNIINIT() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    if-ltz v5, :cond_0

    .line 632
    const/4 v4, 0x1

    .line 637
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetNIINIT() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetNumber(I)Z
    .locals 9
    .parameter "count"

    .prologue
    .line 801
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 802
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 803
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 804
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 806
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 808
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 809
    const/16 v6, 0x34

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 810
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 811
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 812
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 814
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 815
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 816
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetNumber() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    if-ltz v5, :cond_0

    .line 818
    const/4 v4, 0x1

    .line 823
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 820
    :catch_0
    move-exception v1

    .line 821
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetNumber() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetResult(I)Z
    .locals 9
    .parameter "result"

    .prologue
    .line 747
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 748
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 749
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 750
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 752
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 754
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 755
    const/16 v6, 0x32

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 756
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 757
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 758
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 760
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 761
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 762
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetResult() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    if-ltz v5, :cond_0

    .line 764
    const/4 v4, 0x1

    .line 769
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetResult() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetUserResp(I)Z
    .locals 9
    .parameter "status"

    .prologue
    const/16 v7, 0x20

    .line 590
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 591
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 592
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 593
    new-array v3, v7, [B

    .line 595
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 597
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 598
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 599
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 600
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 602
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 603
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 604
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetUserResp() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    if-ltz v5, :cond_0

    .line 606
    const/4 v4, 0x1

    .line 611
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 608
    :catch_0
    move-exception v1

    .line 609
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetUserResp() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsSetXInit(I)Z
    .locals 9
    .parameter "nXInit"

    .prologue
    const/16 v7, 0x20

    .line 356
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 357
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 358
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 359
    new-array v3, v7, [B

    .line 361
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 363
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 364
    const/16 v6, 0x2f

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 365
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 368
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 369
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 370
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsSetXInit() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    if-ltz v5, :cond_0

    .line 372
    const/4 v4, 0x1

    .line 377
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsSetXInit() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsStartTransferXTRAFile([BII)Z
    .locals 11
    .parameter "pFileName"
    .parameter "dwFileSize"
    .parameter "dwFileBlock"

    .prologue
    const/4 v8, 0x0

    .line 438
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 439
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    array-length v3, p0

    .line 440
    .local v3, filenameLen:I
    if-gtz v3, :cond_1

    move v6, v8

    .line 470
    :cond_0
    :goto_0
    return v6

    .line 444
    :cond_1
    add-int/lit8 v9, v3, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 445
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 446
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 448
    .local v5, rawResponse:[B
    const/4 v6, 0x0

    .line 450
    .local v6, ret:Z
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v8, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 451
    const/16 v8, 0x2a

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 452
    add-int/lit8 v8, v3, 0x10

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 453
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 455
    const/4 v1, 0x0

    .line 456
    .local v1, end:B
    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 458
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 459
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 461
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 462
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v7

    .line 463
    .local v7, retLens:I
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "gpsStartTransferXTRAFile() retLens = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    if-ltz v7, :cond_0

    .line 465
    const/4 v6, 0x1

    goto :goto_0

    .line 467
    .end local v7           #retLens:I
    :catch_0
    move-exception v2

    .line 468
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "TYHookRaw"

    const-string v9, "gpsStartTransferXTRAFile() exception"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsStopData(I)Z
    .locals 9
    .parameter "type"

    .prologue
    const/16 v7, 0x20

    .line 330
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 331
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 332
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 333
    new-array v3, v7, [B

    .line 335
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 337
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 338
    const/16 v6, 0x27

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 339
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 342
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 344
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsStopData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    if-ltz v5, :cond_0

    .line 346
    const/4 v4, 0x1

    .line 351
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsStopData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static gpsWriteStartData(IIII)Z
    .locals 9
    .parameter "dwSessionType"
    .parameter "dwOperMode"
    .parameter "dwNumFix"
    .parameter "dwFixInterval"

    .prologue
    .line 300
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 301
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    const/16 v6, 0x40

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 302
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 303
    const/16 v6, 0x20

    new-array v3, v6, [B

    .line 305
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 307
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 308
    const/16 v6, 0x26

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 309
    const/16 v6, 0x14

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 310
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 311
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 312
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 316
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 317
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 318
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gpsWriteStartData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    if-ltz v5, :cond_0

    .line 320
    const/4 v4, 0x1

    .line 325
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "gpsWriteStartData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setPSensorData(I)Z
    .locals 9
    .parameter "data"

    .prologue
    const/16 v7, 0x20

    .line 906
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 907
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 908
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 909
    new-array v3, v7, [B

    .line 911
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 913
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 914
    const/16 v6, 0x37

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 915
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 916
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 918
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 919
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 920
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetPSensorData() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    if-ltz v5, :cond_0

    .line 922
    const/4 v4, 0x1

    .line 927
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 924
    :catch_0
    move-exception v1

    .line 925
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "SetPSensorData() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSMSRegFlag(I)Z
    .locals 9
    .parameter "flag"

    .prologue
    const/16 v7, 0x20

    .line 854
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 855
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 856
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 857
    new-array v3, v7, [B

    .line 859
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 861
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "TYKTOUCH"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 862
    const/16 v6, 0x35

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 863
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 864
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 866
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 867
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 868
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetSMSRegFlag() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    if-ltz v5, :cond_0

    .line 870
    const/4 v4, 0x1

    .line 875
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 872
    :catch_0
    move-exception v1

    .line 873
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string v7, "SetSMSRegFlag() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setWifiMac(Ljava/lang/String;)Z
    .locals 11
    .parameter "strMac"

    .prologue
    const/4 v8, 0x0

    .line 982
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 983
    .local v3, lens:I
    if-gtz v3, :cond_1

    .line 985
    const-string v9, "TYHookRaw"

    const-string/jumbo v10, "setWifiMac() mac buffer is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1011
    :cond_0
    :goto_0
    return v6

    .line 988
    :cond_1
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 989
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    add-int/lit8 v9, v3, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 990
    .local v4, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 991
    const/16 v9, 0x20

    new-array v5, v9, [B

    .line 993
    .local v5, rawResponse:[B
    const/4 v6, 0x0

    .line 994
    .local v6, ret:Z
    const/4 v1, 0x0

    .line 996
    .local v1, end:B
    const-string v9, "TYKTOUCH"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "TYKTOUCH"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v4, v9, v8, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 997
    const/16 v9, 0x3b

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 998
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 999
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v4, v9, v8, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1000
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1002
    :try_start_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1003
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-interface {v0, v8, v5}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v7

    .line 1004
    .local v7, retLens:I
    const-string v8, "TYHookRaw"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiMac() retLens = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    if-ltz v7, :cond_0

    .line 1006
    const/4 v6, 0x1

    goto :goto_0

    .line 1008
    .end local v7           #retLens:I
    :catch_0
    move-exception v2

    .line 1009
    .local v2, ex:Landroid/os/RemoteException;
    const-string v8, "TYHookRaw"

    const-string/jumbo v9, "setWifiMac() exception"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static testAPBP()I
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 932
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 933
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 934
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 935
    new-array v3, v7, [B

    .line 937
    .local v3, rawResponse:[B
    const/4 v4, -0x1

    .line 939
    .local v4, ret:I
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 940
    const/16 v6, 0x3a

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 941
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 943
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 944
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 945
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "testAPBP() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    if-ltz v5, :cond_0

    .line 947
    const/4 v4, 0x0

    .line 952
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 949
    :catch_0
    move-exception v1

    .line 950
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string/jumbo v7, "testAPBP() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verifySecurityCode()Z
    .locals 9

    .prologue
    const/16 v7, 0x20

    const/4 v8, 0x0

    .line 73
    const-string/jumbo v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 74
    .local v0, TelMgr:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 75
    .local v2, p:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    new-array v3, v7, [B

    .line 78
    .local v3, rawResponse:[B
    const/4 v4, 0x0

    .line 80
    .local v4, ret:Z
    const-string v6, "TYKTOUCH"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "TYKTOUCH"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v8, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 81
    const/16 v6, 0x1f

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 84
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v0, v6, v3}, Lcom/android/internal/telephony/ITelephony;->sendOemRilRequestRaw([B[B)I

    move-result v5

    .line 86
    .local v5, retLens:I
    const-string v6, "TYHookRaw"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifySecurityCode() retLens = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-ltz v5, :cond_0

    .line 88
    const/4 v4, 0x1

    .line 93
    .end local v5           #retLens:I
    :cond_0
    :goto_0
    return v4

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, ex:Landroid/os/RemoteException;
    const-string v6, "TYHookRaw"

    const-string/jumbo v7, "verifySecurityCode() exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
