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
    .locals 7
    const/4 v3, 0x0
    if-eqz p0, :write_text_failed
    if-eqz p1, :write_text_failed
    :try_start_write_text
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    if-eqz v0, :write_text_parent_ready
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :write_text_parent_ready

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ".tmp"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v2
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_open
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :write_text_open
    new-instance v0, Ljava/io/FileOutputStream;
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const-string v2, "UTF-8"
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v2
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    # Stage the previous valid manifest rather than deleting it before promotion.
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v4, ".bak"
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    new-instance v3, Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v4
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_promote
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_backup_ready
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :write_text_backup_ready
    invoke-virtual {p0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :write_text_restore

    :write_text_promote
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
    if-nez v0, :write_text_promoted
    goto :write_text_restore

    :write_text_promoted
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_success
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :write_text_success
    const/4 v0, 0x1
    return v0

    :write_text_restore
    # Restore the previous capsule if promotion fails at any stage.
    if-eqz v3, :write_text_cleanup
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_cleanup
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_restore_backup
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :write_text_restore_backup
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :write_text_cleanup
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :write_text_failed
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    goto :write_text_failed

    :try_end_write_text
    .catch Ljava/lang/Throwable; {:try_start_write_text .. :try_end_write_text} :write_text_exception
    :write_text_exception
    move-exception v0
    # Exception path: preserve the old manifest whenever the replacement has not been installed.
    if-eqz v3, :write_text_failed
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :write_text_failed
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    move-result v2
    if-eqz v2, :write_text_exception_restore
    goto :write_text_failed
    :write_text_exception_restore
    invoke-virtual {v3, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :write_text_failed
    const/4 v0, 0x0
    return v0
d

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
    .locals 9
    if-eqz p0, :seed_done
    :try_start_seed
    const-string v0, "getPath"
    const/4 v1, 0x0
    new-array v1, v1, [Ljava/lang/Object;
    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :seed_done
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :seed_done
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :seed_create
    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v3
    const-wide/16 v5, 0x40
    cmp-long v3, v3, v5
    if-lez v3, :seed_create
    goto :seed_done
    :seed_create
    new-instance v3, Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    const-string v4, "format"
    const-string v5, "com.cinemana.recovery"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "schemaVersion"
    const-string v5, "1"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "token"
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "phase"
    const-string v5, "DOWNLOAD_QUEUED"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "sourcePath"
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "downloadTaskId"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "downloadUrl"
    const-string v5, "getUrl"
    const/4 v6, 0x0
    new-array v6, v6, [Ljava/lang/Object;
    invoke-static {p0, v5, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    if-eqz v5, :seed_empty_url
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    goto :seed_put_url
    :seed_empty_url
    const-string v5, ""
    :seed_put_url
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "expectedBytes"
    const-string v5, "getLargeFileTotalBytes"
    const/4 v6, 0x0
    new-array v6, v6, [Ljava/lang/Object;
    invoke-static {p0, v5, v6}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    if-eqz v5, :seed_zero_bytes
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    goto :seed_put_bytes
    :seed_zero_bytes
    const-string v5, "0"
    :seed_put_bytes
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "linksMayExpireOrContainAccessTokens"
    const-string v5, "true"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_seed
    .catch Ljava/lang/Throwable; {:try_start_seed .. :try_end_seed} :seed_failed
    :seed_failed
    move-exception v0
    :seed_done
    return-void
.end method

.method private static isCurrent(Ljava/io/File;Ljava/io/File;)Z
    .locals 10
    const/4 v0, 0x0
    if-eqz p0, :is_current_done
    if-eqz p1, :is_current_done
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :is_current_done
    :try_start_is_current
    # The marker is valid only for both the media file and the exact sidecar payload.
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mp4state"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :is_current_done
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    move-result v3
    invoke-virtual {v2}, Ljava/lang/String;->length()I
    move-result v4
    sub-int/2addr v3, v4
    const/4 v4, 0x0
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v4
    new-instance v5, Ljava/io/File;
    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :is_current_done

    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p0}, Ljava/io/File;->length()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "|"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "|"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v5}, Ljava/io/File;->length()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "|"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J
    move-result-wide v2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    :try_end_is_current
    .catch Ljava/lang/Throwable; {:try_start_is_current .. :try_end_is_current} :is_current_failed
    goto :is_current_done
    :is_current_failed
    move-exception v1
    :is_current_done
    return v0
d

.method public static prepare(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 20
    if-eqz p1, :prepare_done
    if-eqz p0, :prepare_done
    :try_start_prepare
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :prepare_done
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :prepare_done
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :prepare_done
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v2
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, ".mp4state"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    new-instance v4, Ljava/io/File;
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    move-object/from16 v17, v4
    move-object/from16 v12, p1
    move-object/from16 v13, v17
    invoke-static {v12, v13}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->isCurrent(Ljava/io/File;Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :prepare_build
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v5
    if-eqz v5, :prepare_build
    # The current file marker does not prove the manifest body is current; refresh it for this export.
    :prepare_build
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-eqz v6, :prepare_parse_existing
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    goto :prepare_root_ready
    :prepare_parse_existing
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :prepare_root_ready
    const-string v7, "format"
    const-string v8, "com.cinemana.recovery"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "schemaVersion"
    const-string v8, "1"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "token"
    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "phase"
    const-string v8, "MKV_EXPORT_PREPARING"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "sourcePath"
    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "sourceFileName"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "sourceSizeBytesBeforeEmbedding"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "sourceLastModifiedMsBeforeEmbedding"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "videoUrl"
    invoke-static/range {p3 .. p3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->videoUrl(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :prepare_video_url_ready
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z
    move-result v9
    if-eqz v9, :prepare_video_url_ready
    const-string v7, "downloadUrl"
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    const-string v7, "videoUrl"
    :prepare_video_url_ready
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "videoUrlMayExpireOrContainAccessToken"
    const-string v8, "true"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "linksMayContainTemporaryCredentials"
    const-string v8, "true"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "identity"
    new-instance v8, Lorg/json/JSONObject;
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    const-string v9, "id"
    const-string v10, "id"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "title"
    const-string v10, "title"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "season"
    const-string v10, "season"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "episodeNumber"
    const-string v10, "episodeNumber"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "rootEpisode"
    const-string v10, "rootEpisode"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "kind"
    const-string v10, "kind"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "qualityName"
    const-string v10, "qualityName"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "special"
    const-string v10, "special"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    const-string v9, "downloadTaskId"
    const-string v10, "downloadTaskId"
    move-object v12, v8
    move-object v13, v9
    move-object/from16 v14, p3
    move-object v15, v10
    invoke-static/range {v12 .. v15}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->putObjectString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "subtitleSources"
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->remoteSubtitleSources(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "localSubtitleFiles"
    invoke-static/range {p2 .. p2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->localSubtitleFiles(Ljava/util/List;)Lorg/json/JSONArray;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "intendedMkvPath"
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "finalPathPolicy"
    const-string v8, "The exporter may organize or move the MKV after conversion; resolve final path by token and identity, not this initial path alone."
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "downloadResumePolicy"
    const-string v8, "Use sourcePath, downloadTaskId, expectedBytes and videoUrl; refresh the URL if expired and verify actual byte length before resuming."
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "conversionPolicy"
    const-string v8, "Do not delete the MP4 or subtitle sources until the final MKV is verified and its database path is committed."
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v8
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v7, "mp4MetadataEmbedded"
    const-string v8, "true"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v2, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v8
    if-eqz v8, :prepare_done
    # Force a metadata refresh after the sidecar body advances to MKV_EXPORT_PREPARING.
    invoke-virtual {v17}, Ljava/io/File;->delete()Z
    move-object/from16 v12, p4
    move-object/from16 v13, p1
    move-object v14, v2
    move-object v15, v17
    move-object v16, v1
    invoke-static/range {v12 .. v16}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->embedMp4(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    move-result v8
    if-nez v8, :prepare_return_manifest

    # The sidecar explicitly reports failure if the MP4 container could not be updated.
    const-string v7, "mp4MetadataEmbedded"
    const-string v8, "false"
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v2, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :prepare_return_manifest
    return-object v2
    :try_end_prepare
    .catch Ljava/lang/Throwable; {:try_start_prepare .. :try_end_prepare} :prepare_failed
    :prepare_failed
    move-exception v0
    :prepare_done
    const/4 v0, 0x0
    return-object v0
.end method

.method public static manifestBase64(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v0
    :try_start_manifest_b64
    const-string v1, "UTF-8"
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    move-result-object v1
    const/16 v2, 0xb
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    move-result-object v0
    :try_end_manifest_b64
    .catch Ljava/lang/Throwable; {:try_start_manifest_b64 .. :try_end_manifest_b64} :manifest_b64_failed
    return-object v0
    :manifest_b64_failed
    move-exception v1
    const-string v0, ""
    return-object v0
.end method

.method private static embedMp4(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    const/4 v0, 0x0
    move-object v2, v0
    move-object v3, v0
    if-eqz p0, :embed_mp4_no
    if-eqz p1, :embed_mp4_no
    if-eqz p2, :embed_mp4_no
    invoke-virtual {p1}, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0x400
    cmp-long v0, v0, v2
    if-lez v0, :embed_mp4_no
    invoke-static {p1, p3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->isCurrent(Ljava/io/File;Ljava/io/File;)Z
    move-result v0
    if-eqz v0, :embed_mp4_run
    const/4 v0, 0x1
    return v0
    :embed_mp4_run
    :try_start_embed_mp4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, ".cnm-recovery.tmp.mp4"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    new-instance v2, Ljava/io/File;
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :embed_mp4_prepare_backup
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :embed_mp4_prepare_backup
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v3, ".cnm-recovery.bak"
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    new-instance v3, Ljava/io/File;
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :embed_mp4_make_args
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :embed_mp4_make_args
    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestBase64(Ljava/io/File;)Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-hide_banner"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-loglevel"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "error"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-nostdin"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-y"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-i"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-map"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "0"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-map_metadata"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "0"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-c"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "copy"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-movflags"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "+faststart+use_metadata_tags"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-metadata"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "cnm_recovery_format=com.cinemana.recovery"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-metadata"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v5, "cnm_recovery_token="
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-metadata"
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v5, "cnm_recovery_manifest_b64="
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    new-instance v4, Ljava/lang/ProcessBuilder;
    invoke-direct {v4, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V
    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v5
    const/16 v6, 0x1000
    new-array v6, v6, [B
    :embed_mp4_drain
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I
    move-result v7
    if-lez v7, :embed_mp4_wait
    goto :embed_mp4_drain
    :embed_mp4_wait
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    move-result v5
    if-eqz v5, :embed_mp4_output_ok
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    goto :embed_mp4_no
    :embed_mp4_output_ok
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v5
    if-eqz v5, :embed_mp4_no
    invoke-virtual {v2}, Ljava/io/File;->length()J
    move-result-wide v5
    const-wide/16 v7, 0x400
    cmp-long v5, v5, v7
    if-lez v5, :embed_mp4_no
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :embed_mp4_no
    invoke-virtual {v2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :embed_mp4_restore
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    invoke-virtual {p1}, Ljava/io/File;->length()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, "|"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, "|"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {p2}, Ljava/io/File;->length()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, "|"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-static {p3, v6}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    const/4 v0, 0x1
    return v0
    :embed_mp4_restore
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_embed_mp4
    .catch Ljava/lang/Throwable; {:try_start_embed_mp4 .. :try_end_embed_mp4} :embed_mp4_failed
    :embed_mp4_failed
    move-exception v0
    # If the old MP4 was moved aside but the replacement was not promoted, restore the original.
    if-eqz v3, :embed_mp4_cleanup_temp
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :embed_mp4_cleanup_temp
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :embed_mp4_cleanup_temp
    invoke-virtual {v3, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :embed_mp4_cleanup_temp
    if-eqz v2, :embed_mp4_no
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :embed_mp4_no
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :embed_mp4_no
    const/4 v0, 0x0
    return v0d


.method public static updateDoneSize(IJ)V
    .locals 8
    :try_start_update_done_size
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "done:"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1

    const-string v2, ""
    filled-new-array {v1, v2}, [Ljava/lang/Object;
    move-result-object v2
    const-string v3, "getString"
    invoke-static {v0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-nez v3, :update_done_size_done

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;
    move-result-object v2
    const-string v3, "size"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->encode(Ljava/util/Properties;)Ljava/lang/String;
    move-result-object v4
    invoke-static {v0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :try_end_update_done_size
    .catch Ljava/lang/Throwable; {:try_start_update_done_size .. :try_end_update_done_size} :update_done_size_failed
    goto :update_done_size_done
    :update_done_size_failed
    move-exception v0
    :update_done_size_done
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
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray

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

.method public static completeDownload(Ljava/lang/Object;I)V
    .locals 12
    move-object/from16 v10, p0
    move/from16 v11, p1
    if-eqz v10, :complete_download_return

    :try_start_complete_download
    const-string v6, "getPath"
    const/4 v7, 0x0
    new-array v7, v7, [Ljava/lang/Object;
    invoke-static {v10, v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    instance-of v6, v0, Ljava/lang/String;
    if-eqz v6, :complete_download_return
    check-cast v0, Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :complete_download_return

    new-instance v1, Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z
    move-result v6
    if-eqz v6, :complete_download_return
    invoke-virtual {v1}, Ljava/io/File;->length()J
    move-result-wide v6
    const-wide/16 v8, 0x400
    cmp-long v6, v6, v8
    if-lez v6, :complete_download_return

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :complete_download_return
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :complete_download_return

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->seed(Ljava/lang/Object;I)V
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v3
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :complete_download_return

    new-instance v5, Lorg/json/JSONObject;
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "format"
    const-string v7, "com.cinemana.recovery"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "schemaVersion"
    const-string v7, "1"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "token"
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "phase"
    const-string v7, "DOWNLOAD_COMPLETE"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourcePath"
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceFileName"
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "actualBytesBeforeEmbedding"
    invoke-virtual {v1}, Ljava/io/File;->length()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceLastModifiedMsBeforeEmbedding"
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "sourceComplete"
    const-string v7, "true"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "downloadTaskId"
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "downloadCompletedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    # Snapshot the video URL when available; retain the prior value when the task no longer exposes it.
    const-string v6, "videoUrl"
    const-string v7, "getUrl"
    const/4 v8, 0x0
    new-array v8, v8, [Ljava/lang/Object;
    invoke-static {v10, v7, v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v7
    if-eqz v7, :complete_download_keep_url
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    move-result v8
    if-eqz v8, :complete_download_put_url
    :complete_download_keep_url
    const-string v8, "downloadUrl"
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    :complete_download_put_url
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "downloadUrl"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "videoUrlMayExpireOrContainAccessToken"
    const-string v7, "true"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "linksMayContainTemporaryCredentials"
    const-string v7, "true"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "subtitleSources"
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->remoteSubtitleSources(Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "localSubtitleFiles"
    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->localSubtitleFilesForToken(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONArray;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "downloadResumePolicy"
    const-string v7, "Resume only after confirming the server supports byte ranges and refreshing temporary or signed URLs. Keep the partial source until actual bytes match expected bytes; verify identity before conversion."
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "conversionPolicy"
    const-string v7, "Keep the original MP4 and subtitle inputs until the output MKV has a verified capsule, stable token and final-path database promotion."
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "updatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    # Start with false; the sidecar only reports true after the container remux succeeds.
    const-string v6, "mp4MetadataEmbedded"
    const-string v7, "false"
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :complete_download_return

    # Keep the sidecar useful even when ffmpeg is unavailable; no media file is changed in that case.
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;
    move-result-object v9
    if-eqz v9, :complete_download_return
    check-cast v9, Landroid/content/Context;
    new-instance v7, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v8
    const-string v6, "Cinemana/work/log"
    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    new-instance v8, Ljava/io/File;
    const-string v6, "cnm_recovery_capsule.log"
    invoke-direct {v8, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v6, "ensureFfmpeg"
    filled-new-array {v9, v8}, [Ljava/lang/Object;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v6
    instance-of v7, v6, Ljava/io/File;
    if-eqz v7, :complete_download_return
    check-cast v6, Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :complete_download_return

    # Mark true before the atomic embed so the MP4 and sidecar contain identical JSON on success.
    const-string v7, "mp4MetadataEmbedded"
    const-string v8, "true"
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :complete_download_return

    # Create a marker name and retain it separately from the manifest/ffmpeg inputs.
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    const-string v8, ".mp4state"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    new-instance v8, Ljava/io/File;
    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    move-object v4, v8

    # Save the task ID before the five adjacent registers are used for FFmpeg parameters.
    move v0, v11
    move-object v7, v6
    move-object v8, v1
    move-object v9, v3
    move-object v10, v4
    move-object v11, v2
    invoke-static/range {v7 .. v11}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->embedMp4(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    move-result v6
    if-eqz v6, :complete_download_embedding_failed

    # The MP4 remux changes the actual file length; update the durable completion receipt accordingly.
    invoke-virtual {v1}, Ljava/io/File;->length()J
    move-result-wide v7
    move-wide v9, v7
    move v8, v0
    invoke-static/range {v8 .. v10}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->updateDoneSize(IJ)V
    goto :complete_download_return

    :complete_download_embedding_failed
    const-string v7, "mp4MetadataEmbedded"
    const-string v8, "false"
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z

    :try_end_complete_download
    .catch Ljava/lang/Throwable; {:try_start_complete_download .. :complete_download_return} :complete_download_failed
    :complete_download_return
    return-void
    :complete_download_failed
    move-exception v0
    return-void
.end method
d

.method public static ensureEmbeddedMp4(Landroid/content/Context;Ljava/io/File;)Z
    .locals 12
    move-object/from16 v10, p0
    move-object/from16 v11, p1
    const/4 v0, 0x0
    if-eqz v10, :ensure_mp4_done
    if-eqz v11, :ensure_mp4_done
    :try_start_ensure_mp4
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :ensure_mp4_done
    invoke-virtual {v11}, Ljava/io/File;->length()J
    move-result-wide v1
    const-wide/16 v3, 0x400
    cmp-long v1, v1, v3
    if-lez v1, :ensure_mp4_done

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
    const-string v2, ".mp4"
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :ensure_mp4_done

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :ensure_mp4_done
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-nez v2, :ensure_mp4_done
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :ensure_mp4_done
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :ensure_mp4_done
    new-instance v4, Lorg/json/JSONObject;
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    # Retry only after the download has been verified or an MKV export has been staged.
    const-string v5, "phase"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "DOWNLOAD_COMPLETE"
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-nez v6, :ensure_mp4_phase_ready
    const-string v6, "MKV_EXPORT_PREPARING"
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :ensure_mp4_done

    :ensure_mp4_phase_ready
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ".mp4state"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    new-instance v6, Ljava/io/File;
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "mp4MetadataEmbedded"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v7, "true"
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :ensure_mp4_rebuild
    invoke-static {v11, v6}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->isCurrent(Ljava/io/File;Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :ensure_mp4_rebuild
    const/4 v0, 0x1
    return v0

    :ensure_mp4_rebuild
    # Preserve the marker before v6 is reused for the FFmpeg executable.
    move-object v9, v6

    # Persist the claim before building; if any later stage fails the claim is reverted to false.
    const-string v5, "mp4MetadataEmbedded"
    const-string v7, "true"
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v5, "metadataRetryAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :ensure_mp4_done

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;
    move-result-object v10
    if-eqz v10, :ensure_mp4_reset
    check-cast v10, Landroid/content/Context;
    new-instance v5, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v7
    const-string v8, "Cinemana/work/log"
    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    new-instance v7, Ljava/io/File;
    const-string v8, "cnm_recovery_capsule.log"
    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v5, "ensureFfmpeg"
    filled-new-array {v10, v7}, [Ljava/lang/Object;
    move-result-object v7
    invoke-static {v5, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v5
    instance-of v7, v5, Ljava/io/File;
    if-eqz v7, :ensure_mp4_reset
    check-cast v5, Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    move-result v7
    if-eqz v7, :ensure_mp4_reset

    # Five adjacent registers form ffmpeg, source, manifest, marker, token.
    move-object v6, v5
    move-object v7, v11
    move-object v8, v2
    # v9 was preserved as the marker before FFmpeg lookup.
    move-object v10, v1
    invoke-static/range {v6 .. v10}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->embedMp4(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :ensure_mp4_reset

    # If the task ID survived the capsule, keep the queue receipt's expected length in sync.
    const-string v5, "downloadTaskId"
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    move-result v6
    if-nez v6, :ensure_mp4_success
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v5
    invoke-virtual {v11}, Ljava/io/File;->length()J
    move-result-wide v6
    move-wide v8, v6
    move v7, v5
    invoke-static/range {v7 .. v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->updateDoneSize(IJ)V

    :ensure_mp4_success
    const/4 v0, 0x1
    return v0

    :ensure_mp4_reset
    const-string v5, "mp4MetadataEmbedded"
    const-string v6, "false"
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_ensure_mp4
    .catch Ljava/lang/Throwable; {:try_start_ensure_mp4 .. :try_end_ensure_mp4} :ensure_mp4_failed
    goto :ensure_mp4_done
    :ensure_mp4_failed
    move-exception v1
    :ensure_mp4_done
    const/4 v0, 0x0
    return v0
.end method

.method public static finalizeMkv(Ljava/io/File;Ljava/io/File;)Z
    .locals 14
    move-object/from16 v10, p0
    move-object/from16 v11, p1
    const/4 v12, 0x0
    const/4 v13, 0x0
    if-eqz v10, :finalize_mkv_false
    if-eqz v11, :finalize_mkv_false

    :try_start_finalize_mkv
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :finalize_mkv_false
    invoke-virtual {v10}, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0x400
    cmp-long v0, v0, v2
    if-lez v0, :finalize_mkv_false

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :finalize_mkv_token_from_source
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :finalize_mkv_token_ready

    :finalize_mkv_token_from_source
    # Organized output names may omit [cnm-token]; the source MP4 still carries the stable identity.
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :finalize_mkv_false
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :finalize_mkv_false

    :finalize_mkv_token_ready

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v3
    if-eqz v3, :finalize_mkv_parse
    goto :finalize_mkv_false

    :finalize_mkv_parse
    new-instance v3, Lorg/json/JSONObject;
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "phase"
    const-string v5, "MKV_FINALIZED"
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sourcePath"
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "finalPath"
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "finalFileName"
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "finalFileSizeBytesBeforeCapsuleRefresh"
    invoke-virtual {v10}, Ljava/io/File;->length()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "finalFileLastModifiedMsBeforeCapsuleRefresh"
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "finalMetadataUpdatedAtEpochMs"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v5
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v5
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "databasePathPolicy"
    const-string v5, "The exporter has attempted its normal final-path database promotion before this capsule refresh; on repair, verify the row path against finalPath rather than assuming success."
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "recoveryPolicy"
    const-string v5, "Use the capsule token and exact media identity. Refresh temporary source URLs before resuming a download. Verify subtitle identities and file hashes before conversion. Never delete a source or backup until the final MKV and database path are verified."
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :finalize_mkv_false

    # Get the app's bundled ffmpeg. If it is unavailable, the sidecar still records the final path.
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;
    move-result-object v3
    if-eqz v3, :finalize_mkv_false
    check-cast v3, Landroid/content/Context;

    new-instance v4, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v5
    const-string v6, "Cinemana/work/log"
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    new-instance v5, Ljava/io/File;
    const-string v6, "cnm_recovery_capsule.log"
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "ensureFfmpeg"
    filled-new-array {v3, v5}, [Ljava/lang/Object;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    instance-of v5, v4, Ljava/io/File;
    if-eqz v5, :finalize_mkv_false
    check-cast v4, Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    move-result v5
    if-eqz v5, :finalize_mkv_false

    # Stage the new container alongside the final MKV; keep the old file until the replacement is valid.
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ".cnm-recovery.tmp.mkv"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    new-instance v12, Ljava/io/File;
    invoke-direct {v12, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v12}, Ljava/io/File;->exists()Z
    move-result v5
    if-eqz v5, :finalize_mkv_backup
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :finalize_mkv_backup
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v5
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    const-string v7, ".cnm-recovery.bak."
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    new-instance v13, Ljava/io/File;
    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # Construct a stream-copy remux, excluding old attachments so recovery JSON stays unique.
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-hide_banner"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-loglevel"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "error"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-nostdin"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-y"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-i"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-map"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "0"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-map"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-0:t"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-map_metadata"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "0"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-map_chapters"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "0"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-c"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "copy"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-attach"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-metadata:s:t:0"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "mimetype=application/json"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-metadata:s:t:0"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "filename=cnm_recovery.json"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-metadata"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "cnm_recovery_format=com.cinemana.recovery"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "-metadata"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "cnm_recovery_token="
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-metadata"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestBase64(Ljava/io/File;)Ljava/lang/String;
    move-result-object v6
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v9, "cnm_recovery_manifest_b64="
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "-f"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v6, "matroska"
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/ProcessBuilder;
    invoke-direct {v6, v5}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V
    const/4 v7, 0x1
    invoke-virtual {v6, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object v6
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v5
    const/16 v9, 0x1000
    new-array v9, v9, [B
    :finalize_mkv_drain
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    move-result v3
    if-lez v3, :finalize_mkv_wait
    goto :finalize_mkv_drain
    :finalize_mkv_wait
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    move-result v5
    if-nez v5, :finalize_mkv_failed_output

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z
    move-result v5
    if-eqz v5, :finalize_mkv_failed_output
    invoke-virtual {v12}, Ljava/io/File;->length()J
    move-result-wide v0
    const-wide/16 v2, 0x400
    cmp-long v0, v0, v2
    if-lez v0, :finalize_mkv_failed_output

    invoke-virtual {v10, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :finalize_mkv_failed_output
    invoke-virtual {v12, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v5
    if-eqz v5, :finalize_mkv_restore

    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    const/4 v0, 0x1
    return v0

    :finalize_mkv_restore
    invoke-virtual {v13, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    goto :finalize_mkv_false

    :finalize_mkv_failed_output
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    goto :finalize_mkv_false

    :try_end_finalize_mkv
    .catch Ljava/lang/Throwable; {:try_start_finalize_mkv .. :try_end_finalize_mkv} :finalize_mkv_exception

    :finalize_mkv_exception
    move-exception v0
    # Restore only if the prior final file was moved aside and the replacement never appeared.
    if-eqz v13, :finalize_mkv_false
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :finalize_mkv_false
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :finalize_mkv_restore_exception
    goto :finalize_mkv_false
    :finalize_mkv_restore_exception
    invoke-virtual {v13, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :finalize_mkv_false
    const/4 v0, 0x0
    return v0
.end method

d

.method private static capsuleToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    const-string v0, ""
    if-eqz p0, :capsule_token_done
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :capsule_token_done
    :try_start_capsule_token
    new-instance v1, Lorg/json/JSONObject;
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v2, "format"
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    const-string v3, "com.cinemana.recovery"
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :capsule_token_done
    const-string v2, "token"
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    move-result v2
    if-eqz v2, :capsule_token_nonempty
    const-string v0, ""
    :capsule_token_nonempty
    :try_end_capsule_token
    .catch Ljava/lang/Throwable; {:try_start_capsule_token .. :try_end_capsule_token} :capsule_token_failed
    goto :capsule_token_done
    :capsule_token_failed
    move-exception v1
    const-string v0, ""
    :capsule_token_done
    return-object v0
.end method

.method private static validCapsuleFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    const/4 v0, 0x0
    if-eqz p0, :valid_capsule_file_done
    if-eqz p1, :valid_capsule_file_done
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :valid_capsule_file_done
    invoke-virtual {p0}, Ljava/io/File;->length()J
    move-result-wide v1
    const-wide/16 v2, 0x40
    cmp-long v1, v1, v2
    if-lez v1, :valid_capsule_file_done
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->capsuleToken(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    :valid_capsule_file_done
    return v0
.end method

.method public static tokenFromCapsuleFile(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    const-string v0, ""
    if-eqz p0, :token_from_file_done
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->capsuleToken(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    :token_from_file_done
    return-object v0
.end method

.method public static importFromMedia(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 12
    move-object/from16 v10, p0
    move-object/from16 v11, p1
    const/4 v2, 0x0
    if-eqz v10, :import_media_fail
    if-eqz v11, :import_media_fail

    :try_start_import_media
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/MkvManifestStore;->tokenFromPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :import_no_path_token
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :import_check_sidecar
    :import_no_path_token
    const-string v1, ""

    :import_check_sidecar
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-eqz v0, :import_try_existing_sidecar
    goto :import_prepare_ffmpeg

    :import_try_existing_sidecar
    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v2
    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->validCapsuleFile(Ljava/io/File;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :import_prepare_ffmpeg
    return-object v2

    :import_prepare_ffmpeg
    # An invalid or missing sidecar must not block extraction from the actual media container.
    new-instance v4, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v5
    const-string v6, "Cinemana/work/log"
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    new-instance v5, Ljava/io/File;
    const-string v6, "cnm_recovery_capsule.log"
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v6, "ensureFfmpeg"
    filled-new-array {v10, v5}, [Ljava/lang/Object;
    move-result-object v7
    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    instance-of v4, v3, Ljava/io/File;
    if-eqz v4, :import_media_fail
    check-cast v3, Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    move-result v4
    if-eqz v4, :import_media_fail

    # Use a per-media temporary extraction file so a missing token in the filename is harmless.
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    const-string v6, ".cnm-recovery.extract.tmp"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    new-instance v6, Ljava/io/File;
    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    move-result v4
    if-eqz v4, :import_ext_ready
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :import_ext_ready

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v4
    const-string v5, ".mkv"
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-nez v4, :import_try_mkv_attachment
    goto :import_metadata_tag

    :import_try_mkv_attachment
    # Extract the dedicated attachment first; if absent or malformed, fall back to global metadata.
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-hide_banner"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-loglevel"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "error"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-nostdin"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-y"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-dump_attachment:t:0"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-i"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-f"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "null"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    new-instance v4, Ljava/lang/ProcessBuilder;
    invoke-direct {v4, v7}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V
    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v7
    const/16 v5, 0x1000
    new-array v5, v5, [B
    :import_mkv_drain
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I
    move-result v8
    if-lez v8, :import_mkv_wait
    goto :import_mkv_drain
    :import_mkv_wait
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    move-result v7
    if-eqz v7, :import_mkv_read
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    goto :import_metadata_tag
    :import_mkv_read
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->readText(Ljava/io/File;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->capsuleToken(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :import_metadata_tag
    goto :import_validate_payload

    :import_metadata_tag
    # MP4 and MKV both carry the base64 capsule in a standard container metadata field.
    new-instance v7, Ljava/util/ArrayList;
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-hide_banner"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-loglevel"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "quiet"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-nostdin"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-i"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-map_metadata"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "0"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-f"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "ffmetadata"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    const-string v4, "-"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    new-instance v4, Ljava/lang/ProcessBuilder;
    invoke-direct {v4, v7}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V
    const/4 v5, 0x1
    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v7
    new-instance v6, Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    const/16 v5, 0x1000
    new-array v5, v5, [B
    :import_meta_drain
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I
    move-result v8
    if-lez v8, :import_meta_wait
    const/4 v0, 0x0
    invoke-virtual {v6, v5, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :import_meta_drain
    :import_meta_wait
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I
    move-result v8
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v5
    const-string v7, "UTF-8"
    new-instance v9, Ljava/lang/String;
    invoke-direct {v9, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    const-string v5, "cnm_recovery_manifest_b64="
    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    move-result v7
    if-gez v7, :import_meta_tag_found
    goto :import_media_fail
    :import_meta_tag_found
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    move-result v5
    add-int/2addr v7, v5
    const/16 v5, 0xa
    invoke-virtual {v9, v5, v7}, Ljava/lang/String;->indexOf(II)I
    move-result v5
    if-gez v5, :import_meta_end_ready
    invoke-virtual {v9}, Ljava/lang/String;->length()I
    move-result v5
    :import_meta_end_ready
    invoke-virtual {v9, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v5
    const/16 v7, 0xb
    invoke-static {v5, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    move-result-object v5
    const-string v7, "UTF-8"
    new-instance v9, Ljava/lang/String;
    invoke-direct {v9, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :import_validate_payload
    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->capsuleToken(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-eqz v5, :import_validate_path_token
    goto :import_media_fail

    :import_validate_path_token
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-eqz v5, :import_compare_token
    goto :import_store_manifest

    :import_compare_token
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :import_media_fail

    :import_store_manifest
    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->manifestFile(Ljava/lang/String;)Ljava/io/File;
    move-result-object v2
    invoke-static {v2, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->writeText(Ljava/io/File;Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :import_media_fail
    goto :import_media_success

    :try_end_import_media
    .catch Ljava/lang/Throwable; {:try_start_import_media .. :try_end_import_media} :import_media_exception
    :import_media_exception
    move-exception v0
    :import_media_fail
    const/4 v0, 0x0
    return-object v0
    :import_media_success
    return-object v2
d
