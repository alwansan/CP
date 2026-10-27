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


# Used only after a confirmed user deletion. No recovery scan calls this method.
.method public static deleted(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    if-eqz p0, :deleted_done
    if-eqz p1, :deleted_done
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :deleted_done
    :try_start_deleted
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/cnm_recovery"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :deleted_done
    const/4 v1, 0x0
    array-length v2, v0
    :deleted_next
    if-ge v1, v2, :deleted_done
    aget-object v3, v0, v1
    add-int/lit8 v1, v1, 0x1
    invoke-static {v3, p1}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->matchingToken(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :deleted_next
    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->retireToken(Landroid/content/Context;Ljava/lang/String;)V
    goto :deleted_next
    :try_end_deleted
    .catch Ljava/lang/Throwable; {:try_start_deleted .. :try_end_deleted} :deleted_failed
    :deleted_failed
    move-exception v0
    :deleted_done
    return-void
.end method

.method private static matchingToken(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    :try_start_matching
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, ".json"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :matching_none
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v1, "format"
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    const-string v3, "com.cinemana.recovery"
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :matching_none
    const-string v1, "token"
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v5, ".json"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :matching_none
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :matching_found
    const-string v1, "id"
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :matching_found
    const-string v1, "downloadTaskId"
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :matching_none
    :matching_found
    return-object v3
    :try_end_matching
    .catch Ljava/lang/Throwable; {:try_start_matching .. :try_end_matching} :matching_failed
    :matching_failed
    move-exception v0
    :matching_none
    const/4 v0, 0x0
    return-object v0
.end method

.method public static deletedPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    if-eqz p0, :path_done
    if-eqz p1, :path_done
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :path_done
    :try_start_deleted_path
    new-instance v0, Ljava/io/File;
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :path_done
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    move-result-object v7
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :path_proofs
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->retireToken(Landroid/content/Context;Ljava/lang/String;)V
    :path_proofs
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/mkv-proofs"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v0
    if-eqz v0, :path_done
    const/4 v1, 0x0
    array-length v2, v0
    :proof_next
    if-ge v1, v2, :path_done
    aget-object v3, v0, v1
    add-int/lit8 v1, v1, 0x1
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v4
    const-string v5, ".path"
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :proof_next
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "\n"
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v5
    array-length v6, v5
    if-lez v6, :proof_next
    const/4 v6, 0x0
    aget-object v5, v5, v6
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :proof_next
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    move-result v5
    add-int/lit8 v5, v5, -0x5
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v4
    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->retireToken(Landroid/content/Context;Ljava/lang/String;)V
    goto :proof_next
    :try_end_deleted_path
    .catch Ljava/lang/Throwable; {:try_start_deleted_path .. :try_end_deleted_path} :path_failed
    :path_failed
    move-exception v0
    :path_done
    return-void
.end method

.method private static retireToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    const-string v0, "[A-Za-z0-9]+"
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :retire_done
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/cnm_recovery"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, ".json.tmp"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, ".json.bak"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, ".json.mp4state"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, ".json"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/mkv-proofs"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, ".path"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/EpisodeSidecarCleanup;->deleteSibling(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvRepairLedger;->clear(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->clearToken(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/MkvReconciler;->forgetToken(Ljava/lang/String;)V
    :retire_done
    return-void
.end method

.method public static capturePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    if-eqz p0, :capture_none
    if-eqz p1, :capture_none
    :try_start_capture
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/DownloadStore263;->combined(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    const-string v1, "cinemanaDownloadItem"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    const-string v1, "path"
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    :try_end_capture
    .catch Ljava/lang/Throwable; {:try_start_capture .. :try_end_capture} :capture_failed
    return-object v0
    :capture_failed
    move-exception v0
    :capture_none
    const/4 v0, 0x0
    return-object v0
.end method
