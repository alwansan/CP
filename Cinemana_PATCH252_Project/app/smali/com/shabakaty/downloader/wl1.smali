.class public final Lcom/shabakaty/downloader/wl1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/shabakaty/downloader/h71;


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Landroid/media/MediaDrm;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v3}, Lcom/shabakaty/downloader/md;->c(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    .line 5
    new-instance v1, Landroid/media/MediaDrm;

    .line 6
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 7
    :goto_0
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    .line 8
    iput v2, p0, Lcom/shabakaty/downloader/wl1;->c:I

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v0, "ASUS_Z00AD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "securityLevel"

    const-string v0, "L3"

    .line 11
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shabakaty/downloader/wl1;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/wl1;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/shabakaty/downloader/tl1;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/shabakaty/downloader/tl1;

    return-object v0
.end method

.method public c([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public d([B)Lcom/shabakaty/downloader/g71;
    .locals 5

    .line 1
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    iget-object v2, p0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    const-string v2, "securityLevel"

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "L3"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    new-instance v2, Lcom/shabakaty/downloader/tl1;

    iget-object v3, p0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    const/16 v4, 0x1b

    if-ge v0, v4, :cond_1

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/shabakaty/downloader/jp;->b:Ljava/util/UUID;

    .line 7
    :cond_1
    invoke-direct {v2, v3, p1, v1}, Lcom/shabakaty/downloader/tl1;-><init>(Ljava/util/UUID;[BZ)V

    return-object v2
.end method

.method public e()Lcom/shabakaty/downloader/h71$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/h71$d;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/h71$d;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public g([B[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public h([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public i([B[B)[B
    .locals 9

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    iget-object v1, p0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/shabakaty/downloader/sy4;->o([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"keys\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keys"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ","

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "{\"k\":\""

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "k"

    .line 10
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    .line 11
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    const/16 v8, 0x5f

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kid\":\""

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kid"

    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kty\":\""

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kty"

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to adjust response data: "

    .line 22
    invoke-static {p2}, Lcom/shabakaty/downloader/sy4;->o([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    const-string v2, "ClearKeyUtil"

    invoke-static {v2, v1, v0}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/h71$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ul1;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/ul1;-><init>(Lcom/shabakaty/downloader/wl1;Lcom/shabakaty/downloader/h71$b;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public k([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public l([BLjava/util/List;ILjava/util/HashMap;)Lcom/shabakaty/downloader/h71$a;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/shabakaty/downloader/h71$a;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    .line 1
    iget-object v3, v0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    .line 2
    sget-object v4, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    .line 3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o01$b;

    goto/16 :goto_7

    .line 4
    :cond_0
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v7, 0x1c

    if-lt v3, v7, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_5

    .line 5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/o01$b;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 7
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/o01$b;

    .line 8
    iget-object v10, v9, Lcom/shabakaty/downloader/o01$b;->v:[B

    .line 9
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v11, v9, Lcom/shabakaty/downloader/o01$b;->u:Ljava/lang/String;

    iget-object v12, v3, Lcom/shabakaty/downloader/o01$b;->u:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v9, v9, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    iget-object v11, v3, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    .line 11
    invoke-static {v9, v11}, Lcom/shabakaty/downloader/sy4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 12
    invoke-static {v10}, Lcom/shabakaty/downloader/uj3;->c([B)Lcom/shabakaty/downloader/uj3$a;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_2

    .line 13
    array-length v9, v10

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_5

    .line 14
    new-array v2, v8, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 15
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 16
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/o01$b;

    .line 17
    iget-object v9, v9, Lcom/shabakaty/downloader/o01$b;->v:[B

    .line 18
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    array-length v10, v9

    .line 20
    invoke-static {v9, v6, v2, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 21
    :cond_4
    new-instance v1, Lcom/shabakaty/downloader/o01$b;

    iget-object v7, v3, Lcom/shabakaty/downloader/o01$b;->s:Ljava/util/UUID;

    iget-object v8, v3, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    iget-object v3, v3, Lcom/shabakaty/downloader/o01$b;->u:Ljava/lang/String;

    invoke-direct {v1, v7, v8, v3, v2}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    .line 22
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_9

    .line 23
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/o01$b;

    .line 24
    iget-object v8, v7, Lcom/shabakaty/downloader/o01$b;->v:[B

    .line 25
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v8}, Lcom/shabakaty/downloader/uj3;->c([B)Lcom/shabakaty/downloader/uj3$a;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v8, -0x1

    goto :goto_5

    .line 27
    :cond_6
    iget v8, v8, Lcom/shabakaty/downloader/uj3$a;->b:I

    .line 28
    :goto_5
    sget v9, Lcom/shabakaty/downloader/sy4;->a:I

    if-ge v9, v2, :cond_7

    if-nez v8, :cond_7

    goto :goto_6

    :cond_7
    if-lt v9, v2, :cond_8

    if-ne v8, v5, :cond_8

    :goto_6
    move-object v3, v7

    goto :goto_8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 29
    :cond_9
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/o01$b;

    :goto_7
    move-object v3, v1

    .line 30
    :goto_8
    iget-object v1, v0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    iget-object v2, v3, Lcom/shabakaty/downloader/o01$b;->v:[B

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v7, Lcom/shabakaty/downloader/jp;->e:Ljava/util/UUID;

    invoke-virtual {v7, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x1a

    if-eqz v8, :cond_f

    .line 33
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/uj3;->d([BLjava/util/UUID;)[B

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_9

    :cond_a
    move-object v2, v8

    .line 34
    :goto_9
    aget-byte v8, v2, v6

    and-int/lit16 v8, v8, 0xff

    aget-byte v10, v2, v5

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    const/4 v10, 0x3

    const/4 v12, 0x2

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v8, v12

    const/4 v12, 0x4

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v8, v10

    const/4 v10, 0x5

    .line 35
    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x6

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v11

    or-int/2addr v10, v12

    int-to-short v10, v10

    const/4 v12, 0x7

    .line 36
    aget-byte v13, v2, v13

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v11

    or-int/2addr v12, v13

    int-to-short v12, v12

    const-string v13, "FrameworkMediaDrm"

    if-ne v10, v5, :cond_e

    if-eq v12, v5, :cond_b

    goto :goto_a

    :cond_b
    const/16 v5, 0x9

    .line 37
    aget-byte v14, v2, v11

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xa

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v11

    or-int/2addr v5, v14

    int-to-short v5, v5

    .line 38
    sget-object v11, Lcom/shabakaty/downloader/iz;->d:Ljava/nio/charset/Charset;

    .line 39
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2, v15, v5, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v5, "<LA_URL>"

    .line 40
    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_b

    :cond_c
    const-string v2, "</DATA>"

    .line 41
    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_d

    const-string v4, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 42
    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_d
    invoke-virtual {v14, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v9}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "<LA_URL>https://x</LA_URL>"

    invoke-static {v5, v4, v6, v2}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v8, v8, 0x34

    .line 45
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 46
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v5, v10

    .line 48
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v5, v12

    .line 49
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_b

    :cond_e
    :goto_a
    const-string v4, "Unexpected record count or type. Skipping LA_URL workaround."

    .line 53
    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_b
    invoke-static {v7, v2}, Lcom/shabakaty/downloader/uj3;->a(Ljava/util/UUID;[B)[B

    move-result-object v2

    .line 55
    :cond_f
    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_10

    sget-object v5, Lcom/shabakaty/downloader/jp;->d:Ljava/util/UUID;

    invoke-virtual {v5, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 56
    :cond_10
    invoke-virtual {v7, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/shabakaty/downloader/sy4;->c:Ljava/lang/String;

    const-string v6, "Amazon"

    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lcom/shabakaty/downloader/sy4;->d:Ljava/lang/String;

    const-string v6, "AFTB"

    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTS"

    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTM"

    .line 60
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTT"

    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 62
    :cond_11
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/uj3;->d([BLjava/util/UUID;)[B

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_c

    :cond_12
    move-object v1, v2

    .line 63
    :goto_c
    iget-object v2, v0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    iget-object v5, v3, Lcom/shabakaty/downloader/o01$b;->u:Ljava/lang/String;

    if-ge v4, v9, :cond_14

    .line 64
    sget-object v4, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    .line 65
    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "video/mp4"

    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "audio/mp4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const-string v2, "cenc"

    goto :goto_d

    :cond_14
    move-object v2, v5

    :goto_d
    move-object v6, v1

    move-object v7, v2

    goto :goto_e

    :cond_15
    move-object v6, v3

    move-object v7, v6

    .line 67
    :goto_e
    iget-object v4, v0, Lcom/shabakaty/downloader/wl1;->b:Landroid/media/MediaDrm;

    move-object/from16 v5, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 68
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    .line 69
    iget-object v2, v0, Lcom/shabakaty/downloader/wl1;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v4

    .line 70
    sget-object v5, Lcom/shabakaty/downloader/jp;->c:Ljava/util/UUID;

    invoke-virtual {v5, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 71
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v5, 0x1b

    if-lt v2, v5, :cond_16

    goto :goto_f

    .line 72
    :cond_16
    invoke-static {v4}, Lcom/shabakaty/downloader/sy4;->o([B)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    .line 73
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/16 v5, 0x5f

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lcom/shabakaty/downloader/sy4;->C(Ljava/lang/String;)[B

    move-result-object v4

    .line 75
    :cond_17
    :goto_f
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    const-string v5, "https://x"

    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v2, ""

    .line 77
    :cond_18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v3, :cond_19

    iget-object v5, v3, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    .line 78
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 79
    iget-object v2, v3, Lcom/shabakaty/downloader/o01$b;->t:Ljava/lang/String;

    .line 80
    :cond_19
    sget v3, Lcom/shabakaty/downloader/sy4;->a:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_1a

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    move-result v1

    goto :goto_10

    :cond_1a
    const/high16 v1, -0x80000000

    .line 81
    :goto_10
    new-instance v3, Lcom/shabakaty/downloader/h71$a;

    invoke-direct {v3, v4, v2, v1}, Lcom/shabakaty/downloader/h71$a;-><init>([BLjava/lang/String;I)V

    return-object v3
.end method
