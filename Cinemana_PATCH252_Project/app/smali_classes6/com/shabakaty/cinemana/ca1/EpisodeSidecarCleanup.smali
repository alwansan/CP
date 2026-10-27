.class public final Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;
.super Ljava/lang/Object;
.source "EpisodeSidecarCleanup.java"

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    const-string v0, ""
    if-eqz p0, :sidecar_read_done
    :try_start_sidecar_read
    new-instance v1, Ljava/io/FileInputStream;
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    new-instance v2, Ljava/io/ByteArrayOutputStream;
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    const/16 v3, 0x1000
    new-array v4, v3, [B
    :sidecar_read_loop
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    move-result v5
    if-lez v5, :sidecar_read_finish
    const/4 v6, 0x0
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :sidecar_read_loop
    :sidecar_read_finish
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v3
    const-string v4, "UTF-8"
    new-instance v5, Ljava/lang/String;
    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    move-object v0, v5
    :try_end_sidecar_read
    .catch Ljava/lang/Throwable; {:try_start_sidecar_read .. :try_end_sidecar_read} :sidecar_read_exception
    goto :sidecar_read_done
    :sidecar_read_exception
    move-exception v1
    const-string v0, ""
    :sidecar_read_done
    return-object v0
.end method

.method private static deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    if-eqz p0, :delete_sibling_done
    if-eqz p1, :delete_sibling_done
    :try_start_delete_sibling
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :delete_sibling_try_end
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :delete_sibling_try_end
    .catch Ljava/lang/Throwable; {:try_start_delete_sibling .. :delete_sibling_try_end} :delete_sibling_exception
    goto :delete_sibling_done
    :delete_sibling_exception
    move-exception v3
    :delete_sibling_done
    return-void
.end method

.method public static deleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    move-object/from16 v14, p0
    move-object/from16 v15, p1
    if-eqz v14, :sidecar_delete_return
    if-eqz v15, :sidecar_delete_return
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :sidecar_delete_return

    :try_start_sidecar_delete
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/cnm_recovery"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    move-result v1
    if-eqz v1, :sidecar_delete_try_end
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v1
    if-eqz v1, :sidecar_delete_try_end
    array-length v2, v1
    const/4 v3, 0x0
    const/4 v4, 0x0
    const/16 v5, 0x3e8

    :sidecar_delete_loop
    if-ge v3, v2, :sidecar_delete_try_end
    if-ge v4, v5, :sidecar_delete_try_end
    aget-object v6, v1, v3
    add-int/lit8 v3, v3, 0x1
    if-eqz v6, :sidecar_delete_loop
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :sidecar_delete_loop
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v7
    const-string v8, ".json"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-eqz v8, :sidecar_delete_loop
    add-int/lit8 v4, v4, 0x1
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-nez v9, :sidecar_delete_loop
    new-instance v9, Lorg/json/JSONObject;
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v10, "format"
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    const-string v11, "com.cinemana.recovery"
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v10
    if-eqz v10, :sidecar_delete_loop

    # Match only this episode: the downloaded-item id, stable token, or download task id must agree.
    const-string v10, "id"
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-nez v11, :sidecar_delete_match
    const-string v10, "token"
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-nez v11, :sidecar_delete_match
    const-string v10, "downloadTaskId"
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v11
    if-eqz v11, :sidecar_delete_loop

    :sidecar_delete_match
    const-string v10, "token"
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
    move-result v11
    if-eqz v11, :sidecar_token_ready
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    move-result v11
    const/4 v12, 0x5
    sub-int/2addr v11, v12
    if-lez v11, :sidecar_delete_loop
    const/4 v12, 0x0
    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v10

    :sidecar_token_ready
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
    move-result v11
    if-nez v11, :sidecar_delete_loop

    # Do not retire anything unless the sidecar itself was deleted successfully.
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    move-result v11
    if-eqz v11, :sidecar_delete_loop

    invoke-static {v6, ".mp4state"}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v6, ".tmp"}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v6, ".bak"}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v14, v10}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v14, v10}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    # Per-episode logs are token-specific; leave the shared repair/audit logs intact.
    new-instance v11, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v12
    const-string v13, "Cinemana/work/log"
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v12
    if-eqz v12, :sidecar_delete_loop
    const/4 v13, 0x0
    array-length v0, v12
    :episode_log_loop
    if-ge v13, v0, :sidecar_delete_loop
    aget-object v8, v12, v13
    add-int/lit8 v13, v13, 0x1
    if-eqz v8, :episode_log_loop
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :episode_log_loop
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-eqz v2, :episode_log_loop
    const-string v2, ".mkv.log"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :episode_log_loop
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    goto :episode_log_loop

    :try_end_sidecar_delete
    .catch Ljava/lang/Throwable; {:try_start_sidecar_delete .. :try_end_sidecar_delete} :sidecar_delete_exception
    goto :sidecar_delete_return
    :sidecar_delete_exception
    move-exception v0
    :sidecar_delete_return
    return-void
.end method
