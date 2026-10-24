.class public final Lcom/facebook/appevents/ml/ModelManager;
.super Ljava/lang/Object;
.source "ModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/ml/ModelManager$TaskHandler;,
        Lcom/facebook/appevents/ml/ModelManager$Task;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/ModelManager$TaskHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->a:Ljava/util/Map;

    const v0, 0xf731400

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->b:Ljava/lang/Integer;

    const-string v0, "other"

    const-string v1, "fb_mobile_complete_registration"

    const-string v2, "fb_mobile_add_to_cart"

    const-string v3, "fb_mobile_purchase"

    const-string v4, "fb_mobile_initiated_checkout"

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->c:Ljava/util/List;

    const-string v0, "none"

    const-string v1, "address"

    const-string v2, "health"

    .line 5
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager;->d:Ljava/util/List;

    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 11

    const-string v0, "use_case"

    const-string v1, "version_id"

    const-string v2, "asset_uri"

    const-string v3, "rules_uri"

    const-string v4, "thresholds"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, ","

    .line 3
    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "fields"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    .line 4
    sget-object v8, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 5
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 6
    sget-object v8, Lcom/facebook/FacebookSdk;->c:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "%s/model_asset"

    .line 7
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 8
    invoke-static {v8, v7, v8}, Lcom/facebook/GraphRequest;->l(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v7

    .line 9
    iput-boolean v5, v7, Lcom/facebook/GraphRequest;->i:Z

    .line 10
    iput-object v6, v7, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    .line 11
    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->d()Lcom/facebook/GraphResponse;

    move-result-object v5

    .line 12
    iget-object v5, v5, Lcom/facebook/GraphResponse;->b:Lorg/json/JSONObject;

    if-nez v5, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "data"

    .line 14
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 15
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v9, v7, :cond_2

    .line 16
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 17
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v8, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 23
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v8, v6

    goto :goto_1

    .line 25
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v8, v0

    :goto_1
    return-object v8
.end method

.method public static b()V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->a:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$Task;->s:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v7}, Lcom/facebook/appevents/ml/ModelManager$Task;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 6
    iget-object v7, v6, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->b:Ljava/lang/String;

    .line 7
    iget v8, v6, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->d:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 8
    sget-object v8, Lcom/facebook/internal/FeatureManager$Feature;->z:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v8}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 9
    invoke-static {}, Lcom/facebook/internal/Utility;->o()Ljava/util/Locale;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "en"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_3

    .line 11
    new-instance v8, Lcom/facebook/appevents/ml/ModelManager$2;

    invoke-direct {v8}, Lcom/facebook/appevents/ml/ModelManager$2;-><init>()V

    .line 12
    iput-object v8, v6, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->h:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v6, v7

    .line 14
    :cond_4
    sget-object v7, Lcom/facebook/appevents/ml/ModelManager$Task;->r:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {v7}, Lcom/facebook/appevents/ml/ModelManager$Task;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 15
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 16
    iget-object v6, v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->b:Ljava/lang/String;

    .line 17
    iget v5, v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->d:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 18
    sget-object v5, Lcom/facebook/internal/FeatureManager$Feature;->A:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v5}, Lcom/facebook/internal/FeatureManager;->c(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 19
    new-instance v5, Lcom/facebook/appevents/ml/ModelManager$3;

    invoke-direct {v5}, Lcom/facebook/appevents/ml/ModelManager$3;-><init>()V

    .line 20
    iput-object v5, v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->h:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_a

    if-lez v2, :cond_a

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 23
    new-instance v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    const-string v10, "MTML"

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v10

    move v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[F)V

    .line 24
    invoke-static {}, Lcom/facebook/appevents/ml/Utils;->a()Ljava/io/File;

    move-result-object v4

    const-string v5, "_"

    if-nez v4, :cond_6

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 26
    array-length v6, v4

    if-nez v6, :cond_7

    goto :goto_4

    .line 27
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    array-length v6, v4

    :goto_3
    if-ge v3, v6, :cond_9

    aget-object v7, v4, v3

    .line 29
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 32
    :cond_9
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    iget-object v1, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->b:Ljava/lang/String;

    new-instance v3, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;

    invoke-direct {v3, v0}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->b(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    :cond_a
    return-void
.end method

.method public static c(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p2

    .line 1
    sget-object v1, Lcom/facebook/appevents/ml/ModelManager;->a:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->h()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    if-eqz v1, :cond_1d

    .line 2
    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->g:Lcom/facebook/appevents/ml/Model;

    if-nez v3, :cond_0

    goto/16 :goto_15

    .line 3
    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    .line 4
    aget-object v5, p1, v4

    array-length v5, v5

    .line 5
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v3, v8, v4

    const/4 v9, 0x1

    aput v5, v8, v9

    invoke-direct {v6, v8}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_1

    .line 6
    aget-object v10, p1, v8

    .line 7
    iget-object v11, v6, Lcom/facebook/appevents/ml/MTensor;->a:[F

    mul-int v12, v8, v5

    .line 8
    invoke-static {v10, v4, v11, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->g:Lcom/facebook/appevents/ml/Model;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/ModelManager$Task;->f()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v8, v3, Lcom/facebook/appevents/ml/Model;->a:Lcom/facebook/appevents/ml/MTensor;

    .line 11
    array-length v10, v0

    .line 12
    iget-object v11, v8, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v11, v11, v9

    .line 13
    new-instance v12, Lcom/facebook/appevents/ml/MTensor;

    const/4 v13, 0x3

    new-array v14, v13, [I

    aput v10, v14, v4

    const/16 v15, 0x80

    aput v15, v14, v9

    aput v11, v14, v7

    invoke-direct {v12, v14}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 14
    iget-object v14, v12, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 15
    iget-object v8, v8, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_5

    .line 16
    aget-object v16, v0, v2

    new-array v13, v15, [I

    .line 17
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v7, "\\s+"

    .line 18
    invoke-virtual {v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v9, " "

    .line 19
    invoke-static {v9, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    .line 20
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v15, :cond_3

    .line 21
    array-length v15, v7

    if-ge v9, v15, :cond_2

    .line 22
    aget-byte v15, v7, v9

    and-int/lit16 v15, v15, 0xff

    aput v15, v13, v9

    goto :goto_3

    .line 23
    :cond_2
    aput v4, v13, v9

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x80

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_4
    const/16 v9, 0x80

    if-ge v7, v9, :cond_4

    .line 24
    aget v15, v13, v7

    mul-int v15, v15, v11

    mul-int/lit16 v9, v11, 0x80

    mul-int v9, v9, v2

    mul-int v17, v11, v7

    add-int v9, v17, v9

    invoke-static {v8, v15, v14, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x3

    const/16 v15, 0x80

    goto :goto_1

    .line 25
    :cond_5
    iget-object v0, v3, Lcom/facebook/appevents/ml/Model;->b:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v12, v0}, Lcom/facebook/appevents/ml/Operator;->b(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 26
    iget-object v2, v3, Lcom/facebook/appevents/ml/Model;->e:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0, v2}, Lcom/facebook/appevents/ml/Operator;->a(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 27
    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->f(Lcom/facebook/appevents/ml/MTensor;)V

    .line 28
    iget-object v2, v3, Lcom/facebook/appevents/ml/Model;->c:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0, v2}, Lcom/facebook/appevents/ml/Operator;->b(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v2

    .line 29
    iget-object v7, v3, Lcom/facebook/appevents/ml/Model;->f:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v2, v7}, Lcom/facebook/appevents/ml/Operator;->a(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 30
    invoke-static {v2}, Lcom/facebook/appevents/ml/Operator;->f(Lcom/facebook/appevents/ml/MTensor;)V

    const/4 v7, 0x2

    .line 31
    invoke-static {v2, v7}, Lcom/facebook/appevents/ml/Operator;->e(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v2

    .line 32
    iget-object v7, v3, Lcom/facebook/appevents/ml/Model;->d:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v2, v7}, Lcom/facebook/appevents/ml/Operator;->b(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v7

    .line 33
    iget-object v8, v3, Lcom/facebook/appevents/ml/Model;->g:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v7, v8}, Lcom/facebook/appevents/ml/Operator;->a(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 34
    invoke-static {v7}, Lcom/facebook/appevents/ml/Operator;->f(Lcom/facebook/appevents/ml/MTensor;)V

    .line 35
    iget-object v8, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    .line 36
    invoke-static {v0, v8}, Lcom/facebook/appevents/ml/Operator;->e(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 37
    iget-object v8, v2, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v8, v8, v9

    .line 38
    invoke-static {v2, v8}, Lcom/facebook/appevents/ml/Operator;->e(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v2

    .line 39
    iget-object v8, v7, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v8, v8, v9

    .line 40
    invoke-static {v7, v8}, Lcom/facebook/appevents/ml/Operator;->e(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v7

    .line 41
    invoke-static {v0, v9}, Lcom/facebook/appevents/ml/Operator;->d(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 42
    invoke-static {v2, v9}, Lcom/facebook/appevents/ml/Operator;->d(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 43
    invoke-static {v7, v9}, Lcom/facebook/appevents/ml/Operator;->d(Lcom/facebook/appevents/ml/MTensor;I)V

    const/4 v8, 0x4

    new-array v10, v8, [Lcom/facebook/appevents/ml/MTensor;

    aput-object v0, v10, v4

    aput-object v2, v10, v9

    const/4 v0, 0x2

    aput-object v7, v10, v0

    const/4 v0, 0x3

    aput-object v6, v10, v0

    .line 44
    aget-object v0, v10, v4

    .line 45
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v0, v0, v4

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v2, v8, :cond_6

    .line 46
    aget-object v7, v10, v2

    .line 47
    iget-object v7, v7, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v7, v7, v9

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 48
    :cond_6
    new-instance v2, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v0, v7, v4

    aput v6, v7, v9

    invoke-direct {v2, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 49
    iget-object v7, v2, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v0, :cond_8

    mul-int v11, v9, v6

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v8, :cond_7

    .line 50
    aget-object v13, v10, v12

    .line 51
    iget-object v13, v13, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 52
    aget-object v14, v10, v12

    .line 53
    iget-object v14, v14, Lcom/facebook/appevents/ml/MTensor;->b:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-int v15, v9, v14

    .line 54
    invoke-static {v13, v15, v7, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 55
    :cond_8
    iget-object v0, v3, Lcom/facebook/appevents/ml/Model;->h:Lcom/facebook/appevents/ml/MTensor;

    iget-object v6, v3, Lcom/facebook/appevents/ml/Model;->j:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v2, v0, v6}, Lcom/facebook/appevents/ml/Operator;->c(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->f(Lcom/facebook/appevents/ml/MTensor;)V

    .line 57
    iget-object v2, v3, Lcom/facebook/appevents/ml/Model;->i:Lcom/facebook/appevents/ml/MTensor;

    iget-object v6, v3, Lcom/facebook/appevents/ml/Model;->k:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0, v2, v6}, Lcom/facebook/appevents/ml/Operator;->c(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->f(Lcom/facebook/appevents/ml/MTensor;)V

    .line 59
    iget-object v2, v3, Lcom/facebook/appevents/ml/Model;->l:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".weight"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/ml/MTensor;

    .line 60
    iget-object v3, v3, Lcom/facebook/appevents/ml/Model;->l:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bias"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/ml/MTensor;

    if-eqz v2, :cond_f

    if-nez v3, :cond_9

    goto :goto_d

    .line 61
    :cond_9
    invoke-static {v0, v2, v3}, Lcom/facebook/appevents/ml/Operator;->c(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 62
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v3, v2, v4

    const/4 v5, 0x1

    .line 63
    aget v2, v2, v5

    .line 64
    iget-object v5, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v3, :cond_10

    mul-int v7, v6, v2

    add-int v8, v7, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    move v11, v7

    :goto_9
    if-ge v11, v8, :cond_b

    .line 65
    aget v12, v5, v11

    cmpl-float v12, v12, v9

    if-lez v12, :cond_a

    .line 66
    aget v9, v5, v11

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    move v11, v7

    :goto_a
    if-ge v11, v8, :cond_c

    .line 67
    aget v12, v5, v11

    sub-float/2addr v12, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    move v9, v7

    :goto_b
    if-ge v9, v8, :cond_d

    .line 68
    aget v11, v5, v9

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    if-ge v7, v8, :cond_e

    .line 69
    aget v9, v5, v7

    div-float/2addr v9, v10

    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    :goto_d
    const/4 v0, 0x0

    .line 70
    :cond_10
    iget-object v1, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->e:[F

    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1c

    .line 71
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 72
    array-length v2, v2

    if-eqz v2, :cond_1c

    array-length v2, v1

    if-nez v2, :cond_11

    goto/16 :goto_14

    .line 73
    :cond_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x0

    return-object v2

    .line 74
    :cond_12
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v5, v2, v4

    .line 75
    aget v2, v2, v3

    .line 76
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 77
    new-array v3, v5, [Ljava/lang/String;

    .line 78
    array-length v6, v1

    if-eq v2, v6, :cond_13

    const/4 v2, 0x0

    goto :goto_10

    :cond_13
    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_16

    const-string v7, "other"

    .line 79
    aput-object v7, v3, v6

    const/4 v7, 0x0

    .line 80
    :goto_f
    array-length v8, v1

    if-ge v7, v8, :cond_15

    mul-int v8, v6, v2

    add-int/2addr v8, v7

    .line 81
    aget v8, v0, v8

    aget v9, v1, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_14

    .line 82
    sget-object v8, Lcom/facebook/appevents/ml/ModelManager;->c:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v3, v6

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_16
    move-object v2, v3

    :goto_10
    return-object v2

    .line 83
    :cond_17
    iget-object v2, v0, Lcom/facebook/appevents/ml/MTensor;->b:[I

    aget v3, v2, v4

    const/4 v5, 0x1

    .line 84
    aget v2, v2, v5

    .line 85
    iget-object v0, v0, Lcom/facebook/appevents/ml/MTensor;->a:[F

    .line 86
    new-array v5, v3, [Ljava/lang/String;

    .line 87
    array-length v6, v1

    if-eq v2, v6, :cond_18

    const/4 v2, 0x0

    goto :goto_13

    :cond_18
    const/4 v6, 0x0

    :goto_11
    if-ge v6, v3, :cond_1b

    const-string v7, "none"

    .line 88
    aput-object v7, v5, v6

    const/4 v7, 0x0

    .line 89
    :goto_12
    array-length v8, v1

    if-ge v7, v8, :cond_1a

    mul-int v8, v6, v2

    add-int/2addr v8, v7

    .line 90
    aget v8, v0, v8

    aget v9, v1, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_19

    .line 91
    sget-object v8, Lcom/facebook/appevents/ml/ModelManager;->d:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v5, v6

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1b
    move-object v2, v5

    :goto_13
    return-object v2

    :cond_1c
    :goto_14
    const/4 v0, 0x0

    return-object v0

    :cond_1d
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method
