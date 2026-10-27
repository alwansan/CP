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
    .locals 12
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    const/4 v9, 0x0
    if-eqz v0, :write_false
    if-eqz v1, :write_false

    # Construct target-adjacent temp and backup before entering the protected write region.
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v2
    if-eqz v2, :write_false
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".tmp"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".bak"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_write
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_open_temp
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :write_open_temp
    new-instance v5, Ljava/io/FileOutputStream;
    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const-string v10, "UTF-8"
    invoke-virtual {v1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_promote
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_backup_ready
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :write_backup_ready
    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v9
    if-eqz v9, :write_failure

    :write_promote
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v9
    if-eqz v9, :write_rollback

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_success
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :write_success
    const/4 v9, 0x1
    goto :write_try_end

    :write_rollback
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_failure
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v9
    if-nez v9, :write_failure
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    goto :write_failure

    :write_failure
    const/4 v9, 0x0

    :write_try_end
    :try_end_write
    .catch Ljava/lang/Throwable; {:try_start_write .. :try_end_write} :write_exception
    return v9

    :write_exception
    move-exception v11
    # Restore last known-good JSON only when the destination is absent.
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_exception_cleanup
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v9
    if-nez v9, :write_exception_cleanup
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :write_exception_cleanup
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :write_false
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :write_false
    const/4 v9, 0x0
    return v9
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
    .locals 14
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
    if-eqz v3, :seed_try_done
    check-cast v2, Ljava/lang/String;
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :seed_try_done
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :seed_find_manifest
    goto :seed_try_done

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
    goto :seed_try_done

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

    invoke-static {v5, v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueFields(Lorg/json/JSONObject;I)V
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
    move-result-wide v12
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :seed_try_done
    :try_end_seed
    .catch Ljava/lang/Throwable; {:try_start_seed .. :try_end_seed} :seed_exception
    goto :seed_return
    :seed_exception
    move-exception v11
    :seed_return
    return-void
.end method


.method public static prepare(Landroid/content/Context;Ljava/io/File;)V
    .locals 14
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    if-eqz v0, :prepare_return
    if-eqz v1, :prepare_return

    :try_start_prepare
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :prepare_try_done
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :prepare_try_done
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :prepare_manifest
    goto :prepare_try_done

    :prepare_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :prepare_parse
    new-instance v5, Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    goto :prepare_root_ready

    :prepare_parse
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    move-object v5, v6

    :prepare_root_ready
    const-string v6, "format"
    const-string v7, "com.cinemana.recovery"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "schemaVersion"
    const-string v7, "1"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "token"
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "phase"
    const-string v7, "MKV_EXPORT_PREPARING"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourcePath"
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceFileName"
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceSizeBytesBeforeConversion"
    invoke-virtual {v1}, Ljava/io/File;->length()J
    move-result-wide v12
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceLastModifiedMsBeforeConversion"
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    move-result-wide v12
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "mediaMetadataPolicy"
    const-string v7, "legacy_simple_metadata_only_no_json_in_media"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v12
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :prepare_try_done
    :try_end_prepare
    .catch Ljava/lang/Throwable; {:try_start_prepare .. :try_end_prepare} :prepare_exception
    goto :prepare_return
    :prepare_exception
    move-exception v11
    :prepare_return
    return-void
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
    invoke-static {v7, v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueFields(Lorg/json/JSONObject;I)V
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
    .locals 14
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    const/4 v10, 0x0
    if-eqz v0, :finalize_false
    if-eqz v1, :finalize_false

    :try_start_finalize
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    move-result v2
    if-eqz v2, :finalize_try_done
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v2
    const-wide/16 v12, 0x400
    cmp-long v2, v2, v12
    if-lez v2, :finalize_try_done

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    if-eqz v3, :finalize_try_done
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :finalize_find_manifest
    goto :finalize_try_done

    :finalize_find_manifest
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v4
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :finalize_parse
    goto :finalize_try_done

    :finalize_parse
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v8, "format"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "com.cinemana.recovery"
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :finalize_try_done
    const-string v8, "token"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :finalize_try_done

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

    :finalize_try_done
    :try_end_finalize
    .catch Ljava/lang/Throwable; {:try_start_finalize .. :try_end_finalize} :finalize_exception
    goto :finalize_return
    :finalize_exception
    move-exception v11
    const/4 v10, 0x0
    :finalize_return
    return v10

    :finalize_false
    const/4 v10, 0x0
    return v10
.end method


.method private static queueRecord(I)Ljava/util/Properties;
    .locals 8
    :try_start_queue_record
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/content/SharedPreferences;
    const-string v1, ""
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "request:"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    move/from16 v7, p0
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :queue_record_done
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "done:"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    :queue_record_done
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-eqz v4, :queue_record_decode
    new-instance v4, Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    return-object v4
    :queue_record_decode
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;
    move-result-object v4
    return-object v4
    :try_end_queue_record
    .catch Ljava/lang/Throwable; {:try_start_queue_record .. :try_end_queue_record} :queue_record_failed
    :queue_record_failed
    move-exception v5
    new-instance v4, Ljava/util/Properties;
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V
    return-object v4
.end method

.method private static copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    move-object/from16 v2, p2
    move-object/from16 v3, p3
    if-eqz v0, :copy_queue_property_done
    if-eqz v1, :copy_queue_property_done
    :try_start_copy_queue_property
    const-string v4, ""
    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :copy_queue_property_done
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_copy_queue_property
    .catch Ljava/lang/Throwable; {:try_start_copy_queue_property .. :try_end_copy_queue_property} :copy_queue_property_failed
    goto :copy_queue_property_done
    :copy_queue_property_failed
    move-exception v3
    :copy_queue_property_done
    return-void
.end method

.method private static copyQueueFields(Lorg/json/JSONObject;I)V
    .locals 8
    move-object/from16 v6, p0
    move/from16 v7, p1
    if-eqz v6, :copy_queue_fields_done
    :try_start_copy_queue_fields
    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->queueRecord(I)Ljava/util/Properties;
    move-result-object v0
    const-string v1, "external"
    const-string v2, "external"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "queueTitle"
    const-string v2, "title"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "name"
    const-string v2, "name"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "queueIntent"
    const-string v2, "intent"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "queueCreated"
    const-string v2, "created"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "expectedBytes"
    const-string v2, "size"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "downloadUrl"
    const-string v2, "url"
    invoke-static {v6, v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->copyQueueProperty(Lorg/json/JSONObject;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_copy_queue_fields
    .catch Ljava/lang/Throwable; {:try_start_copy_queue_fields .. :try_end_copy_queue_fields} :copy_queue_fields_failed
    goto :copy_queue_fields_done
    :copy_queue_fields_failed
    move-exception v0
    :copy_queue_fields_done
    return-void
.end method

.method private static restoreRequestFromSidecar(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 15
    move-object/from16 v12, p0
    move-object/from16 v13, p1
    move-object/from16 v14, p2
    const/4 v0, 0x0
    if-eqz v12, :restore_request_return
    if-eqz v13, :restore_request_return
    if-eqz v14, :restore_request_return

    :try_start_restore_request
    const-string v5, "downloadTaskId"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
    if-lez v2, :restore_request_false

    const-string v5, "downloadUrl"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :restore_request_check_url
    const-string v5, "videoUrl"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    :restore_request_check_url
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :restore_request_false
    const-string v5, "https://"
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-nez v6, :restore_request_url_valid
    const-string v5, "http://"
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :restore_request_false

    :restore_request_url_valid
    const-string v5, "external"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :restore_request_false

    # Respect user pause/delete intent; only a request explicitly saved as RUN may be rebuilt.
    const-string v5, "queueIntent"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "RUN"
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :restore_request_false

    new-instance v6, Ljava/io/File;
    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z
    move-result v7
    if-eqz v7, :restore_request_false

    # Do not recreate a network request if the intended MKV already exists and is substantial.
    const-string v5, "finalPath"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :restore_request_check_target
    const-string v5, "intendedMkvPath"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    :restore_request_check_target
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-nez v8, :restore_request_no_target
    new-instance v8, Ljava/io/File;
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z
    move-result v9
    if-eqz v9, :restore_request_no_target
    invoke-virtual {v8}, Ljava/io/File;->length()J
    move-result-wide v8
    const-wide/16 v10, 0x400
    cmp-long v8, v8, v10
    if-lez v8, :restore_request_no_target
    goto :restore_request_false

    :restore_request_no_target
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v7
    check-cast v7, Landroid/content/SharedPreferences;

    # If either native request or completion receipt remains, let the normal queue own it.
    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "request:"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v8
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    const-string v9, ""
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :restore_request_false

    new-instance v8, Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "done:"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v8
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    const-string v9, ""
    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :restore_request_false

    new-instance v10, Ljava/util/Properties;
    invoke-direct {v10}, Ljava/util/Properties;-><init>()V
    const-string v5, "task"
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v10, v5, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    const-string v5, "url"
    invoke-virtual {v10, v5, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    const-string v5, "path"
    invoke-virtual {v10, v5, v14}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    const-string v5, "external"
    invoke-virtual {v10, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "queueTitle"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :restore_request_title_ready
    const-string v5, "title"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    :restore_request_title_ready
    const-string v5, "title"
    invoke-virtual {v10, v5, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "name"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :restore_request_name_ready
    move-object v8, v11
    :restore_request_name_ready
    const-string v5, "name"
    invoke-virtual {v10, v5, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "intent"
    const-string v6, "RUN"
    invoke-virtual {v10, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "queueCreated"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :restore_request_created_ready
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v8
    :restore_request_created_ready
    const-string v5, "created"
    invoke-virtual {v10, v5, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v5, "expectedBytes"
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :restore_request_size_ready
    const-string v8, "0"
    :restore_request_size_ready
    const-string v5, "size"
    invoke-virtual {v10, v5, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->valid(Ljava/util/Properties;)Z
    move-result v8
    if-eqz v8, :restore_request_false
    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->allowed(Ljava/util/Properties;)Z
    move-result v8
    if-eqz v8, :restore_request_false

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V
    # The caller performs one queue rescan after batch sidecar recovery completes.
    const/4 v0, 0x1
    goto :try_end_restore_request

    :restore_request_false
    const/4 v0, 0x0
    :try_end_restore_request
    .catch Ljava/lang/Throwable; {:try_start_restore_request .. :try_end_restore_request} :restore_request_exception
    goto :restore_request_return
    :restore_request_exception
    move-exception v1
    const/4 v0, 0x0
    :restore_request_return
    return v0
.end method

.method private static recoverSidecarOne(Landroid/content/Context;Ljava/io/File;)I
    .locals 16
    move-object/from16 v12, p0
    move-object/from16 v13, p1
    const/4 v0, 0x0
    if-eqz v12, :recover_one_return
    if-eqz v13, :recover_one_return

    :try_start_recover_one
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :recover_one_return
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    const-string v2, ".json"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v2
    if-eqz v2, :recover_one_return

    invoke-static {v13}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :recover_one_return
    new-instance v2, Lorg/json/JSONObject;
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "format"
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, "com.cinemana.recovery"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :recover_one_return

    const-string v3, "token"
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :recover_one_return

    # Reject files whose name does not match the embedded token; this avoids cross-episode cleanup.
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    const-string v5, ".json"
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :recover_one_return

    const-string v4, "sourcePath"
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :recover_one_return
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :recover_one_return
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :recover_one_return
    const-string v5, "phase"
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "MKV_FINALIZED"
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :recover_one_unfinished

    # Only the finalized state can trigger cleanup; cleanupCompleted validates output and source again.
    const-string v6, "finalPath"
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-nez v7, :recover_one_return
    new-instance v7, Ljava/io/File;
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    new-instance v8, Ljava/io/File;
    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # Revalidate the output and its current database row even when the source MP4 is already absent.
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z
    move-result v9
    if-eqz v9, :recover_final_cleanup_defer
    invoke-virtual {v7}, Ljava/io/File;->length()J
    move-result-wide v14
    const-wide/16 v10, 0x400
    cmp-long v9, v14, v10
    if-lez v9, :recover_final_cleanup_defer

    const-string v9, "finalFileSizeBytes"
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-nez v9, :recover_final_cleanup_defer
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v10
    cmp-long v9, v14, v10
    if-eqz v9, :recover_final_cleanup_db
    goto :recover_final_cleanup_defer

    :recover_final_cleanup_db
    const-string v9, "finalDatabasePathVerified"
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    const-string v9, "true"
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :recover_final_cleanup_defer

    invoke-static {v12, v7}, Lcom/shabakaty/cinemana/features/MkvReconciler;->findDatabaseItemForPath(Landroid/content/Context;Ljava/io/File;)Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;
    move-result-object v9
    if-eqz v9, :recover_final_cleanup_defer
    invoke-static {v12, v9, v7}, Lcom/shabakaty/cinemana/ca1/Commit105;->isPromoted(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)Z
    move-result v9
    if-eqz v9, :recover_final_cleanup_defer

    # The DB still points to this exact MKV at its recorded byte count; now delete a leftover MP4 if present.
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    move-result v9
    if-eqz v9, :recover_final_cleanup_json
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    move-result v9
    if-nez v9, :recover_final_cleanup_verify_absent
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    move-result v9
    if-nez v9, :recover_final_cleanup_defer

    :recover_final_cleanup_verify_absent
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    move-result v9
    if-nez v9, :recover_final_cleanup_defer

    :recover_final_cleanup_json
    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->cleanupCompleted(Ljava/io/File;Ljava/io/File;)Z
    move-result v0
    goto :try_end_recover_one

    :recover_final_cleanup_defer
    const/4 v0, 0x0
    goto :try_end_recover_one

    :recover_one_unfinished
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :recover_one_source
    goto :recover_one_return

    :recover_one_source
    new-instance v6, Ljava/io/File;
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :recover_one_token_only
    invoke-virtual {v6}, Ljava/io/File;->length()J
    move-result-wide v7
    const-wide/16 v9, 0x400
    cmp-long v7, v7, v9
    if-lez v7, :recover_one_partial_source

    # The normal disk scan already handles completed downloads; only the failed MKV stage needs a sidecar-triggered retry.
    const-string v7, "MKV_EXPORT_PREPARING"
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :recover_one_not_conversion
    invoke-static {v12, v6}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileDiskVideo(Landroid/content/Context;Ljava/io/File;)Z
    move-result v0
    # This path schedules conversion directly; it does not restore a native queue request.
    # Return zero here so execute() does not perform a redundant second Queue110 scan.
    const/4 v0, 0x0
    goto :try_end_recover_one

    :recover_one_not_conversion
    const/4 v0, 0x0
    goto :try_end_recover_one

    # For a zero/short partial file, restore RUN only if both native receipts are absent.
    :recover_one_partial_source
    invoke-static {v12, v2, v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->restoreRequestFromSidecar(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :recover_one_token_only
    const/4 v0, 0x1
    goto :try_end_recover_one

    :recover_one_token_only
    # If the source is missing and the original native receipt was lost, rebuild only a validated RUN request.
    invoke-static {v12, v2, v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->restoreRequestFromSidecar(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :recover_one_reconcile_token
    const/4 v0, 0x1
    goto :try_end_recover_one

    :recover_one_reconcile_token
    # Otherwise, ask the existing token reconciler to search disk and persistent DB identity.
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/MkvReconciler;->reconcileToken(Ljava/lang/String;)V
    const/4 v0, 0x1

    :try_end_recover_one
    .catch Ljava/lang/Throwable; {:try_start_recover_one .. :try_end_recover_one} :recover_one_exception
    goto :recover_one_return
    :recover_one_exception
    move-exception v1
    const/4 v0, 0x0
    :recover_one_return
    return v0
.end method

.method private static identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    if-eqz p0, :identity_field_match
    if-eqz p1, :identity_field_match
    if-eqz p2, :identity_field_match

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :identity_field_match
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :identity_field_actual

    :identity_field_match
    const/4 v0, 0x1
    return v0

    :identity_field_actual
    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :identity_field_match
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :identity_field_match
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    return v0
.end method

.method public static matchesItemIdentity(Ljava/io/File;Ljava/lang/Object;)Z
    .locals 14
    move-object/from16 v12, p0
    move-object/from16 v13, p1
    const/4 v0, 0x0
    if-eqz v12, :matches_item_identity_done
    if-eqz v13, :matches_item_identity_done

    :try_start_matches_item_identity
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :matches_item_identity_done
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :matches_item_identity_done

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v3
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :matches_item_identity_done
    new-instance v4, Lorg/json/JSONObject;
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "format"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "com.cinemana.recovery"
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done

    const-string v5, "token"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done

    const-string v5, "sourcePath"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done

    const-string v5, "identity"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    move-result-object v4
    if-eqz v4, :matches_item_identity_done

    # Item ID is the primary match. Any additional fields present on both sides must also agree.
    const-string v5, "id"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    if-eqz v6, :matches_item_identity_done
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    move-result v7
    if-nez v7, :matches_item_identity_done
    const-string v5, "id"
    invoke-static {v13, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    if-eqz v7, :matches_item_identity_done
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v7
    if-eqz v7, :matches_item_identity_done

    const-string v5, "title"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done
    const-string v5, "rootEpisode"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done
    const-string v5, "season"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done
    const-string v5, "episodeNumber"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done
    const-string v5, "kind"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done
    const-string v5, "qualityName"
    invoke-static {v4, v13, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->identityFieldMatches(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :matches_item_identity_done

    const/4 v0, 0x1
    :try_end_matches_item_identity
    .catch Ljava/lang/Throwable; {:try_start_matches_item_identity .. :try_end_matches_item_identity} :matches_item_identity_exception
    goto :matches_item_identity_done
    :matches_item_identity_exception
    move-exception v1
    const/4 v0, 0x0
    :matches_item_identity_done
    return v0
.end method

.method public static recoverPending(Landroid/content/Context;)I
    .locals 12
    move-object/from16 v11, p0
    const/4 v0, 0x0
    if-eqz v11, :recover_pending_return

    :try_start_recover_pending
    new-instance v1, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v2
    const-string v3, "Cinemana/work/data/cnm_recovery"
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    move-result v2
    if-eqz v2, :recover_pending_return
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v2
    if-eqz v2, :recover_pending_return
    array-length v3, v2
    const/4 v4, 0x0
    const/4 v5, 0x0
    const/16 v7, 0x1f4

    :recover_pending_loop
    if-ge v4, v3, :recover_pending_end
    if-ge v5, v7, :recover_pending_end
    aget-object v6, v2, v4
    if-eqz v6, :recover_pending_next
    # Count only JSON manifests against the cap. Ignore .tmp/.bak/.mp4state siblings.
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v8
    const-string v9, ".json"
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v8
    if-eqz v8, :recover_pending_next
    invoke-static {v11, v6}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->recoverSidecarOne(Landroid/content/Context;Ljava/io/File;)I
    move-result v8
    add-int/2addr v0, v8
    add-int/lit8 v5, v5, 0x1
    :recover_pending_next
    add-int/lit8 v4, v4, 0x1
    goto :recover_pending_loop

    :recover_pending_end
    :try_end_recover_pending
    .catch Ljava/lang/Throwable; {:try_start_recover_pending .. :try_end_recover_pending} :recover_pending_exception
    goto :recover_pending_return
    :recover_pending_exception
    move-exception v9
    :recover_pending_return
    return v0
.end method

.method public static cleanupCompleted(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
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

    const-string v8, "finalDatabasePathVerified"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    const-string v8, "true"
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :cleanup_return

    const-string v8, "finalFileSizeBytes"
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-nez v8, :cleanup_return
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v12
    invoke-virtual {v0}, Ljava/io/File;->length()J
    move-result-wide v14
    cmp-long v8, v12, v14
    if-eqz v8, :cleanup_size_verified
    goto :cleanup_return

    :cleanup_size_verified
    # Delete only this token's sidecar after final path, size and database promotion are verified and MP4 is gone.
    # Keep the authoritative JSON until its temporary markers/backups have been retired.
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

    # Delete the JSON last so an interrupted cleanup can safely retry from the manifest.
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    move-result v10
    if-eqz v10, :cleanup_return

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

