.class public final Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/facebook/appevents/internal/FileDownloadTask$Callback;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 3
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-array v1, v2, [B

    .line 5
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    .line 7
    invoke-static {v1, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 8
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x4

    if-ge v2, v6, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v3, v5}, Ljava/lang/String;-><init>([BII)V

    .line 11
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_2

    .line 14
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    new-instance v9, Lcom/facebook/appevents/ml/Model$2;

    invoke-direct {v9}, Lcom/facebook/appevents/ml/Model$2;-><init>()V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_6

    .line 18
    aget-object v11, v8, v10

    .line 19
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 20
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v14, v13, [I

    const/4 v15, 0x1

    :goto_2
    if-ge v4, v13, :cond_3

    .line 21
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    aput v16, v14, v4

    .line 22
    aget v16, v14, v4

    mul-int v15, v15, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v4, v15, 0x4

    add-int v12, v6, v4

    if-le v12, v2, :cond_4

    goto :goto_3

    .line 23
    :cond_4
    invoke-static {v1, v6, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 24
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 25
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    invoke-direct {v6, v14}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 26
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    .line 27
    iget-object v13, v6, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v14, 0x0

    .line 28
    invoke-virtual {v4, v13, v14, v15}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 29
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 30
    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 31
    :cond_5
    invoke-virtual {v5, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    move v6, v12

    goto :goto_1

    :catch_0
    :goto_3
    const/4 v5, 0x0

    .line 32
    :cond_6
    :try_start_1
    new-instance v1, Lcom/facebook/appevents/ml/Model;

    invoke-direct {v1, v5}, Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 33
    iget-object v2, v0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->d:I

    const-string v6, "_rule"

    invoke-static {v4, v5, v6}, Lcom/shabakaty/downloader/gh;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    iget-object v5, v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->c:Ljava/lang/String;

    new-instance v6, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;

    invoke-direct {v6, v0, v3, v1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;-><init>(Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;)V

    .line 36
    invoke-static {v5, v4, v6}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    goto :goto_5

    :cond_7
    return-void
.end method
