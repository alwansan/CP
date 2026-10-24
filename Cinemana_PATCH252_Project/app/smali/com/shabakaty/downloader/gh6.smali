.class public final enum Lcom/shabakaty/downloader/gh6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/l37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/gh6;",
        ">;",
        "Lcom/shabakaty/downloader/l37;"
    }
.end annotation


# static fields
.field public static final synthetic s:[Lcom/shabakaty/downloader/gh6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 69

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/gh6;

    const-string v1, "APP_SESSION_ERROR_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/gh6;

    const-string v2, "APP_SESSION_ERROR_CONN_PEER_DISCONNECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/gh6;

    const-string v3, "APP_SESSION_ERROR_CONN_IO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/gh6;

    const-string v4, "APP_SESSION_ERROR_CONN_SSL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/gh6;

    const-string v5, "APP_SESSION_ERROR_CONN_TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/gh6;

    const-string v6, "APP_SESSION_ERROR_CONN_RELAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v6, Lcom/shabakaty/downloader/gh6;

    const-string v7, "APP_SESSION_ERROR_CONN_DEVICE_AUTH"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/gh6;

    const-string v9, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_ERROR_RECEIVED"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v9, Lcom/shabakaty/downloader/gh6;

    const-string v10, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_CLIENT_AUTH_CERT_MALFORMED"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v10, Lcom/shabakaty/downloader/gh6;

    const-string v11, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_CLIENT_AUTH_CERT_NOT_X509"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 11
    new-instance v11, Lcom/shabakaty/downloader/gh6;

    const-string v12, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_CLIENT_AUTH_CERT_NOT_TRUSTED"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 12
    new-instance v12, Lcom/shabakaty/downloader/gh6;

    const-string v13, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_SSL_CERT_NOT_TRUSTED"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_RESPONSE_MALFORMED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 14
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_CAST_NEARBY_INVALID_REQUEST"

    const/16 v8, 0xd

    invoke-direct {v14, v15, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 15
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_CANCELLED"

    move-object/from16 v16, v14

    const/16 v14, 0xe

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_CRL_INVALID"

    move-object/from16 v17, v8

    const/16 v8, 0xf

    invoke-direct {v14, v15, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 17
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_CRL_REVOCATION_CHECK_FAILED"

    move-object/from16 v18, v14

    const/16 v14, 0x10

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 18
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_OTHER"

    move-object/from16 v19, v8

    const/16 v8, 0x11

    invoke-direct {v14, v15, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 19
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_HEARTBEAT_TIMEOUT"

    move-object/from16 v20, v14

    const/16 v14, 0x12

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 20
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_IMPLICIT_DISCONNECT"

    move-object/from16 v21, v8

    const/16 v8, 0x13

    invoke-direct {v14, v15, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 21
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_RECEIVER_APPLICATION_NOT_ALLOWED"

    move-object/from16 v22, v14

    const/16 v14, 0x14

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 22
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_RECEIVER_APPLICATION_NOT_FOUND"

    move-object/from16 v23, v8

    const/16 v8, 0x15

    invoke-direct {v14, v15, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 23
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_RECEIVER_SESSION_NOT_RUNNING"

    move-object/from16 v24, v14

    const/16 v14, 0x16

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 24
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RECEIVER_CONFIG_DOWNLOAD_FAILURE"

    move-object/from16 v25, v8

    const/16 v8, 0x17

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 25
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_RECEIVER_MEDIA_COMMAND_ERROR"

    move-object/from16 v26, v15

    const/16 v15, 0x18

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 26
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_RECEIVER_MEDIA_COMMAND_NOT_FOUND"

    move-object/from16 v27, v14

    const/16 v14, 0x19

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_LAUNCH_CANCELLED"

    move-object/from16 v28, v8

    const/16 v8, 0x1a

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 28
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_LAUNCH_TIMED_OUT"

    move-object/from16 v29, v15

    const/16 v15, 0x1b

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_LAUNCH_INVALID_REQUEST"

    move-object/from16 v30, v14

    const/16 v14, 0x1c

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 30
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_TIMEOUT"

    move-object/from16 v31, v8

    const/16 v8, 0x1d

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 31
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_PARSE_FAILURE"

    move-object/from16 v32, v15

    const/16 v15, 0x1e

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 32
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CONN_DEVICE_AUTH_CHALLENGE_RECEIVED"

    move-object/from16 v33, v14

    const/16 v14, 0x1f

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 33
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_REMOTE_DISPLAY"

    move-object/from16 v34, v8

    const/16 v8, 0x20

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 34
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_BROADCAST"

    move-object/from16 v35, v15

    const/16 v15, 0x21

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 35
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_NO"

    move-object/from16 v36, v14

    const/16 v14, 0x22

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 36
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_MEDIA_CONTROL_CHANNEL"

    move-object/from16 v37, v8

    const/16 v8, 0x23

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 37
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_ANDROID_CAST_SERVICE"

    move-object/from16 v38, v15

    const/16 v15, 0x24

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 38
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_NEARBY_PENDING_SESSION_ENDED"

    move-object/from16 v39, v14

    const/16 v14, 0x25

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 39
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_MULTIZONE_DEVICE_REMOVED"

    move-object/from16 v40, v8

    const/16 v8, 0x26

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 40
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_MULTIZONE_DEVICE"

    move-object/from16 v41, v15

    const/16 v15, 0x27

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 41
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_CAST_SOCKET"

    move-object/from16 v42, v14

    const/16 v14, 0x28

    invoke-direct {v8, v15, v14, v14}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 42
    new-instance v15, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ENDPOINT_SWITCHED_NO_ERROR"

    move-object/from16 v43, v8

    const/16 v8, 0x29

    invoke-direct {v15, v14, v8, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 43
    new-instance v14, Lcom/shabakaty/downloader/gh6;

    const-string v8, "APP_SESSION_ERROR_ENDPOINT_SWITCHED"

    move-object/from16 v44, v15

    const/16 v15, 0x2a

    invoke-direct {v14, v8, v15, v15}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 44
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v15, "APP_SESSION_ERROR_START_TIMEOUT"

    move-object/from16 v45, v14

    const/16 v14, 0x2b

    move-object/from16 v46, v13

    const/16 v13, 0x2b

    invoke-direct {v8, v15, v14, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 45
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_START_FROM_MEDIA_ROUTER"

    const/16 v15, 0x2c

    move-object/from16 v47, v8

    const/16 v8, 0x2c

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 46
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RESUME_TIMEOUT"

    const/16 v15, 0x2d

    move-object/from16 v48, v13

    const/16 v13, 0x2d

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 47
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RESUME_FROM_MEDIA_ROUTER"

    const/16 v15, 0x2e

    move-object/from16 v49, v8

    const/16 v8, 0x2e

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 48
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DISABLED"

    const/16 v15, 0x2f

    move-object/from16 v50, v13

    const/16 v13, 0x2f

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 49
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_NO_ACCOUNT_CONFIGURED"

    const/16 v15, 0x30

    move-object/from16 v51, v8

    const/16 v8, 0x30

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 50
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DEVICE_NOT_FOUND_ON_LOCAL_NETWORK"

    const/16 v15, 0x31

    move-object/from16 v52, v13

    const/16 v13, 0x31

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 51
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_GRPC_SERVER_ERROR"

    const/16 v15, 0x32

    move-object/from16 v53, v8

    const/16 v8, 0x32

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 52
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_INVALID_SERVER_RESPONSE"

    const/16 v15, 0x33

    move-object/from16 v54, v13

    const/16 v13, 0x33

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 53
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_SOCKET_CONNECT_EXCEPTION"

    const/16 v15, 0x34

    move-object/from16 v55, v8

    const/16 v8, 0x34

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 54
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_RAT_MISSING"

    const/16 v15, 0x35

    move-object/from16 v56, v13

    const/16 v13, 0x35

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 55
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_RAT_INVALID"

    const/16 v15, 0x36

    move-object/from16 v57, v8

    const/16 v8, 0x36

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 56
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_SERVER_RESPONSE_HAS_NO_SESSION"

    const/16 v15, 0x37

    move-object/from16 v58, v13

    const/16 v13, 0x37

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 57
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_INVALID_SERVER_ADDRESS"

    const/16 v15, 0x38

    move-object/from16 v59, v8

    const/16 v8, 0x38

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 58
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DEVICE_NOT_LINKED_TO_USER"

    const/16 v15, 0x39

    move-object/from16 v60, v13

    const/16 v13, 0x39

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 59
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DEVICE_NOT_SUPPORTED"

    const/16 v15, 0x3a

    move-object/from16 v61, v8

    const/16 v8, 0x3a

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 60
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DEVICE_CERTIFICATE_ABSENT"

    const/16 v15, 0x3b

    move-object/from16 v62, v13

    const/16 v13, 0x3b

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 61
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_FAILED_TO_COMMUNICATE_DEVICE"

    const/16 v15, 0x3c

    move-object/from16 v63, v8

    const/16 v8, 0x3c

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 62
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_RAT_REJECTED_BY_SERVER"

    const/16 v15, 0x3d

    move-object/from16 v64, v13

    const/16 v13, 0x3d

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 63
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_CLOUD_DEVICE_ID_NOT_FOUND"

    const/16 v15, 0x3e

    move-object/from16 v65, v8

    const/16 v8, 0x3e

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 64
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_SERVER_ERROR_UNKNOWN"

    const/16 v15, 0x3f

    move-object/from16 v66, v13

    const/16 v13, 0x3f

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 65
    new-instance v13, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_DEVICE_AUTHENTICATION_FAILURE"

    const/16 v15, 0x40

    move-object/from16 v67, v8

    const/16 v8, 0x40

    invoke-direct {v13, v14, v15, v8}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    .line 66
    new-instance v8, Lcom/shabakaty/downloader/gh6;

    const-string v14, "APP_SESSION_ERROR_RELAY_CASTING_PEER_PK_HASH_ABSENT"

    const/16 v15, 0x41

    move-object/from16 v68, v13

    const/16 v13, 0x41

    invoke-direct {v8, v14, v15, v13}, Lcom/shabakaty/downloader/gh6;-><init>(Ljava/lang/String;II)V

    const/16 v13, 0x42

    new-array v13, v13, [Lcom/shabakaty/downloader/gh6;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v10, v13, v0

    const/16 v0, 0xa

    aput-object v11, v13, v0

    const/16 v0, 0xb

    aput-object v12, v13, v0

    const/16 v0, 0xc

    aput-object v46, v13, v0

    const/16 v0, 0xd

    aput-object v16, v13, v0

    const/16 v0, 0xe

    aput-object v17, v13, v0

    const/16 v0, 0xf

    aput-object v18, v13, v0

    const/16 v0, 0x10

    aput-object v19, v13, v0

    const/16 v0, 0x11

    aput-object v20, v13, v0

    const/16 v0, 0x12

    aput-object v21, v13, v0

    const/16 v0, 0x13

    aput-object v22, v13, v0

    const/16 v0, 0x14

    aput-object v23, v13, v0

    const/16 v0, 0x15

    aput-object v24, v13, v0

    const/16 v0, 0x16

    aput-object v25, v13, v0

    const/16 v0, 0x17

    aput-object v26, v13, v0

    const/16 v0, 0x18

    aput-object v27, v13, v0

    const/16 v0, 0x19

    aput-object v28, v13, v0

    const/16 v0, 0x1a

    aput-object v29, v13, v0

    const/16 v0, 0x1b

    aput-object v30, v13, v0

    const/16 v0, 0x1c

    aput-object v31, v13, v0

    const/16 v0, 0x1d

    aput-object v32, v13, v0

    const/16 v0, 0x1e

    aput-object v33, v13, v0

    const/16 v0, 0x1f

    aput-object v34, v13, v0

    const/16 v0, 0x20

    aput-object v35, v13, v0

    const/16 v0, 0x21

    aput-object v36, v13, v0

    const/16 v0, 0x22

    aput-object v37, v13, v0

    const/16 v0, 0x23

    aput-object v38, v13, v0

    const/16 v0, 0x24

    aput-object v39, v13, v0

    const/16 v0, 0x25

    aput-object v40, v13, v0

    const/16 v0, 0x26

    aput-object v41, v13, v0

    const/16 v0, 0x27

    aput-object v42, v13, v0

    const/16 v0, 0x28

    aput-object v43, v13, v0

    const/16 v0, 0x29

    aput-object v44, v13, v0

    const/16 v0, 0x2a

    aput-object v45, v13, v0

    const/16 v0, 0x2b

    aput-object v47, v13, v0

    const/16 v0, 0x2c

    aput-object v48, v13, v0

    const/16 v0, 0x2d

    aput-object v49, v13, v0

    const/16 v0, 0x2e

    aput-object v50, v13, v0

    const/16 v0, 0x2f

    aput-object v51, v13, v0

    const/16 v0, 0x30

    aput-object v52, v13, v0

    const/16 v0, 0x31

    aput-object v53, v13, v0

    const/16 v0, 0x32

    aput-object v54, v13, v0

    const/16 v0, 0x33

    aput-object v55, v13, v0

    const/16 v0, 0x34

    aput-object v56, v13, v0

    const/16 v0, 0x35

    aput-object v57, v13, v0

    const/16 v0, 0x36

    aput-object v58, v13, v0

    const/16 v0, 0x37

    aput-object v59, v13, v0

    const/16 v0, 0x38

    aput-object v60, v13, v0

    const/16 v0, 0x39

    aput-object v61, v13, v0

    const/16 v0, 0x3a

    aput-object v62, v13, v0

    const/16 v0, 0x3b

    aput-object v63, v13, v0

    const/16 v0, 0x3c

    aput-object v64, v13, v0

    const/16 v0, 0x3d

    aput-object v65, v13, v0

    const/16 v0, 0x3e

    aput-object v66, v13, v0

    const/16 v0, 0x3f

    aput-object v67, v13, v0

    const/16 v0, 0x40

    aput-object v68, v13, v0

    const/16 v0, 0x41

    aput-object v8, v13, v0

    .line 67
    sput-object v13, Lcom/shabakaty/downloader/gh6;->s:[Lcom/shabakaty/downloader/gh6;

    .line 68
    new-instance v0, Lcom/shabakaty/downloader/zl2;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/zl2;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/gh6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/gh6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gh6;->s:[Lcom/shabakaty/downloader/gh6;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/gh6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/gh6;

    return-object v0
.end method


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/gh6;->r:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/gh6;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/gh6;->r:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
