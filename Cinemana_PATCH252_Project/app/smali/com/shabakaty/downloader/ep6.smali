.class public final enum Lcom/shabakaty/downloader/ep6;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/l37;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/ep6;",
        ">;",
        "Lcom/shabakaty/downloader/l37;"
    }
.end annotation


# static fields
.field public static final synthetic A:[Lcom/shabakaty/downloader/ep6;

.field public static final enum s:Lcom/shabakaty/downloader/ep6;

.field public static final enum t:Lcom/shabakaty/downloader/ep6;

.field public static final enum u:Lcom/shabakaty/downloader/ep6;

.field public static final enum v:Lcom/shabakaty/downloader/ep6;

.field public static final enum w:Lcom/shabakaty/downloader/ep6;

.field public static final enum x:Lcom/shabakaty/downloader/ep6;

.field public static final enum y:Lcom/shabakaty/downloader/ep6;

.field public static final enum z:Lcom/shabakaty/downloader/ep6;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 100

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ep6;

    const-string v1, "EVENT_ACTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ep6;

    const-string v2, "DISCOVERED_CAST_DEVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/ep6;

    const-string v3, "MDNS_RESPONSE_PARSE_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/ep6;

    const-string v4, "MDNS_SUBTYPE_DISCOVERY_RESULT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v4, Lcom/shabakaty/downloader/ep6;

    const-string v5, "ADAPTIVE_DISCOVERY_RESULT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v5, Lcom/shabakaty/downloader/ep6;

    const-string v6, "SLOW_MDNS_RESPONSE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v6, Lcom/shabakaty/downloader/ep6;

    const-string v7, "DEVICE_SCAN_STARTED"

    const/4 v8, 0x6

    const/16 v9, 0x82

    invoke-direct {v6, v7, v8, v9}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v7, Lcom/shabakaty/downloader/ep6;

    const-string v8, "DEVICE_SCAN_CRITERIA_CHANGED"

    const/4 v9, 0x7

    const/16 v10, 0x83

    invoke-direct {v7, v8, v9, v10}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v8, Lcom/shabakaty/downloader/ep6;

    const-string v9, "DEVICE_SCAN_STOPPED"

    const/16 v10, 0x8

    const/16 v11, 0x84

    invoke-direct {v8, v9, v10, v11}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v9, Lcom/shabakaty/downloader/ep6;

    const-string v10, "DEVICE_SCAN_PAUSED"

    const/16 v11, 0x9

    const/16 v12, 0x85

    invoke-direct {v9, v10, v11, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/ep6;

    const-string v11, "DEVICE_SCAN_RESUMED"

    const/16 v12, 0xa

    const/16 v13, 0x86

    invoke-direct {v10, v11, v12, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 12
    new-instance v11, Lcom/shabakaty/downloader/ep6;

    const-string v13, "DEVICE_SCAN_PING"

    const/16 v14, 0xb

    const/16 v15, 0x87

    invoke-direct {v11, v13, v14, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 13
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_EXPIRED"

    const/16 v14, 0xc

    const/16 v12, 0x88

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 14
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "PUBLISHED_DEVICES"

    const/16 v14, 0xd

    move-object/from16 v16, v13

    const/16 v13, 0x89

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 15
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "NETWORK_CONNECTIVITY_CHANGED"

    const/16 v14, 0xe

    move-object/from16 v17, v12

    const/16 v12, 0xbe

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_CONNECT_TO_DEVICE"

    const/16 v14, 0xf

    move-object/from16 v18, v13

    const/16 v13, 0xa

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 17
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_CONNECTION_FAILED"

    const/16 v14, 0x10

    move-object/from16 v19, v12

    const/16 v12, 0xb

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 18
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_CONNECTION_SUCCESS"

    const/16 v14, 0x11

    move-object/from16 v20, v13

    const/16 v13, 0xc

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 19
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_SENT_APP_AVAILABILITY_MESSAGE"

    const/16 v14, 0x12

    move-object/from16 v21, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 20
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_RECEIVED_APP_AVAILABILITY_MESSAGE"

    const/16 v14, 0x13

    move-object/from16 v22, v13

    const/16 v13, 0xe

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 21
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_SENT_STATUS_MESSAGE"

    const/16 v14, 0x14

    move-object/from16 v23, v12

    const/16 v12, 0xf

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 22
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_FILTER_RECEIVED_STATUS_MESSAGE"

    const/16 v14, 0x15

    move-object/from16 v24, v13

    const/16 v13, 0x10

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 23
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_FILTER_IGNORING_RECEIVED_MESSAGE"

    const/16 v15, 0x16

    move-object/from16 v25, v12

    const/16 v12, 0x11

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 24
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_FILTER_FINISHED"

    const/16 v15, 0x17

    move-object/from16 v26, v13

    const/16 v13, 0x12

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 25
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_FILTER_ERROR"

    const/16 v15, 0x18

    move-object/from16 v27, v12

    const/16 v12, 0x13

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 26
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_FILTER_TIMED_OUT"

    const/16 v15, 0x19

    move-object/from16 v28, v13

    const/16 v13, 0x14

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_CONTROLLER_CONNECT_TO_DEVICE"

    const/16 v15, 0x1a

    move-object/from16 v29, v12

    const/16 v12, 0x1e

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 28
    new-instance v14, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_CONTROLLER_CONNECTION_FAILED"

    const/16 v12, 0x1b

    move-object/from16 v30, v13

    const/16 v13, 0x1f

    invoke-direct {v14, v15, v12, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "DEVICE_CONTROLLER_CONNECTION_SUCCESS"

    const/16 v13, 0x1c

    move-object/from16 v31, v14

    const/16 v14, 0x20

    invoke-direct {v12, v15, v13, v14}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 30
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "LAUNCH_APPLICATION"

    const/16 v14, 0x1d

    move-object/from16 v32, v12

    const/16 v12, 0x28

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 31
    new-instance v14, Lcom/shabakaty/downloader/ep6;

    const-string v15, "LAUNCH_APPLICATION_COMMAND"

    const/16 v12, 0x2c

    move-object/from16 v33, v13

    const/16 v13, 0x1e

    invoke-direct {v14, v15, v13, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 32
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "APPLICATION_CONNECTION_FAILED"

    const/16 v12, 0x29

    move-object/from16 v34, v14

    const/16 v14, 0x1f

    invoke-direct {v13, v15, v14, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 33
    new-instance v14, Lcom/shabakaty/downloader/ep6;

    const-string v15, "APPLICATION_CONNECTION_SUCCESS"

    const/16 v12, 0x2a

    move-object/from16 v35, v13

    const/16 v13, 0x20

    invoke-direct {v14, v15, v13, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 34
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "APPLICATION_DISCONNECTED"

    const/16 v12, 0x21

    move-object/from16 v36, v14

    const/16 v14, 0x2b

    invoke-direct {v13, v15, v12, v14}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 35
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "CAST_NEARBY_PROXIMITY_INFO_REQUEST"

    const/16 v14, 0x22

    move-object/from16 v37, v13

    const/16 v13, 0x32

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 36
    new-instance v14, Lcom/shabakaty/downloader/ep6;

    const-string v15, "CAST_NEARBY_PROXIMITY_INFO_RESPONSE"

    const/16 v13, 0x23

    move-object/from16 v38, v12

    const/16 v12, 0x33

    invoke-direct {v14, v15, v13, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 37
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v15, "CAST_NEARBY_START_AUDIO_TOKEN_PLAYBACK"

    const/16 v12, 0x24

    move-object/from16 v39, v14

    const/16 v14, 0x34

    invoke-direct {v13, v15, v12, v14}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 38
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v15, "CAST_NEARBY_STOP_AUDIO_TOKEN_PLAYBACK"

    const/16 v14, 0x25

    move-object/from16 v40, v13

    const/16 v13, 0x35

    invoke-direct {v12, v15, v14, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 39
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_CACHE_STATISTICS"

    const/16 v15, 0x26

    move-object/from16 v41, v12

    const/16 v12, 0x3c

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 40
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_DISPLAY_PLUGIN_SESSION_START"

    const/16 v15, 0x27

    move-object/from16 v42, v13

    const/16 v13, 0x46

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 41
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_DISPLAY_PLUGIN_SESSION_END"

    const/16 v15, 0x47

    move-object/from16 v43, v12

    const/16 v12, 0x28

    invoke-direct {v13, v14, v12, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 42
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_DISPLAY_PLUGIN_ERROR"

    const/16 v15, 0x48

    move-object/from16 v44, v13

    const/16 v13, 0x29

    invoke-direct {v12, v14, v13, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 43
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_DISPLAY_PLUGIN_SESSION_START_FAILED"

    const/16 v15, 0x49

    move-object/from16 v45, v12

    const/16 v12, 0x2a

    invoke-direct {v13, v14, v12, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 44
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "CONFIGURED_FLAGS_VALUE"

    const/16 v15, 0xa0

    move-object/from16 v46, v13

    const/16 v13, 0x2b

    invoke-direct {v12, v14, v13, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 45
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_FAILED"

    const/16 v15, 0xaa

    move-object/from16 v47, v12

    const/16 v12, 0x2c

    invoke-direct {v13, v14, v12, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 46
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_TRIGGERED"

    const/16 v15, 0x2d

    move-object/from16 v48, v13

    const/16 v13, 0xab

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 47
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_CANCELED"

    const/16 v15, 0x2e

    move-object/from16 v49, v12

    const/16 v12, 0xb7

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 48
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_STOP"

    const/16 v15, 0x2f

    move-object/from16 v50, v13

    const/16 v13, 0xac

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 49
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_MUTE"

    const/16 v15, 0x30

    move-object/from16 v51, v12

    const/16 v12, 0xad

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 50
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_UNMUTE"

    const/16 v15, 0x31

    move-object/from16 v52, v13

    const/16 v13, 0xae

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 51
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_PAUSE"

    const/16 v15, 0xaf

    move-object/from16 v53, v12

    const/16 v12, 0x32

    invoke-direct {v13, v14, v12, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 52
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_PLAY"

    const/16 v15, 0xb0

    move-object/from16 v54, v13

    const/16 v13, 0x33

    invoke-direct {v12, v14, v13, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 53
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_QUEUE_PREV"

    const/16 v15, 0xb9

    move-object/from16 v55, v12

    const/16 v12, 0x34

    invoke-direct {v13, v14, v12, v15}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 54
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_QUEUE_NEXT"

    const/16 v15, 0x35

    move-object/from16 v56, v13

    const/16 v13, 0xba

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 55
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_CLICK_NOTIFICATION"

    const/16 v15, 0x36

    move-object/from16 v57, v12

    const/16 v12, 0xb8

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 56
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_DISMISSED"

    const/16 v15, 0x37

    move-object/from16 v58, v13

    const/16 v13, 0xb1

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 57
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_SETTING_TOGGLE_OFF"

    const/16 v15, 0x38

    move-object/from16 v59, v12

    const/16 v12, 0xb2

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 58
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_SETTING_TOGGLE_ON"

    const/16 v15, 0x39

    move-object/from16 v60, v13

    const/16 v13, 0xb3

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 59
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "PLAY_SERVICES_NOTIFICATIONS_DISABLED"

    const/16 v15, 0x3a

    move-object/from16 v61, v12

    const/16 v12, 0xb4

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 60
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_SETTING_OPEN_HOME_APP"

    const/16 v15, 0x3b

    move-object/from16 v62, v13

    const/16 v13, 0xb5

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 61
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "REMOTE_CONTROL_NOTIFICATION_SETTING_GET_HOME_APP"

    const/16 v15, 0x3c

    move-object/from16 v63, v12

    const/16 v12, 0xb6

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 62
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DISCOVERY_START"

    const/16 v15, 0x3d

    move-object/from16 v64, v13

    const/16 v13, 0xc9

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 63
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DISCOVERY_STOP"

    const/16 v15, 0x3e

    move-object/from16 v65, v12

    const/16 v12, 0xca

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 64
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DISCOVERY_PING"

    const/16 v15, 0x3f

    move-object/from16 v66, v13

    const/16 v13, 0xcb

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 65
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "GENERIC_MDNS_RECEIVED"

    const/16 v15, 0x40

    move-object/from16 v67, v12

    const/16 v12, 0xcc

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 66
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "SUBTYPE_MDNS_RECEIVED"

    const/16 v15, 0x41

    move-object/from16 v68, v13

    const/16 v13, 0xcd

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 67
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "MDNS_PARSE_ERROR"

    const/16 v15, 0x42

    move-object/from16 v69, v12

    const/16 v12, 0xce

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 68
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "BLE_SIGNAL_RECEIVED"

    const/16 v15, 0x43

    move-object/from16 v70, v13

    const/16 v13, 0xcf

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 69
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "TCP_PROBING_RESULT"

    const/16 v15, 0x44

    move-object/from16 v71, v12

    const/16 v12, 0xd0

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 70
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "DEVICE_PUBLISHED"

    const/16 v15, 0x45

    move-object/from16 v72, v13

    const/16 v13, 0xd1

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 71
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "MDNS_SCANNER_FAILED_TO_START"

    const/16 v15, 0x46

    move-object/from16 v73, v12

    const/16 v12, 0xd2

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 72
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "BLE_SCANNER_FAILED_TO_START"

    const/16 v15, 0x47

    move-object/from16 v74, v13

    const/16 v13, 0xd3

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 73
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "MDNS_REQUEST_QUEUE_SIZE_ON_SERVICE_START"

    const/16 v15, 0x48

    move-object/from16 v75, v12

    const/16 v12, 0xd4

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 74
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "MDNS_REQUEST_SENT_COUNT_PERIODICAL"

    const/16 v15, 0x49

    move-object/from16 v76, v13

    const/16 v13, 0xd5

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 75
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_PROBE_DEVICE_SCREEN_IS_OFF"

    const/16 v15, 0x4a

    move-object/from16 v77, v12

    const/16 v12, 0xd6

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 76
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_MULTICAST_NOT_RECEIVED"

    const/16 v15, 0x4b

    move-object/from16 v78, v13

    const/16 v13, 0xd7

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 77
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "RECOVERED_FROM_ERROR_MULTICAST_NOT_RECEIVED"

    const/16 v15, 0x4c

    move-object/from16 v79, v12

    const/16 v12, 0xd8

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 78
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_STARTING"

    const/16 v15, 0x4d

    move-object/from16 v80, v13

    const/16 v13, 0xdc

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/ep6;->s:Lcom/shabakaty/downloader/ep6;

    .line 79
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_RUNNING"

    const/16 v15, 0x4e

    move-object/from16 v81, v12

    const/16 v12, 0xdd

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/ep6;->t:Lcom/shabakaty/downloader/ep6;

    .line 80
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_PING"

    const/16 v15, 0x4f

    move-object/from16 v82, v13

    const/16 v13, 0xde

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/ep6;->u:Lcom/shabakaty/downloader/ep6;

    .line 81
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_MEDIA_COMMAND"

    const/16 v15, 0x50

    move-object/from16 v83, v12

    const/16 v12, 0xdf

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 82
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_SUSPENDED"

    const/16 v15, 0x51

    move-object/from16 v84, v13

    const/16 v13, 0xe0

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/ep6;->v:Lcom/shabakaty/downloader/ep6;

    .line 83
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_RESUMING"

    const/16 v15, 0x52

    move-object/from16 v85, v12

    const/16 v12, 0xe1

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/ep6;->w:Lcom/shabakaty/downloader/ep6;

    .line 84
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_RESUMED"

    const/16 v15, 0x53

    move-object/from16 v86, v13

    const/16 v13, 0xe2

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/ep6;->x:Lcom/shabakaty/downloader/ep6;

    .line 85
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_END"

    const/16 v15, 0x54

    move-object/from16 v87, v12

    const/16 v12, 0xe3

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/ep6;->y:Lcom/shabakaty/downloader/ep6;

    .line 86
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "APP_SESSION_RUNNING_NETWORK_CHANGED"

    const/16 v15, 0x55

    move-object/from16 v88, v13

    const/16 v13, 0xe4

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 87
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "API_USAGE_IOS"

    const/16 v15, 0x56

    move-object/from16 v89, v12

    const/16 v12, 0xf1

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 88
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "API_USAGE_REPORT"

    const/16 v15, 0x57

    move-object/from16 v90, v13

    const/16 v13, 0xf2

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/shabakaty/downloader/ep6;->z:Lcom/shabakaty/downloader/ep6;

    .line 89
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "GET_WIFI_PASSWORD_SUCCESS"

    const/16 v15, 0x58

    move-object/from16 v91, v12

    const/16 v12, 0xfa

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 90
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "GET_WIFI_PASSWORD_ERROR"

    const/16 v15, 0x59

    move-object/from16 v92, v13

    const/16 v13, 0xfb

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 91
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "PREACHE_ACTIVITY"

    const/16 v15, 0x5a

    move-object/from16 v93, v12

    const/16 v12, 0x104

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 92
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "KEY_EXCHANGE_REQUEST"

    const/16 v15, 0x5b

    move-object/from16 v94, v13

    const/16 v13, 0x105

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 93
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_SOCKET_NO_DATA_CONSUMED_WHEN_READ"

    const/16 v15, 0x5c

    move-object/from16 v95, v12

    const/16 v12, 0x10e

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 94
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_SELECTOR_NOT_BLOCKING_WHEN_NO_SOCKET"

    const/16 v15, 0x5d

    move-object/from16 v96, v13

    const/16 v13, 0x10f

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 95
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_FAIL_TO_SHUTDOWN_SOCKET_OUTPUT"

    const/16 v15, 0x5e

    move-object/from16 v97, v12

    const/16 v12, 0x110

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 96
    new-instance v12, Lcom/shabakaty/downloader/ep6;

    const-string v14, "ERROR_REPORT"

    const/16 v15, 0x5f

    move-object/from16 v98, v13

    const/16 v13, 0x118

    invoke-direct {v12, v14, v15, v13}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    .line 97
    new-instance v13, Lcom/shabakaty/downloader/ep6;

    const-string v14, "CAST_MESSAGE_STATS"

    const/16 v15, 0x60

    move-object/from16 v99, v12

    const/16 v12, 0x122

    invoke-direct {v13, v14, v15, v12}, Lcom/shabakaty/downloader/ep6;-><init>(Ljava/lang/String;II)V

    const/16 v12, 0x61

    new-array v12, v12, [Lcom/shabakaty/downloader/ep6;

    const/4 v14, 0x0

    aput-object v0, v12, v14

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v7, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v9, v12, v0

    const/16 v0, 0xa

    aput-object v10, v12, v0

    const/16 v0, 0xb

    aput-object v11, v12, v0

    const/16 v0, 0xc

    aput-object v16, v12, v0

    const/16 v0, 0xd

    aput-object v17, v12, v0

    const/16 v0, 0xe

    aput-object v18, v12, v0

    const/16 v0, 0xf

    aput-object v19, v12, v0

    const/16 v0, 0x10

    aput-object v20, v12, v0

    const/16 v0, 0x11

    aput-object v21, v12, v0

    const/16 v0, 0x12

    aput-object v22, v12, v0

    const/16 v0, 0x13

    aput-object v23, v12, v0

    const/16 v0, 0x14

    aput-object v24, v12, v0

    const/16 v0, 0x15

    aput-object v25, v12, v0

    const/16 v0, 0x16

    aput-object v26, v12, v0

    const/16 v0, 0x17

    aput-object v27, v12, v0

    const/16 v0, 0x18

    aput-object v28, v12, v0

    const/16 v0, 0x19

    aput-object v29, v12, v0

    const/16 v0, 0x1a

    aput-object v30, v12, v0

    const/16 v0, 0x1b

    aput-object v31, v12, v0

    const/16 v0, 0x1c

    aput-object v32, v12, v0

    const/16 v0, 0x1d

    aput-object v33, v12, v0

    const/16 v0, 0x1e

    aput-object v34, v12, v0

    const/16 v0, 0x1f

    aput-object v35, v12, v0

    const/16 v0, 0x20

    aput-object v36, v12, v0

    const/16 v0, 0x21

    aput-object v37, v12, v0

    const/16 v0, 0x22

    aput-object v38, v12, v0

    const/16 v0, 0x23

    aput-object v39, v12, v0

    const/16 v0, 0x24

    aput-object v40, v12, v0

    const/16 v0, 0x25

    aput-object v41, v12, v0

    const/16 v0, 0x26

    aput-object v42, v12, v0

    const/16 v0, 0x27

    aput-object v43, v12, v0

    const/16 v0, 0x28

    aput-object v44, v12, v0

    const/16 v0, 0x29

    aput-object v45, v12, v0

    const/16 v0, 0x2a

    aput-object v46, v12, v0

    const/16 v0, 0x2b

    aput-object v47, v12, v0

    const/16 v0, 0x2c

    aput-object v48, v12, v0

    const/16 v0, 0x2d

    aput-object v49, v12, v0

    const/16 v0, 0x2e

    aput-object v50, v12, v0

    const/16 v0, 0x2f

    aput-object v51, v12, v0

    const/16 v0, 0x30

    aput-object v52, v12, v0

    const/16 v0, 0x31

    aput-object v53, v12, v0

    const/16 v0, 0x32

    aput-object v54, v12, v0

    const/16 v0, 0x33

    aput-object v55, v12, v0

    const/16 v0, 0x34

    aput-object v56, v12, v0

    const/16 v0, 0x35

    aput-object v57, v12, v0

    const/16 v0, 0x36

    aput-object v58, v12, v0

    const/16 v0, 0x37

    aput-object v59, v12, v0

    const/16 v0, 0x38

    aput-object v60, v12, v0

    const/16 v0, 0x39

    aput-object v61, v12, v0

    const/16 v0, 0x3a

    aput-object v62, v12, v0

    const/16 v0, 0x3b

    aput-object v63, v12, v0

    const/16 v0, 0x3c

    aput-object v64, v12, v0

    const/16 v0, 0x3d

    aput-object v65, v12, v0

    const/16 v0, 0x3e

    aput-object v66, v12, v0

    const/16 v0, 0x3f

    aput-object v67, v12, v0

    const/16 v0, 0x40

    aput-object v68, v12, v0

    const/16 v0, 0x41

    aput-object v69, v12, v0

    const/16 v0, 0x42

    aput-object v70, v12, v0

    const/16 v0, 0x43

    aput-object v71, v12, v0

    const/16 v0, 0x44

    aput-object v72, v12, v0

    const/16 v0, 0x45

    aput-object v73, v12, v0

    const/16 v0, 0x46

    aput-object v74, v12, v0

    const/16 v0, 0x47

    aput-object v75, v12, v0

    const/16 v0, 0x48

    aput-object v76, v12, v0

    const/16 v0, 0x49

    aput-object v77, v12, v0

    const/16 v0, 0x4a

    aput-object v78, v12, v0

    const/16 v0, 0x4b

    aput-object v79, v12, v0

    const/16 v0, 0x4c

    aput-object v80, v12, v0

    const/16 v0, 0x4d

    aput-object v81, v12, v0

    const/16 v0, 0x4e

    aput-object v82, v12, v0

    const/16 v0, 0x4f

    aput-object v83, v12, v0

    const/16 v0, 0x50

    aput-object v84, v12, v0

    const/16 v0, 0x51

    aput-object v85, v12, v0

    const/16 v0, 0x52

    aput-object v86, v12, v0

    const/16 v0, 0x53

    aput-object v87, v12, v0

    const/16 v0, 0x54

    aput-object v88, v12, v0

    const/16 v0, 0x55

    aput-object v89, v12, v0

    const/16 v0, 0x56

    aput-object v90, v12, v0

    const/16 v0, 0x57

    aput-object v91, v12, v0

    const/16 v0, 0x58

    aput-object v92, v12, v0

    const/16 v0, 0x59

    aput-object v93, v12, v0

    const/16 v0, 0x5a

    aput-object v94, v12, v0

    const/16 v0, 0x5b

    aput-object v95, v12, v0

    const/16 v0, 0x5c

    aput-object v96, v12, v0

    const/16 v0, 0x5d

    aput-object v97, v12, v0

    const/16 v0, 0x5e

    aput-object v98, v12, v0

    const/16 v0, 0x5f

    aput-object v99, v12, v0

    const/16 v0, 0x60

    aput-object v13, v12, v0

    .line 98
    sput-object v12, Lcom/shabakaty/downloader/ep6;->A:[Lcom/shabakaty/downloader/ep6;

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
    iput p3, p0, Lcom/shabakaty/downloader/ep6;->r:I

    return-void
.end method

.method public static values()[Lcom/shabakaty/downloader/ep6;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ep6;->A:[Lcom/shabakaty/downloader/ep6;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/ep6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/ep6;

    return-object v0
.end method


# virtual methods
.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/ep6;->r:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/shabakaty/downloader/ep6;

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
    iget v1, p0, Lcom/shabakaty/downloader/ep6;->r:I

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
