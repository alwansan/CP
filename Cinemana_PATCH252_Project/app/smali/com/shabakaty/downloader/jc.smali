.class public final Lcom/shabakaty/downloader/jc;
.super Lcom/shabakaty/downloader/ui4;
.source "ApplicationDownloadActionsHandler.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation runtime Lcom/shabakaty/downloader/pm0;
    c = "com.shabakaty.cinemana.utils.download.ApplicationDownloadActionsHandlerKt$ApplicationDownloadActionsHandler$1$8$1"
    f = "ApplicationDownloadActionsHandler.kt"
    l = {
        0x46
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ui4;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/se0;",
        "Lcom/shabakaty/downloader/ud0<",
        "-",
        "Lcom/shabakaty/downloader/qv4;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public v:I

.field public final synthetic w:Lcom/shabakaty/cinemana/CinemanaApplication;

.field public final synthetic x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

.field public final synthetic y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

.field public final synthetic z:Lcom/shabakaty/downloader/pw0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/cinemana/CinemanaApplication;",
            "Lcom/shabakaty/cinemana/domain/models/local/Subtitle;",
            "Lcom/shabakaty/cinemana/domain/models/local/VideoModel;",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/jc;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/jc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iput-object p2, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iput-object p3, p0, Lcom/shabakaty/downloader/jc;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iput-object p4, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lcom/shabakaty/downloader/ui4;-><init>(ILcom/shabakaty/downloader/ud0;)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/shabakaty/downloader/se0;

    move-object v5, p2

    check-cast v5, Lcom/shabakaty/downloader/ud0;

    .line 1
    new-instance p1, Lcom/shabakaty/downloader/jc;

    iget-object v1, p0, Lcom/shabakaty/downloader/jc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v2, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v3, p0, Lcom/shabakaty/downloader/jc;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v4, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/jc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    .line 2
    sget-object p2, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/jc;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/ud0<",
            "*>;)",
            "Lcom/shabakaty/downloader/ud0<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/shabakaty/downloader/jc;

    iget-object v1, p0, Lcom/shabakaty/downloader/jc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    iget-object v2, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v3, p0, Lcom/shabakaty/downloader/jc;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v4, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/jc;-><init>(Lcom/shabakaty/cinemana/CinemanaApplication;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)V

    return-object p1
.end method

.method public final t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v1, p0, Lcom/shabakaty/downloader/jc;->v:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/jc;->w:Lcom/shabakaty/cinemana/CinemanaApplication;

    invoke-virtual {p1}, Lcom/shabakaty/cinemana/CinemanaApplication;->h()Lcom/shabakaty/downloader/jw0;

    move-result-object p1

    iget-object v1, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v3, p0, Lcom/shabakaty/downloader/jc;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    iget-object v4, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    const-string v5, ""

    .line 5
    iget-object v8, v3, Lcom/shabakaty/cinemana/domain/models/local/VideoModel;->nb:Ljava/lang/String;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->id:Ljava/lang/String;

    const-string v6, "s"

    .line 7
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "toEncrypt"

    .line 9
    invoke-static {v3, v6}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    const-string v7, "md5"

    .line 10
    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const-string v9, "getInstance(\"md5\")"

    invoke-static {v7, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v9, Lcom/shabakaty/downloader/hz;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v9, "this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v9}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v7, "digest.digest()"

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    array-length v9, v3

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    const/4 v10, 0x0

    :goto_0
    add-int/lit8 v11, v10, 0x1

    const-string v12, "%02X"

    new-array v13, v2, [Ljava/lang/Object;

    .line 15
    aget-byte v10, v3, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v13, v6

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "format(format, *args)"

    invoke-static {v10, v12}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v11, v9, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    goto :goto_0

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "sb.toString()"

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "this as java.lang.String).toLowerCase()"

    invoke-static {v3, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v3

    goto :goto_2

    :catch_0
    move-object v7, v5

    :goto_2
    if-nez v4, :cond_4

    const/4 v9, 0x0

    goto :goto_3

    .line 17
    :cond_4
    iget v3, v4, Lcom/shabakaty/downloader/pw0;->r:I

    move v9, v3

    .line 18
    :goto_3
    iget-object v10, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->name:Ljava/lang/String;

    .line 19
    iget-object v11, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    .line 20
    iget-object v12, v1, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_4

    .line 21
    :cond_5
    iget-object v1, v4, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    if-nez v1, :cond_6

    :goto_4
    move-object v13, v5

    goto :goto_5

    :cond_6
    move-object v13, v1

    .line 22
    :goto_5
    iget-object v2, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v3, p0, Lcom/shabakaty/downloader/jc;->y:Lcom/shabakaty/cinemana/domain/models/local/VideoModel;

    invoke-static {v4, v3, v2}, Lcom/shabakaty/cinemana/features/DownloadFilenameHelper;->renameSubtitle(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Lcom/shabakaty/cinemana/domain/models/local/Subtitle;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v2, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/jc;->v:I

    invoke-interface {p1, v1, p0}, Lcom/shabakaty/downloader/jw0;->B(Lcom/shabakaty/cinemana/data/db/downloads/SubtitleDb;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 24
    :cond_7
    :goto_6
    iget-object v3, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/shabakaty/downloader/pw0;->x:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/shabakaty/downloader/jc;->x:Lcom/shabakaty/cinemana/domain/models/local/Subtitle;

    iget-object v5, v4, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->type:Ljava/lang/String;

    iget-object v7, v4, Lcom/shabakaty/cinemana/domain/models/local/Subtitle;->extention:Ljava/lang/String;

    iget-object v6, p0, Lcom/shabakaty/downloader/jc;->z:Lcom/shabakaty/downloader/pw0;

    iget v8, v6, Lcom/shabakaty/downloader/pw0;->r:I

    const-string v6, "CNM_DOWNLOAD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SUBTITLE_TASK_ID="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " SUBTITLE_TYPE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " SUBTITLE_EXTENSION="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " SUBTITLE_PATH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method
