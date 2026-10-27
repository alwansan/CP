.class public final Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;
.super Ljava/lang/Object;
.source "RecoveryCapsule.java"

.field private static final FORMAT:Ljava/lang/String; = "com.cinemana.recovery"

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static manifestFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    new-instance v0, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v1
    const-string v2, "Cinemana/work/data/cnm_recovery"
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ".json"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    return-object v2
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    if-eqz p0, :read_text_empty
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :read_text_empty
    :try_start_read_text
    new-instance v0, Ljava/io/FileInputStream;
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    new-instance v1, Ljava/io/ByteArrayOutputStream;
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    const/16 v2, 0x1000
    new-array v3, v2, [B
    :read_text_loop
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I
    move-result v4
    if-lez v4, :read_text_done
    const/4 v5, 0x0
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :read_text_loop
    :read_text_done
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    const-string v2, "UTF-8"
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v3
    new-instance v4, Ljava/lang/String;
    invoke-direct {v4, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    return-object v4
    :try_end_read_text
    .catch Ljava/lang/Throwable; {:try_start_read_text .. :try_end_read_text} :read_text_failed
    :read_text_failed
    move-exception v0
    :read_text_empty
    const-string v0, ""
    return-object v0
.end method

.method private static writeText(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    move-object/from16 v5, p0
    move-object/from16 v6, p1
    const/4 v0, 0x0
    const/4 v3, 0x0
    const/4 v4, 0x0
    if-eqz v5, :write_false
    if-eqz v6, :write_false

    :try_start_write
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v1
    if-eqz v1, :write_fail_branch
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    # Prepare both side files before replacing the last known-good JSON.
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v2, ".tmp"
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v2, ".bak"
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_open_temp
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :write_open_temp
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const-string v7, "UTF-8"
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v7
    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_promote
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_backup_ready
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :write_backup_ready
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :write_fail_branch

    :write_promote
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :write_rollback

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_success
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :write_success
    const/4 v0, 0x1
    return v0

    :write_rollback
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_fail_branch
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v0
    if-nez v0, :write_fail_branch
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    goto :write_fail_branch

    :write_fail_branch
    goto :write_false
    :try_end_write
    .catch Ljava/lang/Throwable; {:try_start_write .. :try_end_write} :write_exception
    goto :write_false

    :write_exception
    move-exception v7
    # Restore the backup only if the target path is missing.
    if-eqz v4, :write_cleanup_temp
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_cleanup_temp
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_restore_backup
    goto :write_cleanup_temp
    :write_restore_backup
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :write_cleanup_temp
    if-eqz v3, :write_false
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_false
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :write_false
    const/4 v0, 0x0
    return v0
.end method

.method private static putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    if-eqz p0, :put_object_done
    :try_start_put_object
    invoke-static {p2, p3}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_put_object
    .catch Ljava/lang/Throwable; {:try_start_put_object .. :try_end_put_object} :put_object_failed
    goto :put_object_done
    :put_object_failed
    move-exception v0
    :put_object_done
    return-void
.end method

.method private static videoUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    const-string v0, ""
    if-eqz p0, :video_url_done
    :try_start_video_url
    const-string v1, "downloadTaskId"
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->number(Ljava/lang/Object;Ljava/lang/String;)J
    move-result-wide v1
    long-to-int v1, v1
    if-nez v1, :video_url_id_ready
    goto :video_url_done
    :video_url_id_ready
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Landroid/content/SharedPreferences;
    const-string v3, "request:"
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-eqz v7, :video_url_decode
    const-string v3, "done:"
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    :video_url_decode
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-eqz v7, :video_url_decode_now
    goto :video_url_done
    :video_url_decode_now
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;
    move-result-object v6
    const-string v7, "url"
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    :try_end_video_url
    .catch Ljava/lang/Throwable; {:try_start_video_url .. :try_end_video_url} :video_url_failed
    goto :video_url_done
    :video_url_failed
    move-exception v1
    const-string v0, ""
    :video_url_done
    return-object v0
.end method

.method private static sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    const-string v0, ""
    if-eqz p0, :sha256_done
    :try_start_sha256
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :sha256_done
    const-string v1, "SHA-256"
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v1
    new-instance v2, Ljava/io/FileInputStream;
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    const/16 v3, 0x2000
    new-array v3, v3, [B
    :sha256_read
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
    move-result v4
    if-lez v4, :sha256_read_done
    const/4 v5, 0x0
    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    goto :sha256_read
    :sha256_read_done
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const/4 v3, 0x0
    array-length v4, v1
    :sha256_hex_loop
    if-ge v3, v4, :sha256_hex_done
    aget-byte v5, v1, v3
    and-int/lit16 v5, v5, 0xff
    const/16 v6, 0x10
    if-ge v5, v6, :sha256_append_digit
    const-string v6, "0"
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :sha256_append_digit
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x1
    goto :sha256_hex_loop
    :sha256_hex_done
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    :try_end_sha256
    .catch Ljava/lang/Throwable; {:try_start_sha256 .. :try_end_sha256} :sha256_failed
    goto :sha256_done
    :sha256_failed
    move-exception v1
    const-string v0, ""
    :sha256_done
    return-object v0
.end method

.method private static localSubtitleFiles(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 10
    new-instance v0, Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    if-eqz p0, :local_sub_done
    :try_start_local_sub
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :local_sub_loop
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :local_sub_done
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    instance-of v3, v2, Ljava/io/File;
    if-eqz v3, :local_sub_loop
    check-cast v2, Ljava/io/File;
    new-instance v3, Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    const-string v4, "fileName"
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "path"
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "sizeBytes"
    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "lastModifiedMs"
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "sha256"
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->sha256(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    goto :local_sub_loop
    :try_end_local_sub
    .catch Ljava/lang/Throwable; {:try_start_local_sub .. :try_end_local_sub} :local_sub_failed
    :local_sub_failed
    move-exception v1
    :local_sub_done
    return-object v0
.end method

.method private static remoteSubtitleSources(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 11
    new-instance v0, Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    if-eqz p0, :remote_sources_done
    :try_start_remote_sources
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->model(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    if-eqz v1, :remote_sources_done
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->subtitles(Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    if-eqz v2, :remote_sources_done
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v3
    :remote_sources_loop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :remote_sources_done
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    if-eqz v4, :remote_sources_loop
    new-instance v5, Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    const-string v6, "id"
    const-string v7, "id"
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "url"
    const-string v7, "file"
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "extension"
    const-string v7, "extention"
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "name"
    const-string v7, "name"
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/Dependencies112;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    goto :remote_sources_loop
    :try_end_remote_sources
    .catch Ljava/lang/Throwable; {:try_start_remote_sources .. :try_end_remote_sources} :remote_sources_failed
    :remote_sources_failed
    move-exception v1
    :remote_sources_done
    return-object v0
.end method

.method public static seed(Ljava/lang/Object;I)V
    .locals 12
    move-object/from16 v0, p0
    move/from16 v1, p1
    if-eqz v0, :seed_return

    :try_start_seed
    const-string v2, "getPath"
    const/4 v3, 0x0
    new-array v3, v3, [Ljava/lang/Object;
    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    instance-of v3, v2, Ljava/lang/String;
    if-eqz v3, :seed_return
    check-cast v2, Ljava/lang/String;
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :seed_return
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :seed_find_manifest
    goto :seed_return

    :seed_find_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v4
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z
    move-result v8
    if-eqz v8, :seed_create
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-nez v9, :seed_create
    goto :seed_return

    :seed_create
    new-instance v5, Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    const-string v6, "format"
    const-string v7, "com.cinemana.recovery"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "schemaVersion"
    const-string v7, "1"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "token"
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "phase"
    const-string v7, "DOWNLOAD_QUEUED"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourcePath"
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceComplete"
    const-string v7, "false"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "downloadTaskId"
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "title"
    const-string v7, "title"
    invoke-static {v5, v6, v0, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v6, "id"
    const-string v7, "id"
    invoke-static {v5, v6, v0, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v6, "season"
    const-string v7, "season"
    invoke-static {v5, v6, v0, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v6, "episodeNumber"
    const-string v7, "episodeNumber"
    invoke-static {v5, v6, v0, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v6, "rootEpisode"
    const-string v7, "rootEpisode"
    invoke-static {v5, v6, v0, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->videoUrl(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v7
    const-string v6, "downloadUrl"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "videoUrlMayExpireOrContainAccessToken"
    const-string v7, "true"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "linksMayContainTemporaryCredentials"
    const-string v7, "true"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :try_end_seed
    .catch Ljava/lang/Throwable; {:try_start_seed .. :try_end_seed} :seed_exception
    goto :seed_return
    :seed_exception
    move-exception v11
    :seed_return
    return-void
.end method

.method public static prepare(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 12
    move-object/from16 v0, p1
    move-object/from16 v1, p3
    move-object/from16 v2, p2
    move-object/from16 v3, p5
    const/4 v10, 0x0
    if-eqz v0, :prepare_false

    :try_start_prepare
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :prepare_false
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :prepare_manifest
    goto :prepare_false

    :prepare_manifest
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v6
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :prepare_parse
    new-instance v7, Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    goto :prepare_root_ready

    :prepare_parse
    new-instance v8, Lorg/json/JSONObject;
    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    move-object v7, v8

    :prepare_root_ready
    const-string v8, "format"
    const-string v9, "com.cinemana.recovery"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "schemaVersion"
    const-string v9, "1"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "token"
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "phase"
    const-string v9, "MKV_EXPORT_PREPARING"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourcePath"
    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourceFileName"
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourceSizeBytesBeforeConversion"
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v10
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "intendedMkvPath"
    if-eqz v3, :prepare_no_target
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    goto :prepare_target_done
    :prepare_no_target
    const-string v9, ""
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :prepare_target_done

    const-string v8, "identity"
    new-instance v10, Lorg/json/JSONObject;
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    const-string v8, "id"
    const-string v9, "id"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "title"
    const-string v9, "title"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "season"
    const-string v9, "season"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "episodeNumber"
    const-string v9, "episodeNumber"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "rootEpisode"
    const-string v9, "rootEpisode"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "kind"
    const-string v9, "kind"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "qualityName"
    const-string v9, "qualityName"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "special"
    const-string v9, "special"
    invoke-static {v10, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v8, "identity"
    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    # Keep generic task IDs available to repair tools independently of nested identity.
    const-string v8, "downloadTaskId"
    const-string v9, "downloadTaskId"
    invoke-static {v7, v8, v1, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->videoUrl(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "downloadUrl"
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    move-result v10
    if-eqz v10, :prepare_url_ready
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    :prepare_url_ready
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "videoUrl"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "videoUrlMayExpireOrContainAccessToken"
    const-string v9, "true"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "subtitleSources"
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->remoteSubtitleSources(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v10
    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "localSubtitleFiles"
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->localSubtitleFiles(Ljava/util/List;)Lorg/json/JSONArray;
    move-result-object v10
    invoke-virtual {v7, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "mediaMetadataPolicy"
    const-string v9, "legacy_simple_metadata_only_no_json_in_media"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "conversionPolicy"
    const-string v9, "Keep the MP4 and subtitle files until the final MKV is in its destination, the database row matches its exact path and size, and the MP4 source has been removed."
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v10
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v6, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v10
    if-eqz v10, :prepare_false
    return-object v6

    :try_end_prepare
    .catch Ljava/lang/Throwable; {:try_start_prepare .. :try_end_prepare} :prepare_exception
    :prepare_exception
    move-exception v11
    :prepare_false
    const/4 v0, 0x0
    return-object v0
.end method

.method public static scheduleDownloadComplete(Ljava/lang/Object;I)V
    .locals 3
    if-eqz p0, :schedule_download_done
    :try_start_schedule_download
    new-instance v0, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;
    invoke-direct {v0, p0, p1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule$DownloadCompleteTask;-><init>(Ljava/lang/Object;I)V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_schedule_download
    .catch Ljava/lang/Throwable; {:try_start_schedule_download .. :try_end_schedule_download} :schedule_download_failed
    goto :schedule_download_done
    :schedule_download_failed
    move-exception v0
    :schedule_download_done
    return-void
.end method

.method public static completeDownload(Ljava/lang/Object;I)V
    .locals 12
    move-object/from16 v0, p0
    move/from16 v1, p1
    if-eqz v0, :complete_return

    :try_start_complete
    const-string v2, "getPath"
    const/4 v3, 0x0
    new-array v3, v3, [Ljava/lang/Object;
    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    instance-of v3, v2, Ljava/lang/String;
    if-eqz v3, :complete_return
    check-cast v2, Ljava/lang/String;
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :complete_return
    invoke-virtual {v4}, Ljava/io/File;->length()J
    move-result-wide v8
    const-wide/16 v10, 0x0
    cmp-long v3, v8, v10
    if-lez v3, :complete_return
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :complete_return
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v10
    if-eqz v10, :complete_manifest
    goto :complete_return

    :complete_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v5
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v10
    if-eqz v10, :complete_parse
    new-instance v7, Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    goto :complete_root_ready
    :complete_parse
    new-instance v7, Lorg/json/JSONObject;
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :complete_root_ready
    const-string v8, "format"
    const-string v9, "com.cinemana.recovery"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "schemaVersion"
    const-string v9, "1"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "token"
    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "phase"
    const-string v9, "DOWNLOAD_COMPLETE"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourcePath"
    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourceFileName"
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "actualBytesBeforeConversion"
    invoke-virtual {v4}, Ljava/io/File;->length()J
    move-result-wide v10
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourceComplete"
    const-string v9, "true"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "downloadTaskId"
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "downloadUrl"
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->videoUrl(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    move-result v10
    if-eqz v10, :complete_url_ready
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    :complete_url_ready
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "subtitleSources"
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->remoteSubtitleSources(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "localSubtitleFiles"
    invoke-static {v4, v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->localSubtitleFilesForToken(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "mediaMetadataPolicy"
    const-string v9, "legacy_simple_metadata_only_no_json_in_media"
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "downloadResumePolicy"
    const-string v9, "Confirm actual byte count and refresh temporary URLs before retrying; never remux a partial or unverified MP4."
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v10
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v5, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :try_end_complete
    .catch Ljava/lang/Throwable; {:try_start_complete .. :try_end_complete} :complete_exception
    goto :complete_return
    :complete_exception
    move-exception v11
    :complete_return
    return-void
.end method

.method private static localSubtitleFilesForToken(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    new-instance v0, Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    if-eqz p0, :local_token_sub_done
    if-eqz p1, :local_token_sub_done
    :try_start_local_token_sub
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v1
    if-eqz v1, :local_token_sub_done
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v2
    if-eqz v2, :local_token_sub_done
    const/4 v3, 0x0
    array-length v4, v2
    :local_token_sub_loop
    if-ge v3, v4, :local_token_sub_done
    aget-object v5, v2, v3
    if-eqz v5, :local_token_sub_next
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    move-result v6
    if-eqz v6, :local_token_sub_next
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v7
    if-eqz v7, :local_token_sub_next
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v7
    const-string v8, ".srt"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-nez v8, :local_token_sub_add
    const-string v8, ".ass"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-nez v8, :local_token_sub_add
    const-string v8, ".ssa"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-nez v8, :local_token_sub_add
    const-string v8, ".vtt"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-nez v8, :local_token_sub_add
    const-string v8, ".sub"
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-eqz v8, :local_token_sub_next

    :local_token_sub_add
    new-instance v8, Lorg/json/JSONObject;
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    const-string v9, "fileName"
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v9, "path"
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v9, "sizeBytes"
    invoke-virtual {v5}, Ljava/io/File;->length()J
    move-result-wide v6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v9, "lastModifiedMs"
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J
    move-result-wide v6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v9, "sha256"
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->sha256(Ljava/io/File;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :local_token_sub_next
    add-int/lit8 v3, v3, 0x1
    goto :local_token_sub_loop
    :try_end_local_token_sub
    .catch Ljava/lang/Throwable; {:try_start_local_token_sub .. :try_end_local_token_sub} :local_token_sub_failed
    goto :local_token_sub_done
    :local_token_sub_failed
    move-exception v1
    :local_token_sub_done
    return-object v0
.end method

.method public static finalizeMkv(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    const/4 v10, 0x0
    if-eqz v0, :finalize_false
    if-eqz v1, :finalize_false

    :try_start_finalize
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :finalize_false
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v8, 0x400
    cmp-long v2, v2, v8
    if-lez v2, :finalize_false

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :finalize_false
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :finalize_find_manifest
    goto :finalize_false

    :finalize_find_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :finalize_parse
    goto :finalize_false

    :finalize_parse
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v8, "format"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "com.cinemana.recovery"
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :finalize_false
    const-string v8, "token"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :finalize_false

    const-string v8, "phase"
    const-string v9, "MKV_FINALIZED"
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "sourcePath"
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "finalPath"
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "finalFileName"
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "finalFileSizeBytes"
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "finalFileLastModifiedMs"
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "finalDatabasePathVerified"
    const-string v9, "true"
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "mediaMetadataPolicy"
    const-string v9, "legacy_simple_metadata_only_no_json_in_media"
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v8, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v9
    invoke-static {v4, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v10

    :try_end_finalize
    .catch Ljava/lang/Throwable; {:try_start_finalize .. :try_end_finalize} :finalize_exception
    return v10

    :finalize_exception
    move-exception v11
    :finalize_false
    const/4 v10, 0x0
    return v10
.end method

.method public static cleanupCompleted(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    const/4 v10, 0x0
    if-eqz v0, :cleanup_return
    if-eqz v1, :cleanup_return

    :try_start_cleanup
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :cleanup_return
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :cleanup_return
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v8, 0x400
    cmp-long v2, v2, v8
    if-lez v2, :cleanup_return

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :cleanup_return
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :cleanup_manifest
    goto :cleanup_return

    :cleanup_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :cleanup_parse
    goto :cleanup_return

    :cleanup_parse
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v8, "format"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "com.cinemana.recovery"
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cleanup_return
    const-string v8, "token"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cleanup_return
    const-string v8, "phase"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "MKV_FINALIZED"
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cleanup_return
    const-string v8, "finalPath"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cleanup_return

    # Delete only this token's sidecar after the final MKV is validated and the MP4 is gone.
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    move-result v10
    if-eqz v10, :cleanup_return

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".mp4state"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".bak"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".tmp"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const/4 v10, 0x1
    :try_end_cleanup
    .catch Ljava/lang/Throwable; {:try_start_cleanup .. :try_end_cleanup} :cleanup_exception
    return v10

    :cleanup_exception
    move-exception v11
    :cleanup_return
    const/4 v10, 0x0
    return v10
.end method

