.class Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;
.super Ljava/lang/Object;
.source "DefaultConnectableDeviceStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/device/DefaultConnectableDeviceStore;->writeStoreToDisk(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

.field public final synthetic val$deviceStore:Lorg/json/JSONObject;

.field public final synthetic val$lastUpdate:J


# direct methods
.method public constructor <init>(Lcom/connectsdk/device/DefaultConnectableDeviceStore;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    iput-object p2, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->val$deviceStore:Lorg/json/JSONObject;

    iput-wide p3, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->val$lastUpdate:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    invoke-static {v2}, Lcom/connectsdk/device/DefaultConnectableDeviceStore;->access$000(Lcom/connectsdk/device/DefaultConnectableDeviceStore;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 5
    iget-object v1, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->val$deviceStore:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    invoke-static {v1, v0}, Lcom/connectsdk/device/DefaultConnectableDeviceStore;->access$102(Lcom/connectsdk/device/DefaultConnectableDeviceStore;Z)Z

    .line 9
    iget-wide v0, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->val$lastUpdate:J

    iget-object v2, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    iget-wide v3, v2, Lcom/connectsdk/device/DefaultConnectableDeviceStore;->updated:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 10
    iget-object v0, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->val$deviceStore:Lorg/json/JSONObject;

    invoke-static {v2, v0}, Lcom/connectsdk/device/DefaultConnectableDeviceStore;->access$200(Lcom/connectsdk/device/DefaultConnectableDeviceStore;Lorg/json/JSONObject;)V

    :cond_1
    return-void

    .line 11
    :goto_1
    iget-object v2, p0, Lcom/connectsdk/device/DefaultConnectableDeviceStore$1;->this$0:Lcom/connectsdk/device/DefaultConnectableDeviceStore;

    invoke-static {v2, v0}, Lcom/connectsdk/device/DefaultConnectableDeviceStore;->access$102(Lcom/connectsdk/device/DefaultConnectableDeviceStore;Z)Z

    .line 12
    throw v1
.end method
